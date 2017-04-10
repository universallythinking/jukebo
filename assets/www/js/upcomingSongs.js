$(document).ready(function () {
  if (!document.hidden) {
    if(!localStorage.votedArray) {
	    localStorage.votedArray = " ";
    }
    $('#results').empty;
    var playlists = [];
    var currentTracks = [];
    var obj = {};
    var temporaryTrack;
    localStorage["totalSongs"] = 0;
    localStorage["currentlyPlayingWC"] = "";
    localStorage["currentlyPlaying"] = "";
    localStorage["currentTrack"] = 0;
    localStorage["offsetNumber"] = 0;
    var partyPlaylist = 0;
    $('#infoHeader').empty();
    $('#infoHeader').append(localStorage.party.toUpperCase());
    document.title = localStorage.party.toUpperCase();
    $('#nameify').empty();
    $('#nameify').append("#" + localStorage.party.toUpperCase());
var hidden, state, visibilityChange;
 window.checkState = function () {
if (typeof document.hidden !== "undefined") {
	hidden = "hidden";
	visibilityChange = "visibilitychange";
	state = "visibilityState";
} else if (typeof document.mozHidden !== "undefined") {
	hidden = "mozHidden";
	visibilityChange = "mozvisibilitychange";
	state = "mozVisibilityState";
} else if (typeof document.msHidden !== "undefined") {
	hidden = "msHidden";
	visibilityChange = "msvisibilitychange";
	state = "msVisibilityState";
} else if (typeof document.webkitHidden !== "undefined") {
	hidden = "webkitHidden";
	visibilityChange = "webkitvisibilitychange";
	state = "webkitVisibilityState";
}
 }
 checkState();
window.loading = function () {
  $("#load").css("visibility", "visible");
       var interval = setInterval(function(){
  if ($("#results").children("header").length > 2) {
	  // nextSongs();
         document.getElementById('load').style.visibility="hidden";
         document.getElementById('main').style.visibility="visible";
	 clearInterval(interval);
  }
 }, 1000);
}
 window.resetVotes = function () {
	  if (localStorage.host) {
    localStorage.setItem("STOP", "true");
    var object = {};
    object["userName"] = localStorage.userID;
     $.ajax({
         async: false,
         type: "POST",
         url: "http://spartify.herokuapp.com/clearVotes",
         dataType: "json",
         data: object,
         success: function (clearedData) {
           localStorage.STOP = "false";
           localStorage.votedArray = "";
         }
    });
	  }
}
localStorage.cle = "true";
window.CV = function () {
if (localStorage.cle == "true") {
	resetVotes();
}
localStorage.cle = "false";
var myInterval = setInterval(function(){
  if ((localStorage.currentTrack < 1 || localStorage.currentTrack % 5 == 0) && localStorage.cle != "true") {
  resetVotes();
  localStorage.cle = "true";
  setTimeout(function(){
    votedSongs();
  }, 3000);
  clearInterval(myInterval);
  }
  else {
  localStorage.cle = "true";
  clearInterval(myInterval);
  }
 }, 90000);
}
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
            if ((document.getElementById('filename').value == "" || document.getElementById('filename').value == "Song or Artist...") && localStorage["votedArray"].toUpperCase().indexOf($("#songLinkClick" + i).children("div")[1].lastElementChild.innerText.toUpperCase()) != -1) {
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
window.updateFooter2 = function() {
     try {
         if (localStorage.lastFM && 1 == 1 && document.hasFocus()) {
           var obj1 = {};
           obj1["lastFM"] = localStorage.lastFM.toUpperCase();
           obj1["lastFM"] = localStorage.Snapster;
           $.ajax({
               async: true,
               type: "POST",
               url: "http://spartify.herokuapp.com/songRefresh",
               dataType: "json",
               data: obj1,
               success: function (currentData) {
		   localStorage.Snapster = currentData.playlist.slice(1, -1);
               },
               error: function () {
                  console.log("ERROR");
               }
           });
         }
     }
     catch (exception) {
         // //console.log(exception);
     }
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
                  console.log("ERROR");
               }
           });
         }
     }
     catch (exception) {
         // //console.log(exception);
     }
 }
 setInterval(function () {
	 if (localStorage.lastFM.toUpperCase() == localStorage.party.toUpperCase()) {
	 updateFooter();
         CT();
if ($("#results").children("header").length > 2) { votes(); }
	 }
	 else {
         updateFooter();
         CT();
	if ($("#results").children("header").length > 2) { votes(); }
	 }
 }, 2500);
