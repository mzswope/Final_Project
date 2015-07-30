// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require masonry.pkgd.min
//= require turbolinks
//= require_tree .

//---Header Quotes----


var quoteArray = [
	"Once you have had a wonderful dog, a life without one, is a life diminished ~ dean koontz", 
	"If there are no dogs in Heaven, then when I die I want to go where they went ~ will rogers", 
	"The average dog is a nicer person than the average person ~ andy rooney",
	"A dog will teach you unconditional love. If you can have that in your life, things won't be too bad ~ robert wagner",
	"When an eighty-five pound mammal licks your tears away, then tries to sit on your lap, it's hard to feel sad ~ kristan higgins",
	"A dog is the only thing on earth that loves you more than you love yourself ~ josh billings", 
"Dogs are not our whole life, but they make our lives whole ~ roger caras"
	];

$(document).ready(function(){
	$("#headerQuote").text(quoteArray[Math.floor(Math.random()*quoteArray.length)]);
})


//----Background images----

// var dogImages = document.getElementById("backgroundImage");
// var imageArray = ["images/background/boxer_white_background.jpg", "images/background/bassett.jpg", "images/background/black_tan_dog.jpg", "images/background/dog-white-background.jpg", "images/background/Great-Dane-with_puppy.jpg", "images/background/bulldog_on_back.jpg", "images/background/small_white_terrier.jpg",];
// var imageIndex = 0;
// 
// function changeImage (){
	// dogImages.setAttribute("src", imageArray[imageIndex]);
	// imageIndex++;
		// if (imageIndex >=imageArray.length){
			// imageIndex = 0;
		// }
// }
// 
// var intervalHandler	=	setInterval(changeImage, 5000);


// -----Photo Gallery------




// ---Search for a Shelter on background-----


$(function() {

var map;

function initialize () {
    var mapOptions = {
      zoom: 12,
      center: new google.maps.LatLng(41.3917782, 2.1772809999999936)   
  };

    map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
  };
google.maps.event.addDomListener(window, 'load', initialize);

$('#mapModal').on('shown.bs.modal', function () {
  $('#mapInput').focus()
})
});


// ---Photo Gallery Pop-up Window----

$('#dogModal<%= @dog.id %>').on('shown.bs.modal', function () {
  $('#dogInput').focus()
})

// ---Footer-----

function footerShelterClick() {
  window.open("/shelters", "_self");
}


