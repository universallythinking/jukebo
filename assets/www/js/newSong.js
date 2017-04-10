$(document).ready(function () {
  window.resetVotes = function () {
    localStorage.votedArray = "";
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
	   location.reload();
         }
    });
	  }
}
    if (!document.hidden) {
    var userID;
    var baseURL;
    var searchQry;
    var myDataLength;
    var partyPlaylist;
    var listOfTracks = [];
    $("#filename").on('blur', function () {
	        $("#searchBoxContainer").css("margin-top", "0px !important");
	    	        $("#searchBoxContainer").css("position", "fixed");
	    	        $("#albumArt").css("position", "fixed");
	    	        $("#all").css("display", "block");
	    $("#html").scrollTop(0);
    });
    $("#searchBoxContainer").focus(function () {
       $("#html").scrollTop(0);
	    newToken();
    });
    $("#filename").on('focus', function () {
	        $("#searchBoxContainer").css("margin-top", "0px !important");
	    	        $("#searchBoxContainer").css("position", "absolute");
	    	        $("#albumArt").css("position", "absolute");
	    	        $("#all").css("display", "none");
	    $("#html").scrollTop(0);
	    $("#html").scroll(function(e){ e.preventDefault(); e.stopPropogagtion();});
    });
    $('#filename').on('keypress', function () {
	    $("#html").scroll(function(e){ e.preventDefault(); e.stopPropogagtion();});
   // $("#filename").keydown(function (event) {
       if (event.which === 13) {
	    $("#filename").blur();
            if (document.getElementById('filename').value.toLowerCase() == "logout." && localStorage["complete_access"] != "false" && localStorage["complete_access"] != false)
            {
		function closeWin() {
		    setTimeout(function()
		    {
			localStorage.clear();
    }, 2000);
		}
closeWin();
            }
            else if (document.getElementById('filename').value.toLowerCase() == "fullscreen." || document.getElementById('filename').value.toLowerCase() == "fs.") {
		var elem = document.getElementById("html");
		function toggleFullScreen() {
		  if ((document.fullScreenElement && document.fullScreenElement !== null) ||
		   (!document.mozFullScreen && !document.webkitIsFullScreen)) {
		    if (document.documentElement.requestFullScreen) {
		      document.documentElement.requestFullScreen();
		    } else if (document.documentElement.mozRequestFullScreen) {
		      document.documentElement.mozRequestFullScreen();
		    } else if (document.documentElement.webkitRequestFullScreen) {
		      document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
		    }
		  } else {
		    if (document.cancelFullScreen) {
		      document.cancelFullScreen();
		    } else if (document.mozCancelFullScreen) {
		      document.mozCancelFullScreen();
		    } else if (document.webkitCancelFullScreen) {
		      document.webkitCancelFullScreen();
		    }
		  }
		}
		toggleFullScreen();
		document.getElementById('filename').value = "";
		nextSongs();
            }
		else if (document.getElementById('filename').value.toLowerCase() == "c.") {
			localStorage.votedArray = "";
			window.location.reload();
		}
    else if (document.getElementById('filename').value.toLowerCase() == "clear votes.") {
resetVotes();
}
else if (document.getElementById('filename').value.toLowerCase() == "temp.") {
localStorage.setItem("temp", true);
}
else if (document.getElementById('filename').value.toLowerCase() == localStorage.password + "." || document.getElementById('filename').value.toLowerCase() == "i really want unlimited voting." || document.getElementById('filename').value.toLowerCase() == "uv.") {
resetVotes(1);
                localStorage.setItem("uv", "true");
                $("#filename").val("");
                nextSongs();
}
else if (document.getElementById('filename').value.toLowerCase() == "reload.") {
            	loading();
            	setTimeout(function(){
		window.location.reload();
		}, 1000);
            }
            else if (document.getElementById('filename').value.toLowerCase() == "leave party.") {
            	loading();
                window.localStorage.clear("CT");
                window.localStorage.clear("Snapster");
                window.localStorage.clear("clicked");
                window.localStorage.clear("currentTrack");
                window.localStorage.clear("current_token");
                window.localStorage.clear("complete_access");
                window.localStorage.clear("currentlyPlaying");
                window.localStorage.clear("currentlyPlayingID");
                window.localStorage.clear("currentlyPlayingWC");
                window.localStorage.clear("explicit");
                window.localStorage.clear("host");
                window.localStorage.clear("myData");
                window.localStorage.clear("lastFM");
                window.localStorage.clear("partyid");
                window.localStorage.clear("offsetNumber");
                window.localStorage.clear("totalSongs");
                window.localStorage.clear("url");
                window.localStorage.clear("userID");
                window.location.href = "http://spartify.herokuapp.com/thank-you-host.html";
            }
            else if (document.getElementById('filename').value.toLowerCase() == localStorage["password"].toString().toLowerCase() + ".") {
            	 localStorage["power_voter"] = "yes";
               location.reload();
       	    }
            else if (document.getElementById('filename').value == "") {
		nextSongs();
		$("#albumart").show();
		$("#results").attr("style", "");
		}
            else if (localStorage.Snapster) {
                $.ajax({
                    type: "GET",
                    url: "https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                    headers: { 'Authorization': 'Bearer ' + access_token  },
                    dataType: "json",
                    data: "formdata",
                    success: function (trackData) {
                        for (var i = 0; i < trackData.items.length; i++) {
                            listOfTracks[i] = trackData.items[i].track.name.toUpperCase() + " " + trackData.items[i].track.artists[0].name.toUpperCase();
                        }
                    }
                });
                try {
                    partyPlaylist = [];
                    baseURL = "https://api.spotify.com/v1/users/";
                    userID = $('#userID2').html();
                    searchQry = document.getElementById('filename').value.toLowerCase();
                    $.ajax({
                        type: "GET",
                        url: "https://api.spotify.com/v1/search?q=" + searchQry + "&type=track,artist&market=us&limit=50&offset=0",
                        headers: { 'Authorization': 'Bearer ' + access_token  },
                        dataType: "json",
                        data: "formdata",
                        success: function (myData) {
                            $("#albumart").hide();
                            $("#results").empty();
                            myDataLength = myData.tracks.items.length;
                            for (i = 0; i < myData.tracks.items.length; i++) {
                                if (localStorage["explicit"] != "true" && localStorage["explicit"] != true) {
                                    if (myData.tracks.items[i].explicit == false || myData.tracks.items[i].explicit == "false" && listOfTracks.indexOf(myData.tracks.items[i].name.toUpperCase() + " " + myData.tracks.items[i].artists[0].name.toUpperCase()) == -1) {
                                        $("#results").append("<header style='color: white !important; pointer-events: all;' ondblclick='newSong(" + i + ");' id='songLink" + i + "'class='songLinkClick' name=" + "'https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + '/tracks?&uris=spotify%3Atrack%3A' + myData.tracks.items[i].id + "'>" + "<div> <a></a> </div> <div> <p>" + myData.tracks.items[i].artists[0].name + "</p> <p>" + myData.tracks.items[i].name + "</p> </div> <div> <a>+</a> </div> </header>");
                                    }
                                }
                                else if (listOfTracks.indexOf(myData.tracks.items[i].name.toUpperCase() + " " + myData.tracks.items[i].artists[0].name.toUpperCase()) == -1) {
                                    $("#results").append("<header style='color: white !important; pointer-events: all;' ondblclick='newSong(" + i + ");' id='songLink" + i + "'class='songLinkClick' name=" + "'https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + '/tracks?&uris=spotify%3Atrack%3A' + myData.tracks.items[i].id + "'>" + "<div> <a></a> </div> <div> <p>" + myData.tracks.items[i].artists[0].name + "</p> <p>" + myData.tracks.items[i].name + "</p> </div> <div> <a>+</a> </div> </header>");
                                }
                            }
                            $("#results").css("padding-top", "86px");
                            $("#all").fadeIn(1000);
                        }
                    });
            }

                catch (exception) {
					// console.log(exception);
}

}
}
});
window.newSong = function(i) {
    $.ajax({
        type: "POST",
        url: $("#songLink" + i)[0].attributes[4].value,
        headers: { 'Authorization': 'Bearer ' + access_token  },
        dataType: "json",
        data: "formdata",
        success: function (dataFirst) {
            partyPlaylist = [];
            $("#albumart").show();
            $("#albumart").fadeIn(1000);
            $("#results").empty();
            $("#results").css("text-align", "center");
            $("#results").css("padding-top", "298px");
            $.ajax({
                type: "GET",
                url: "https://api.spotify.com/v1/users/" + localStorage['userID'] + "/playlists/" + localStorage['Snapster'] + "/tracks",
                headers: { 'Authorization': 'Bearer ' + access_token  },
                dataType: "json",
                data: "formdata",
                success: function (currentPLData) {
                    $("#filename").val("");
                    $("#results").css("padding-top", "");
                    $("#results").hide().fadeIn('fast');
                    nextSongs();
                }
            });
        }
    });
}

               }
});
