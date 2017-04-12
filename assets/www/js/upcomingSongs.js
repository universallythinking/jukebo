$(document).ready(function() {
      window.isReady = function() {
          if (!document.hidden && $("#currentSong").children().length > 0 && localStorage.lastFM && document.getElementById('filename').value == "Join a Party..." || document.getElementById('filename').value == "") {
              return true;
          } else {
              return false;
          }
      }

      if (!localStorage.votedArray) {
          localStorage.votedArray = " ";
      }

      if (localStorage.CT) {
          localStorage.CT1 = localStorage.CT.toUpperCase();
      } else {
          localStorage.CT1 = "";
      }

      $('#results').empty;

      var voteTally, smallest, a, up, down, alreadyVoted, voted, tba, current, aObject, currentSong, iaObject, id, a1, up1, down1, a2, up2, down2, playlists, songNameDown, currentTracks, incrementArray, decrementArray, songNames, obj, object, rvObject, votesObject, temporaryTrack, songName, partyPlaylist;
      localStorage.totalSongs = 0;
      localStorage.currentlyPlayingWC = "";
      localStorage.currentlyPlaying = "";
      localStorage.currentTrack = 0;
      localStorage.offsetNumber = 0;

      $('#infoHeader').empty();
      $('#infoHeader').append(localStorage.party.toUpperCase());
      $('#nameify').empty();
      $('#nameify').append("#" + localStorage.party.toUpperCase());

      window.loading = function() {
          $("#load").css("visibility", "visible");
          var interval = setInterval(function() {
              if ($("#results").children("header").length > 2) {
                  document.getElementById('load').style.visibility = "hidden";
                  document.getElementById('main').style.visibility = "visible";
                  clearInterval(interval);
              }
          }, 1000);
      }

window.updateFooter = function() {
     try {
         if (localStorage.lastFM && localStorage.party) {
           var obj1 = {};
           obj1["lastFM"] = localStorage.userID;
            $.ajax({
               async: false,
               type: "POST",
               url: "http://spartify.herokuapp.com/songRefresh",
               dataType: "json",
               data: obj1,
               success: function (currentData) {
	           if (localStorage.party != currentData.party.slice(1, -1).toUpperCase()) {
		     localStorage.party = currentData.party.slice(1, -1).toUpperCase();
		    setTimeout(function() {
	              location.reload();
		   }, 100);
		   }
		   if (localStorage.Snapster != currentData.playlist.slice(1, -1)) {
		     localStorage.Snapster = currentData.playlist.slice(1, -1);
		    setTimeout(function() {
	              location.reload();
		   }, 100);
		   }
		   localStorage.lastFM = currentData.lastFM.slice(1, -1).toLowerCase();
                   var song = currentData.songs.slice(1, -1);
                   var artist = currentData.artist.slice(1, -1);
                   localStorage["currentlyPlaying"] = song.toUpperCase();
                   $('#footer2').html("<header alt='0' class='currentSong' id='currentSong'>" + artist + " - " + "<em>" + song + "</em>" + "</header><br/>");
                   if (localStorage.currentlyPlayingWC != song.toUpperCase()) {
                     localStorage["currentlyPlaying"] = song.toUpperCase();
                     localStorage["k"] = 0;
                     localStorage["currentlyPlayingWC"] = localStorage["currentlyPlaying"];
                     nextSongs();
                   }
               },
               error: function () {
               }
           });
         }
     }
     catch (exception) {
     }
 }
 setInterval(function () {
	 updateFooter();
         CT();
 }, 2500);
   setInterval(function() { votedSongs(); }, 500);
    if (localStorage.CT) {
	    localStorage.CT1 = localStorage.CT.toUpperCase();
    }
    else {
    	localStorage.CT1 = "";
    }
    window.CT = function() {
        if (localStorage.userID && localStorage.Snapster) {
            $.ajax({
                async: false,
                type: "GET",
                url: "https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                headers: {
                    'Authorization': 'Bearer ' + localStorage.current_token
                },
                dataType: "json",
                data: "formdata",
                success: function(trackData) {
                    currentTracks = [];
                    currentTracks2 = [];
                    for (var i = 0; i < trackData.items.length; i++) {
                        currentTracks[i] = trackData.items[i].track.name.toUpperCase();
                        currentTracks2[i] = trackData.items[i].track.name;
                    }
                    localStorage.CT = currentTracks.toString().toUpperCase();
                    localStorage.totalSongs = currentTracks.length;
                    localStorage.currentlyPlayingWC = localStorage.currentlyPlaying.replace(/,/g, '');
                    if (currentTracks.indexOf(localStorage.currentlyPlayingWC) != -1) {
                        localStorage.currentTrack = currentTracks.indexOf(localStorage.currentlyPlayingWC);
                    } else {
                        temporaryTrack = localStorage.currentlyPlayingWC.substr(0, 7);
                        for (var i = 0; i < currentTracks.length; i++) {
                            if (currentTracks[i].substr(0, 7).indexOf(temporaryTrack) > -1) {
                                localStorage["currentTrack"] = currentTracks.indexOf(currentTracks[i]);
                            }
                        }
                    }
                    for (var i = 0; i < currentTracks.length; i++) {
                        if (localStorage["currentTrack"] >= 4) {
                            localStorage["offsetNumber"] = localStorage["currentTrack"];
                        } else {
                            localStorage["offsetNumber"] = localStorage["currentTrack"];
                        }
                        currentTracks = [];
                    }
                    if (localStorage.CT !== localStorage.CT1) {
                        localStorage.CT1 = localStorage.CT;
                        nextSongs();
                    }
                }
            });
        }
    }
window.nextSongs = function() {
    if (isReady()) {
        var albumArtArray = [];
        $("#results").css("padding-top", "298px !important");
        $("#results").css("text-align", "center");
        CT();
        $.ajax({
            type: "GET",
            url: "https://api.spotify.com/v1/users/" + localStorage.userID + "/playlists/" + localStorage.Snapster + "/tracks?limit=100&offset=" + localStorage["offsetNumber"],
            headers: {
                'Authorization': 'Bearer ' + localStorage.current_token
            },
            dataType: "json",
            data: "formdata",
            success: function(currentPLData) {
                $("#error").empty();
                $("#results").empty();
                $("#albumart").empty();
                $("#searchBoxContainer").show();
                $("#searchBoxContainer").fadeIn(1000);
                for (var i = 0; i < currentPLData.items.length; i++) {
                    if (i == 0) {
                        albumArtArray[0] = currentPLData.items[0].track.album.name.toString();
                        albumArtArray[1] = currentPLData.items[0].track.name.toString();
                        albumArtArray[2] = currentPLData.items[0].track.artists[0].name.toString();
                        albumArtArray[3] = currentPLData.items[0].track.album.images[0].url;
                        $("#results").append("<header title='" + currentPLData.items[0].track.album.images[0].url + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div ondblclick='decrement(" + 0 + ", 1);' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[0].track.artists[0].name + "</p> <p>" + currentPLData.items[0].track.name + "</p> </div> <div ondblclick='increment(" + 0 + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                    } else {
                      $("#results").append("<header title='" + currentPLData.items[i].track.id + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div ondblclick='decrement(" + i + ", 1);' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[i].track.artists[0].name + "</p> <p>" + currentPLData.items[i].track.name + "</p> </div> <div ondblclick='increment(" + i + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                    }
                }
                if ($("#results").children("header").length > 1) {
                    document.getElementById("songLinkClick" + 0).style.color = "black";
                    $("#songLinkClick0").attr("name", "current");
                    $("[name='current']").css("id")
                    $("[name='current']").children("div")[0].style.display = "none";
                    $("[name='current']").children("div")[2].style.display = "none";
                    $("#albumart").append("<div class='firstAA'><img ondblclick='localStorage.clear();' style='display: inline-block; height: 244px;' src=" + $('[name="current"]')[0].attributes[0].value + " style=''/><div class='secondAA'><h1 class='albumInfo'>" + albumArtArray[2] + "</h1><h1 class='albumInfo'>" + albumArtArray[1] + "</h1><h1 class='albumInfo'>" + albumArtArray[0] + "</h1><h1 class='albumInfo'></div></div>");
                }
            }
        });
        playlists = [];
        currentTracks = [];
    }
}

for (var i = 0; i < $("#results").children("header").length; i++) {
  $("#songLinkClick" + i + " div:nth-child(3)").on("dblclick touchstart", function() {
      increment(i, 0);
  });
  $("#songLinkClick" + i + " div:nth-child(1)").on("dblclick touchstart", function() {
      decrement(i);
  });
}

   window.votes = function() {
        decrementArray = [];
        incrementArray = [];
        votesObject = {};
        votesObject["userName"] = localStorage.userID;
        $.ajax({
            async: true,
            type: "POST",
            url: "http://spartify.herokuapp.com/votes",
            dataType: "json",
            data: votesObject,
            success: function(dataFirst) {
                localStorage.setItem("nebulous", 1);
                localStorage.setItem("voteTotals", dataFirst.songs);
            }
        });
    }
    window.sortVotes = function() {
      for (var j = 1; j < $("#results").children("header").length - 1; j++) {
          var songNames = $("#songLinkClick" + j).attr("title");
          if (songNames.length >= 11) {
              songNames = songNames.slice(0, 10);
          }
          up = localStorage.voteTotals.split("+" + songNames).length;
          down = localStorage.voteTotals.split("-" + songNames).length;
          upAdmin = localStorage.voteTotals.split("++" + songNames).length;
          downAdmin = localStorage.voteTotals.split("--" + songNames).length;
          a = up - down;
          if (upAdmin >= 2 && upAdmin >= downAdmin) {
              localStorage.nebulous = parseInt(localStorage.nebulous) + 1;
              $("#songLinkClick" + j + " div:nth-child(3) a").text("+X");
              $("#songLinkClick" + j + " div:nth-child(1) a").text("+X");
          } else if (downAdmin >= 1 && a < 0) {
              $("#songLinkClick" + j + " div:nth-child(3) a").text(a);
              $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
          } else if (a == 0) {
              $("#songLinkClick" + j + " div:nth-child(3) a").text("+");
              $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
          } else if (a > 0) {
              $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
              $("#songLinkClick" + j + " div:nth-child(3) a").text(a);
          } else {
              $("#songLinkClick" + j + " div:nth-child(1) a").text(a);
              $("#songLinkClick" + j + " div:nth-child(3) a").text("+");
          }
      }
    }

    setInterval(function() {
      votes();
      CT();
    }, 5000);
    setInterval(function() {
      sortVotes();
    }, 500);
votes();
window.votedSongs = function () {
    if (document.hasFocus() || localStorage.votedArray) {
        for (i = 1; i < $("#results").children("header").length - 1; i++) {
            if ($("#results").children("header").length > 0) {
              if (localStorage.currentTrack == 0 && $("#songLinkClick" + i + " div:nth-child(3) a").text() == "+" || $("#songLinkClick" + i + " div:nth-child(1) a").text() == "-") {
                  $("#songLinkClick" + i + " div:nth-child(1) a").css("color", "white");
                  $("#songLinkClick" + i + " div:nth-child(3) a").css("color", "white");
                  $("#songLinkClick" + i + " div:nth-child(1)").css("pointer-events", "all !important");
                  $("#songLinkClick" + i + " div:nth-child(3)").css("pointer-events", "all !important");
                  }
            if ((document.getElementById('filename').value == "" || document.getElementById('filename').value == "Song or Artist...") && localStorage["votedArray"].toUpperCase().indexOf($("#songLinkClick" + i).attr("title")) != -1) {
                $("#songLinkClick" + i)[0].children[2].children[0].style.color = "black";
                $("#songLinkClick" + i)[0].children[0].children[0].style.color = "black";
                $("#songLinkClick" + i)[0].children[0].style.pointerEvents = "none";
               $("#songLinkClick" + i)[0].children[2].style.pointerEvents = "none";
              }
              if ($("#songLinkClick" + i + " div:nth-child(3) a").text() == "+X" || $("#songLinkClick" + i + " div:nth-child(1) a").text() == "-X") {
                  $("#songLinkClick" + i + " div:nth-child(1) a").css("color", "black");
                  $("#songLinkClick" + i + " div:nth-child(3) a").css("color", "black");
                  $("#songLinkClick" + i + " div:nth-child(1) a").css("pointer-events", "none");
                  $("#songLinkClick" + i + " div:nth-child(3) a").css("pointer-events", "none");
                  }
            }
        }
    }
}
votedSongs();
    nextSongs();
    window.increment = function(i, l, y) {
          object = {};
          var songName = $("#songLinkClick" + i).attr("title");
          if (y != 6) {
            object["song"] = songName;
          }
          else {
            object["song"] = "s";
          }
          object["userName"] = localStorage.userID;
          object["party"] = localStorage.party;
            localStorage.votedArray = localStorage.votedArray + $("#songLinkClick" + i).attr("title") + ", ";
            alreadyVoted = [];
            voted = [];
            tba = [];
            if (y != 6) {
              current = Math.max($("#songLinkClick" + i + " div:nth-child(3) a").text(), 3);
            }
            else {
              current = $("#songLinkClick" + i + " div:nth-child(3) a").text() - 1;
            }
            for (var j = 1; j < $("#results").children("header").length - 1; j++) {
                voteTally = $("#songLinkClick" + j + " div:nth-child(3) a").text();
                if (voteTally > (current)) {
                    alreadyVoted.push(voteTally);
                }
            }
            smallest = 500;
            for (var k = 0; k < alreadyVoted.length; k++) {
                if (alreadyVoted[k] < smallest && alreadyVoted[k] >= current) {
                    smallest = alreadyVoted[k];
                }
            }
            songNames = [];
            localStorage["votedArray"] = "";
            console.log(object);
            $.ajax({
                async: true,
                type: "POST",
                url: "http://spartify.herokuapp.com/upVote",
                dataType: "json",
                data: object,
                success: function(dataFirst) {
                    localStorage.setItem("voteTotals", dataFirst.songs);
                    for (var j = 0; j < $("#results").children("header").length; j++) {
                        songNames[j] = $("#songLinkClick" + i).attr("title");
                    }
                    up1 = localStorage.voteTotals.split("+" + songNames[i]).length;
                    down1 = localStorage.voteTotals.split("-" + songNames[i]).length;
                    a1 = up1 - down1;
                    if (a1 >= 3 && l == 0) {
                        if (voted.lastIndexOf(smallest)) {
                            incrementAdmin(i, 0, alreadyVoted.length - 49);
                        }
                    }
                    else if (a1 >= 3) {
                        incrementAdmin(i, 0, -5);
                    }
                }
            });
        }
        window.decrement = function(i, l) {
            songNames = [];
            localStorage["votedArray"] = " ";
            decrementObject = {};
            songNameDown = $("#songLinkClick" + i).attr("title");
            decrementObject["song"] = songNameDown;
            decrementObject["userName"] = localStorage.userID;
            decrementObject["party"] = localStorage.party;
            $.ajax({
                async: true,
                type: "POST",
                url: "http://spartify.herokuapp.com/downVote",
                dataType: "json",
                data: decrementObject,
                success: function(dataFirst) {
                    localStorage.setItem("voteTotals", dataFirst.songs);
                    localStorage.setItem("voteTotals", dataFirst.songs);
                    for (var j = 0; j < $("#results").children("header").length; j++) {
                        songNames[j] = $("#songLinkClick" + i).attr("title");
                    }
                    up2 = localStorage.voteTotals.split("+" + songNames[i]).length;
                    down2 = localStorage.voteTotals.split("-" + songNames[i]).length;
                    a2 = up2 - down2;
                    if (a2 >= 3) {
                        increment(i, 0, 6);
                    } else if (a2 <= 2) {
                        decrementAdmin(i);
                    }
                },
                error: function(dataFirst) {}
            });
        }
        window.incrementAdmin = function(i, y, l) {
            iaObject = {};
            currentSong = $("[name='current']").attr("id");
            currentSong = currentSong.substr(13);
            currentSong = (currentSong * 1 + localStorage["offsetNumber"] * 1);
            i = (i * 1 + localStorage["offsetNumber"] * 1);
            if (l < -10) {
                if (l != -50) {
                    iaObject["insert_before"] = parseInt(l + 49) + parseInt(localStorage.offsetNumber) + parseInt(localStorage.nebulous);
                }
            } else if (l > 0) {
                iaObject["insert_before"] = parseInt(localStorage.nebulous) + parseInt(localStorage.offsetNumber);
            }
            iaObject["range_start"] = i;
            iaObject["range_length"] = 1;
            console.log(iaObject);
            $.ajax({
                async: true,
                type: "PUT",
                url: "https://api.spotify.com/v1/users/" + localStorage.userID + "/playlists/" + localStorage.Snapster + "/tracks",
                headers: {
                  'Authorization': 'Bearer ' + localStorage.current_token
                },
                dataType: "json",
                data: JSON.stringify(iaObject),
                success: function(dataFirst) {
                    $("#results").css("text-align", "center");
                    localStorage["songRequest"] = 0;
                    id = 0;
                    CT();
                },
                error: function(data) {}
            });
        }

        window.decrementAdmin = function(i) {
            try {
                daObject = {};
                id = i;
                currentSong = $("[name='current']").attr("id");
                currentSong = currentSong.substr(13);
                currentSong = (currentSong * 1 + localStorage["offsetNumber"] * 1);
                id = (id * 1 + localStorage["offsetNumber"] * 1);
                daObject["range_start"] = id;
                daObject["range_length"] = 1;
                daObject["insert_before"] = localStorage["totalSongs"] - 1;
                localStorage["votedArray"] = " ";
                $("#songLinkClick" + i).children("a").css("display", "none !important");
                $.ajax({
                    async: true,
                    type: "PUT",
                    url: "https://api.spotify.com/v1/users/" + localStorage["userID"] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                    headers: {
                        'Authorization': 'Bearer ' + localStorage.current_token
                    },
                    dataType: "json",
                    data: JSON.stringify(daObject),
                    success: function(dataFirst) {
                        CT();
                        partyPlaylist = [];
                        $("#results").css("text-align", "center");
                        id = 0;
                    }
                });
            } catch (exception) {}
        }
        loading();
        votes();
    });
