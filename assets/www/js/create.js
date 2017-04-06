$(document).ready(function () {
  if (!document.hidden && localStorage.explicit && localStorage.Snapster && localStorage.current_token && localStorage.party && localStorage.lastFM && localStorage.userID && localStorage.explicit && localStorage.password ) {
    var party;
    var userPrompt;
    var obj2 = {};
    window.newToken = function () {
        $.ajax({
	    type: "GET",
            url: 'http://spartify.herokuapp.com/refresh_token',
            data: {
                'refresh_token': localStorage["refresh_token"]
            }
        }).done(function (data) {
            access_token = data.access_token;
            localStorage["current_token"] = data.access_token;
            //create();
        });
    }
    newToken();
    }
	});
