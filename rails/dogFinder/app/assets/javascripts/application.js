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

// var dogQuote = document.getElementById("headerQuote");
// var quoteArray = ["Once you have had a wonderful dog, a life without one, is a life diminished", "If there are no dogs in Heaven, then when I die I want to go where they went", "The average dog is a nicer person than the average person", "A dog will teach you unconditional love. If you can have that in your life, things won't be too bad", "When an eighty-five pound mammal licks your tears away, then tries to sit on your lap, it's hard to feel sad", "A dog is the only thing on earth that loves you more than you love yourself", "Dogs are not our whole life, but they make our lives whole"];
// var quoteIndex	= 0;
// 
// function changeQuote (){
	// dogQuote.setAttribute("src", quoteArray[quoteIndex]);
	// quoteIndex++;
		// if (quoteIndex >=quoteArray.length){
			// quoteIndex = 0;
		// }
// }
// 
// var intervalHandler	=	setInterval(changeQuote, windows.onload);

// var	personQuoted = document.getElementById("headerQuoted");
// var quotedArray = ["~ dean koontz", "~ will rogers", "—Andy Rooney", "—Robert Wagner", "―Kristan Higgins", "-Josh Billings", "-Roger Caras"];
// var quotedIndex	= 0;
// 
// function changeQuoted (){
	// dogQuote.setAttribute("src", quoteArray[quotedIndex]);
	// quotedIndex++;
		// if (quotedIndex >=quotedArray.length){
			// quotedIndex = 0;
		// }
// }
// 
// var intervalHandler	=	setInterval(changeQuoted, windows.onload);

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

//---location finder----

if ("geolocation" in navigator) {
  var button = document.getElementById('searchSendButton');
  button.addEventListener('click', getLocation);
} else {
  alert("Geolocation is not available")
}

function getLocation() {
  console.log('Getting location...'); 
  navigator.geolocation.getCurrentPosition(onLocation, onError, options);
}

var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function onLocation (position) {
  console.log("Got it!");
  var lat = position.coords.latitude;
  var lon = position.coords.longitude;
  document.getElementById('location').innerHTML = "Your are within 50km of these shelters";
  displayMap(lat, lon);
}

function onError(error) {
  console.log("Getting location failed: " + error);
}

function displayMap(lat, lon) {
  var urlRoot = "https://maps.googleapis.com/maps/api/staticmap?center=";
  var urlParams = "&zoom=11&size=480x300&maptype=roadmap&markers=color:blue%7Clabel:A%7C";
  var url = urlRoot + lat + "," + lon + urlParams + lat + "," + lon;
  var map = document.getElementById('map');
  map.setAttribute("src", url);
  console.log(url);
}


