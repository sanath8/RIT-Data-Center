$(".dropdown-button").dropdown();
$('.parallax').parallax();
$(window).on('scroll', function () {
    var scrolledAmount = $(window).scrollTop();
    if(scrolledAmount > 150){
        $("#nav_parent").css({display : "block"});
        //$("#img-responsive").stop().animate({height : "370px"}, 200);
    }
    else {
        $("#nav_parent").css({display : "none"});
        //$("#img-responsive").stop().animate({height : "220px"}, 200);
    }
});


$(document).ready(function(){
 $('.slider').slider();
});

// $(".button-collapse").sideNav({
//       menuWidth: 300, // Default is 300
//       edge: 'left', // Choose the horizontal origin
//       closeOnClick: true, // Closes side-nav on <a> clicks, useful for Angular/Meteor
//       draggable: true, // Choose whether you can drag to open on touch screens,
//       onOpen: function(el) { /* Do Stuff*/ }, // A function to be called when sideNav is opened
//       onClose: function(el) { /* Do Stuff*/ }, // A function to be called when sideNav is closed
//     });

// for side bar
function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
    document.getElementById("body_parent").style.marginLeft = "250px";
    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

/* Set the width of the side navigation to 0 and the left margin of the page content to 0 */
function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
    document.getElementById("body_parent").style.marginLeft = "0";
    document.body.style.backgroundColor = "white";

}
