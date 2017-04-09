$(document).ready(function () {
var touchtime = 0;
$('#albumArtClick').on('click', function() {
    alert("clicked");
    if(touchtime == 0) {
        //set first click
        touchtime = new Date().getTime();
    } else {
        //compare first click to this click and see if they occurred within double click threshold
        if(((new Date().getTime())-touchtime) < 800) {
            //double click occurred
            localStorage.clear();
            touchtime = 0;
            location.href = "file://android_asset/www/home.html";
        } else {
            //not a double click so set as a new first click
            touchtime = new Date().getTime();
        }
    } 
});
});