setInterval(function() { votedSongs(); }, 500);
    window.coverPhoto = function() {
try {
        if ($('#results').children('header').length > 1) {
    //     $("#albumart").append("<div style='display : block; height: 400px; background: gray;'><img style='display: inline-block;' src=" + $('[name="current"]')[0].attributes[0].value + " style='height: 244px;'/><div style='margin-top: 115px; width: 200px; display: inline-block;'><h1 class='albumInfo'>" + albumArtArray[0] + "</h1><h1 class='albumInfo'>" + albumArtArray[1] + "</h1><h1 class='albumInfo'>" + albumArtArray[2] + "</h1><h1 class='albumInfo'></div></div>");
      }
    }
    catch (exception) {
        // //console.log(exception);
        }
    }
    if (localStorage.CT) {
	localStorage.CT1 = localStorage.CT.toUpperCase();
    }
    else {
    	localStorage.CT1 = "";
    }
    window.CT = function () {
    if (localStorage["userID"] && localStorage["Snapster"] && localStorage["explicit"]) {
                $.ajax({
                    async: false,
                    type: "GET",
                    url: "https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                    headers: { 'Authorization': 'Bearer ' + access_token },
                    dataType: "json",
                    data: "formdata",
                    success: function (trackData) {
                      currentTracks = [];
                      currentTracks2 = [];
                        for (var i = 0; i < trackData.items.length; i++) {
                          currentTracks[i] = trackData.items[i].track.name.toUpperCase();
                          currentTracks2[i] = trackData.items[i].track.name;
                        }
                        localStorage["CT"] = currentTracks.toString().toUpperCase();
                        localStorage["totalSongs"] = currentTracks.length;
                        localStorage["currentlyPlayingWC"] = localStorage["currentlyPlaying"].replace(/,/g, '');
                        if (currentTracks.indexOf(localStorage["currentlyPlayingWC"]) != -1) {
                            localStorage["currentTrack"] = currentTracks.indexOf(localStorage["currentlyPlayingWC"]);
                        }
                        else {
                            temporaryTrack = localStorage["currentlyPlayingWC"].substr(0, 7);
                            for (var i = 0; i < currentTracks.length; i++) {
                                if (currentTracks[i].substr(0, 7).indexOf(temporaryTrack) > -1) {
                                    localStorage["currentTrack"] = currentTracks.indexOf(currentTracks[i]);
                                }
                            }
                  //          nextSongs();
                        }
                        for (var i = 0; i < currentTracks.length; i++) {
                            if (localStorage["currentTrack"] >= 4) {
                                localStorage["offsetNumber"] = localStorage["currentTrack"];
                            }
                            else {
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
   window.nextSongs = function () {
        try {
	localStorage.cle = "false";
          if ($("#currentSong").children().length > 0) {
          var albumArtArray = [];
            //$("#all").hide();
                if (localStorage["lastFM"]) {
                    $("#results").css("padding-top", "298px !important");
                    CT();
                    if (document.getElementById('filename').value == "Join a Party..." || document.getElementById('filename').value == "") {
                        if ((document.getElementById('filename').value == "Join a Party..." || document.getElementById('filename').value == "") && localStorage.lastFM && 1 == 1) {
                            $("#results").css("text-align", "center");
                            $.ajax({
                                type: "GET",
                                url: "https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + "/tracks?limit=100&offset=" + localStorage["offsetNumber"],
                                headers: { 'Authorization': 'Bearer ' + access_token },
                                dataType: "json",
                                data: "formdata",
                                success: function (currentPLData) {
                                        if (localStorage["offsetNumber"] >= 95 && localStorage["offsetNumber"] <= 99) {
                                            $("#error").append("<header style='color: white; pointer-events: none;' class='songLinkClick played'>  <div> <p>Approaching Playlist Song Limit</p> <p>Party Playlists Must Be 100 (or fewer) Songs</p><p>Ask Admin To Remove Songs!</p> </div> </header>");
                                            $("#searchBoxContainer").hide();
                                        }
                                        if (localStorage["offsetNumber"] >= 100) {
                                            if ($("#results").children("header").length > 1) {
                                            window.location.reload();
                                            $("#results").empty();
                                            $("#albumart").empty();
                                            }
                                            $("#error").empty();
                                            $("#searchBoxContainer").hide();
                                            $("#error").append("<header title='" + currentPLData.items[0].track.album.images[0].url + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'>  <div> <p>Too Many Songs In Party Playlist</p> <p>Party Playlists Must Be 100 (or fewer) Songs</p> </div> </header>");
                                            $("#error").append("<center><img style='margin-top: 20%; zoom: 200%;' src='../turtle-angry.jpg' /></center>");
                                        }
                                      else if (localStorage["power_voter"] == "yes" || (localStorage["complete_access"] != "false" && localStorage["complete_access"] != false)) {
                                            $("#error").empty();
                                            $("#results").empty();
                                            $("#albumart").empty();
                                            $("#searchBoxContainer").show();
                                            $("#searchBoxContainer").fadeIn(1000);
                                            for (var i = 0; i < currentPLData.items.length; i++) {
                                                //                   $("#results").append("<header style='color: #505050; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick'> <div> <a>-</a> </div> <div> <p>" + currentPLData.items[i].track.artists[0].name + "</p> <p>" + currentPLData.items[i].track.name + "</p> </div> <div> <a>+</a> </div> </header>");
                                        if (i == 0) {
                                            try {
                                              albumArtArray[0] = currentPLData.items[0].track.album.name.toString();
                                              albumArtArray[1] = currentPLData.items[0].track.name.toString();
                                              albumArtArray[2] = currentPLData.items[0].track.artists[0].name.toString();
                                              albumArtArray[3] = currentPLData.items[0].track.album.images[0].url;
                                        $("#results").append("<header title='" + currentPLData.items[0].track.album.images[0].url + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div onclick='decrement(" + 0 + ", 1);' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[0].track.artists[0].name + "</p> <p>" + currentPLData.items[0].track.name + "</p> </div> <div onclick='increment(" + 0 + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                            }
                                            catch (exception) {
                                                // //console.log(exception);
                                                $("#results").append("<header title='" + currentPLData.items[0].track.id + "' style='color: white; pointer-events: none;' id='songLinkClick" + 0 + "'" + "class='songLinkClick played'> <div onclick='decrement(" + 0 + ", 1);' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[0].track.artists[0].name + "</p> <p>" + currentPLData.items[0].track.name + "</p> </div> <div onclick='increment(" + 0 + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                            }
                                            finally {
						    // //console.log("Songs Have Been Loaded");
                                            }
                                        }
                                            else {
                                                try {
                                        $("#results").append("<header title='" + currentPLData.items[i].track.id + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div onclick='decrement(" + i + ", 1);' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[i].track.artists[0].name + "</p> <p>" + currentPLData.items[i].track.name + "</p> </div> <div onclick='increment(" + i + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                            }
                                            catch (exception) {
                                                // //console.log(exception);
                                            }
                                            }
                                            }
                                        }
                                        else {
                                            $("#searchBoxContainer").show();
                                            $("#searchBoxContainer").fadeIn(1000);
                                            $("#error").empty();
                                               $("#results").empty();
                                            $("#albumart").empty();
                                            for (var i = 0; i < currentPLData.items.length; i++) {
                                                //                   $("#results").append("<header style='color: #505050; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick'> <div> <a>-</a> </div> <div> <p>" + currentPLData.items[i].track.artists[0].name + "</p> <p>" + currentPLData.items[i].track.name + "</p> </div> <div> <a>+</a> </div> </header>");
                                        if (i == 0) {
                                            try {
                                        $("#results").append("<header title='" + currentPLData.items[0].track.album.images[0].url + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div onclick='decrement(" + 0 + ");' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[0].track.artists[0].name + "</p> <p>" + currentPLData.items[0].track.name + "</p> </div> <div onclick='increment(" + 0 + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                        albumArtArray[0] = currentPLData.items[0].track.album.name.toString();
                                        albumArtArray[1] = currentPLData.items[0].track.name.toString();
                                        albumArtArray[2] = currentPLData.items[0].track.artists[0].name.toString();
                                        albumArtArray[3] = currentPLData.items[0].track.album.images[0].url;
                                            }
                                            catch (exception) {
                                                // //console.log(exception);
                                                $("#results").append("<header title='" + currentPLData.items[0].track.id + "' style='color: white; pointer-events: none;' id='songLinkClick" + 0 + "'" + "class='songLinkClick played'> <div onclick='decrement(" + 0 + ");' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[0].track.artists[0].name + "</p> <p>" + currentPLData.items[0].track.name + "</p> </div> <div onclick='increment(" + 0 + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                                albumArtArray[0] = currentPLData.items[0].track.album.name.toString();
                                                albumArtArray[1] = currentPLData.items[0].track.name.toString();
                                                albumArtArray[2] = currentPLData.items[0].track.artists[0].name.toString();
                                            }
                                            finally {
                                            }
                                        }
                                            else {
                                                try {
                                        $("#results").append("<header title='" + currentPLData.items[i].track.id + "' style='color: white; pointer-events: none;' id='songLinkClick" + i + "'" + "class='songLinkClick played'> <div onclick='decrement(" + i + ");' class='voteBtn'> <a>-</a> </div> <div> <p>" + currentPLData.items[i].track.artists[0].name + "</p> <p>" + currentPLData.items[i].track.name + "</p> </div> <div onclick='increment(" + i + ", 0);' class='voteBtn'> <a>+</a> </div> </header>");
                                            }
                                            catch (exception) {
                                                // //console.log(exception);
                                            }
                                            }
                                            }
                                        }
                                    if ($("#results").children("header").length > 2) {
					 votes();
                                         document.getElementById("songLinkClick" + 0).style.color = "black";
                                         $("#songLinkClick0").attr("name", "current");
                                         $("[name='current']").css("id")
                                         $("[name='current']").children("div")[0].style.display = "none";
                                         $("[name='current']").children("div")[2].style.display = "none";
                                         /*$("#songLinkClick1").children("div")[0].style.display = "none";
                                         $("#songLinkClick1").children("div")[2].style.display = "none";*/
                                         $("#albumart").append("<div class='firstAA'><img ondblclick='localStorage.clear();' style='display: inline-block; height: 244px;' src=" + $('[name="current"]')[0].attributes[0].value + " style=''/><div class='secondAA'><h1 class='albumInfo'>" + albumArtArray[2] + "</h1><h1 class='albumInfo'>" + albumArtArray[1] + "</h1><h1 class='albumInfo'>" + albumArtArray[0] + "</h1><h1 class='albumInfo'></div></div>");
                                        //$("#all").fadeIn(1000);
                                    }
                                   else if (localStorage["checkThis"] != "true" && $("#results").children("header").length < 2) {
                                          localStorage["checkThis"] = "true";
                                         // firstSongs("3xkxcbnc7G3XYuZt6eUnI5");
                                        //  firstSongs("0DxirjMd0sE5C1annYHtt7");
                                          location.reload();
                                       }
                                   }
                                  //  votedSongs();
                            });
                            playlists = [];
                            currentTracks = [];
                        }
                    }
                }
              }
            votes();
          }
        catch (exception) {
            // //console.log(exception);
        }

    }
   for (var i = 0; i < $("#results").children("header").length; i++) {
      $("#songLinkClick" + i + " div:nth-child(3)").on('click touchstart', function() {
        if (localStorage.host) {
         increment(i, 1);
       }
       else {
         increment(i, 0);
       }
	      nextSongs();
         $("#songLinkClick" + i + " div:nth-child(1) a").css("pointerEvents", "none");
         $("#songLinkClick" + i + " div:nth-child(3) a").css("pointerEvents", "none");
         $("#songLinkClick" + i + " div:nth-child(1) a").css("color", "black");
         $("#songLinkClick" + i + " div:nth-child(3) a").css("color", "black");
      });
      $("#songLinkClick" + i + " div:nth-child(1)").on('click touchstart', function() {
        if (localStorage.host) {
         decrement(i, 1);
       }
       else {
         decrement(i);
       }
	       nextSongs();
         $("#songLinkClick" + i + " div:nth-child(1) a").css("pointerEvents", "none");
         $("#songLinkClick" + i + " div:nth-child(3) a").css("pointerEvents", "none");
         $("#songLinkClick" + i + " div:nth-child(1) a").css("color", "black");
         $("#songLinkClick" + i + " div:nth-child(3) a").css("color", "black");
      });
   }
   window.votes = function () {
	   var a = 0;
               var up = 0;
                 var down = 0;
                 var upAdmin = 1;
                 var downAdmin  = 1;
   var decrementArray = [];
   var incrementArray = [];
   var object = {};
   object["userName"] = localStorage.userID;
    $.ajax({
        async: true,
        type: "POST",
        url: "http://spartify.herokuapp.com/votes",
        dataType: "json",
        data: object,
        success: function (dataFirst) {
          localStorage.setItem("nebulous", 1);
            localStorage.setItem("voteTotals", dataFirst.songs);
               for (var j = 1; j < $("#results").children("header").length - 1; j++){
                 var songNames = $('#songLinkClick' + j).children('div')[1].childNodes[3].innerText.toString();
		 if (songNames.length >= 11) {
		    songNames = songNames.slice(0, 10);
		 }
		 if (songNames.length > 2) {
		  up = localStorage.voteTotals.split("+" + songNames).length;
                  down = localStorage.voteTotals.split("-" + songNames).length;
                  upAdmin = localStorage.voteTotals.split("++" + songNames).length;
                  downAdmin = localStorage.voteTotals.split("--" + songNames).length;
               a = up - down;
               if (upAdmin >= 2 && upAdmin >= downAdmin) {
                 localStorage.nebulous = parseInt(localStorage.nebulous) + 1;
                 $("#songLinkClick" + j + " div:nth-child(3) a").text("+X");
                 $("#songLinkClick" + j + " div:nth-child(1) a").text("+X");
               }
               else if (downAdmin >= 1 && a < 0) {
                 $("#songLinkClick" + j + " div:nth-child(3) a").text(a);
                 $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
               }
               else if (a == 0) {
                 $("#songLinkClick" + j + " div:nth-child(3) a").text("+");
                 $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
               }
               else if (a > 0) {
                $("#songLinkClick" + j + " div:nth-child(1) a").text("-");
                 $("#songLinkClick" + j + " div:nth-child(3) a").text(a);
               }
                else {
                    $("#songLinkClick" + j + " div:nth-child(1) a").text(a);
                 $("#songLinkClick" + j + " div:nth-child(3) a").text("+");
               }
               }
	       }
   }
   });
   }
votedSongs();
    nextSongs();
    window.increment = function (i, l) {
      try {
        if (localStorage.uv != "true" && !localStorage.host) {
         localStorage["votedArray"] = localStorage["votedArray"] + ($('#songLinkClick' + i).children('div')[1].childNodes[3].innerText.toString() + ", ");
        }
        else {
          localStorage["votedArray"] = " ";
        }
        var alreadyVoted = [];
        var voted = [];
	var tba = [];
    var current = $("#songLinkClick" + i + " div:nth-child(3) a").text();
          for (var j = 1; j < $("#results").children("header").length -1; j++) {
            var voteTally = $("#songLinkClick" + j + " div:nth-child(3) a").text();
            if (voteTally == "+X") {
		voteTally = "00";
	    }
	    if (voteTally >= (current + 1) && voteTally != "+" && voteTally != "+X" && voteTally != "00") {
              alreadyVoted.push(voteTally);
            }
            if (voteTally != "--") {
              voted.push(voteTally);
            }
	    if (voteTally > current || voteTally == "00" || voteTally == "+X" && voteTally != "+")
	      tba.push(voteTally);
          }
         var smallest = 500;
         for (var k = 0; k < alreadyVoted.length; k++) {
             if (alreadyVoted[k] < smallest && alreadyVoted[k] >= current) {
                var smallest = alreadyVoted[k];
             }
         }
           var songNames = [];
           if (localStorage.uv != "true" && !localStorage.host) {
            localStorage["votedArray"] = localStorage["votedArray"] + ($('#songLinkClick' + i).children('div')[1].childNodes[3].innerText.toString() + ", ");
           }
           else {
             localStorage["votedArray"] = " ";
           }
           var object = {};
           var songName = $('#songLinkClick' + i).children('div')[1].childNodes[3].innerText.toString();
           if (l == 1) {
            object["song"] = "+" + songName;
           }
           else if (l == 0) {
           object["song"] = songName;
           }
	   else if (l == 12) {
           object["song"] = "s";
	   }
           object["userName"] = localStorage.userID;
           object["party"] = localStorage.party;
           $.ajax({
               async: false,
               type: "POST",
               url: "http://spartify.herokuapp.com/upVote",
               dataType: "json",
               data: object,
               success: function (dataFirst) {
                localStorage.setItem("voteTotals", dataFirst.songs);
                for (var j = 0; j < $("#results").children("header").length; j++){
                songNames[j] = $('#songLinkClick' + j).children('div')[1].childNodes[3].innerText.toString();
                }
                var a1 = 0;
                 var up1 = 0;
                 var down1 = 0;
                up1 = localStorage.voteTotals.split("+" + songNames[i]).length;
                down1 = localStorage.voteTotals.split("-" + songNames[i]).length;
                a1 = up1 - down1;
                if (a1 >= 3 && voted.lastIndexOf(smallest) == -1 && l != 1 && l != 0 && parseInt(localStorage.nebulous) > 1) {
                 incrementAdmin(i, 0, -5);
                }
                else if (l == 1) {
                  incrementAdmin(i, 0, 1);
                }
		else if (a1 >= 3 && l == 0) {
		if (voted.lastIndexOf(smallest)) {
            incrementAdmin(i, 0, tba.length - 49);
            console.log(tba.length, smallest);
		}
                }
		else if (a1 >= 3 && l == 0 && voted.lastIndexOf(smallest) == -1) {
                  incrementAdmin(i, 0, 1);
                }
                else if (a1 >= 3 && voted.lastIndexOf(smallest) == -1 && parseInt(localStorage.nebulous) > 1) {
                  incrementAdmin(i, 0, 1);
                 }
                else if (a1 >= 3 && voted.lastIndexOf(smallest) != -1) {
                  incrementAdmin(i, 0, voted.lastIndexOf(smallest));
                 }
                else if (a1 == 0) {
                  $("#songLinkClick" + i + " div:nth-child(3) a").text("+");
                  $("#songLinkClick" + i + " div:nth-child(1) a").text("-");
                }
                else if (a1 > 0) {
                  $("#songLinkClick" + i + " div:nth-child(3) a").text(a1);
                  $("#songLinkClick" + i + " div:nth-child(1) a").text("-");
                }
                else {
                  $("#songLinkClick" + i + " div:nth-child(1) a").text(a1);
                  $("#songLinkClick" + i + " div:nth-child(3) a").text("+");
                }
                   a1 = 0;
                   up1 = 0;
                   down1 = 0;
		      // nextSongs();
                }
           });
       }
       catch (exception) {
           // //console.log(exception);
       }
    }
    window.decrement = function (i, l) {
        try {
           var songNames = [];
           if (localStorage.uv != "true" && !localStorage.host) {
            localStorage["votedArray"] = localStorage["votedArray"] + ($('#songLinkClick' + i).children('div')[1].childNodes[3].innerText.toString() + ", ");
           }
           else {
             localStorage["votedArray"] = " ";
           }
           var object = {};
             var songNameDown = $('#songLinkClick' + i).children('div')[1].childNodes[3].innerText;
             if (l == 1) {
              object["song"] = "-" + songNameDown;
             }
             else {
             object["song"] = songNameDown;
             }
             object["userName"] = localStorage.userID;
             object["party"] = localStorage.party;
             $.ajax({
                 async: true,
                 type: "POST",
                 url: "http://spartify.herokuapp.com/downVote",
                 dataType: "json",
                 data: object,
                 success: function (dataFirst) {
                   console.log(dataFirst);
                   localStorage.setItem("voteTotals", dataFirst.songs);
                   for (var j = 0; j < $("#results").children("header").length; j++){
                  songNames[j] = $('#songLinkClick' + j).children('div')[1].childNodes[3].innerText.toString();
                  }
                   var a2 = 0;
                   var up2 = 0;
                   var down2 = 0;
                    up2 = localStorage.voteTotals.split("+" + songNames[i]).length;
                    down2 = localStorage.voteTotals.split("-" + songNames[i]).length;
                    a2 = up2 - down2;
                   if (a2 == 0) {
                     $("#songLinkClick" + i + " div:nth-child(3) a").text("+");
                     $("#songLinkClick" + i + " div:nth-child(1) a").text("-");
                   }
                   else if (a2 > 0) {
                     $("#songLinkClick" + i + " div:nth-child(3) a").text(a2);
                     $("#songLinkClick" + i + " div:nth-child(1) a").text("-");
                   }
                   else {
                     $("#songLinkClick" + i + " div:nth-child(1) a").text(a2);
                     $("#songLinkClick" + i + " div:nth-child(3) a").text("+");
                   }
		   if (a2 >= 3) {
                      increment(i, 12);
                   }
		   else if (a2 <= -1) {
			decrementAdmin(i);
		   }
			// nextSongs();
                   }, error: function (dataFirst) {
               console.log(dataFirst);
             }
             });
         }
         catch (exception) {
         }
      }
      window.incrementAdmin = function (i, y, l) {
          try {
            var obj = {};
            var id = i;
            var currentSong = $("[name='current']").attr("id");
            currentSong = currentSong.substr(13);
            currentSong = (currentSong * 1 + localStorage["offsetNumber"] * 1);
            id = (id * 1 + localStorage["offsetNumber"] * 1);
            // //console.log(id)
            localStorage["songRequest"] = i;
            localStorage["songRequest"] = localStorage["songRequest"].replace("\"", '');
	    if (parseInt(l) == 1) {
              obj["insert_before"] = parseInt(localStorage.nebulous) + parseInt(localStorage.offsetNumber);
            }
            else if (parseInt(l) == 2) {
              obj["insert_before"] = parseInt(localStorage.offsetNumber) + parseInt(localStorage.nebulous);
            }
	    else if (parseInt(l) == 0) {
              obj["insert_before"] = 1 + parseInt(localStorage.offsetNumber) + parseInt(localStorage.nebulous);
            }
            else if (parseInt(l) > 1) {
              obj["insert_before"] = parseInt(l) + parseInt(localStorage.offsetNumber);
            }
            else if (parseInt(l) == -5) {
              obj["insert_before"] =  parseInt(localStorage.nebulous) + parseInt(localStorage.offsetNumber) + 1;
            }
            else if (parseInt(l) < -10) {
	    if (parseInt(l) != -50) {
              obj["insert_before"] =  parseInt(l + 49) + parseInt(localStorage.offsetNumber) + parseInt(localStorage.nebulous);
	    }
	    else {
	      obj["insert_before"] =  parseInt(localStorage.offsetNumber) + parseInt(localStorage.nebulous);
	    }
	    }
            console.log(i, y, l);
            obj["range_start"] = id;
            obj["range_length"] = 1;
            if ((currentSong <= (id - 2)) && y != 0) {
              console.log("MADE IT THIS FAR");
                  $.ajax({
                      async: false,
                      type: "PUT",
                      url: "https://api.spotify.com/v1/users/" + localStorage["userID"] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                      headers: { 'Authorization': 'Bearer ' + access_token },
                      dataType: "json",
                      data: JSON.stringify(obj),
                      success: function (dataFirst) {
                        if (y != 0) {
                          nextSongs();
                        }
                          $("#results").css("text-align", "center");
                          localStorage["songRequest"] = 0;
                          id = 0;
                          console.log("YEST123");
                      }
                  });
              }
              else if (y == 0) {
                $.ajax({
                    async: true,
                    type: "PUT",
                    url: "https://api.spotify.com/v1/users/" + localStorage["userID"] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                    headers: { 'Authorization': 'Bearer ' + access_token },
                    dataType: "json",
                    data: JSON.stringify(obj),
                    success: function (dataFirst) {
                        $("#results").css("text-align", "center");
                        localStorage["songRequest"] = 0;
                        id = 0;
                        console.log(i, y, l);
                        nextSongs();
                    },
                    error: function (data){
                      console.log(data);
                    }
                });
              }
              if (y != 0) {
                nextSongs();
              }
          }
          catch (exception) {
              // //console.log(exception);
          }
      }
      window.decrementAdmin = function (i) {
          try {
            votedSongs();
              var obj = {};
              var id = i;
              var currentSong = $("[name='current']").attr("id");
              currentSong = currentSong.substr(13);
              currentSong = (currentSong * 1 + localStorage["offsetNumber"] * 1);
              id = (id * 1 + localStorage["offsetNumber"] * 1);
              obj["range_start"] = id;
              obj["range_length"] = 1;
              obj["insert_before"] = localStorage["totalSongs"] - 1;
              if (localStorage.uv != "true" && !localStorage.host) {
               localStorage["votedArray"] = localStorage["votedArray"] + ($('#songLinkClick' + i).children('div')[1].childNodes[3].innerText.toString() + ", ");
              }
              else {
                localStorage["votedArray"] = " ";
              }
              $("#songLinkClick" + i).children("a").css("display", "none !important");
              $.ajax({
                  async: true,
                  type: "PUT",
                  url: "https://api.spotify.com/v1/users/" + localStorage["userID"] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                  headers: { 'Authorization': 'Bearer ' + access_token },
                  dataType: "json",
                  data: JSON.stringify(obj),
                  success: function (dataFirst) {
                      nextSongs();
                      partyPlaylist = [];
                      $("#results").css("text-align", "center");
                      id = 0;
                  }
              });
              nextSongs();
          }
          catch (exception) {
              // //console.log(exception);
          }
      }
   loading();
	  votes();
   setTimeout(function() {  nextSongs(); }, 4000);
  }
  });
