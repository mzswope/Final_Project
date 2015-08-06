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
//= require isotope.pkgd.min
//= require masonry.pkgd.min
//= require turbolinks
//= require_tree .

// ---Header----

// ---Join Button----

function buttonJoin() {
  window.open("/admin_users/new", "_self");
}


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


// -----Shelter Search------




// ---Search for a Shelter on background-----


$(function() {

//----Background images----
  // var dogImages = document.getElementById("backgroundImage");
  // var imageArray = ["assets/background/boxer_white_background.jpg", "assests/background/bassett.jpg", "assets/background/black_tan_dog.jpg", "assets/background/dog-white-background.jpg", "assets/background/Great-Dane-with_puppy.jpg", "assets/background/bulldog_on_back.jpg", "assets/background/small_white_terrier.jpg",];
  // var imageIndex = 0;

  // function changeImage (){
  // 	dogImages.setAttribute("src", imageArray[imageIndex]);
  // 	imageIndex++;
  // 		if (imageIndex >=imageArray.length){
  // 			imageIndex = 0;
  // 		}
  // }

  // var intervalHandler	=	setInterval(changeImage, 5000);


// ---Shelter Search Map---

  var geocoder;
  var map;
  function initialize() {
    geocoder = new google.maps.Geocoder();
    var latlng = new google.maps.LatLng(41.3917782, 2.1772809999999936);
    var mapOptions = {
      zoom: 12,
      center: latlng
    }
    map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  }

  function codeAddress() {
    var address = document.getElementBylass("address").value;
    geocoder.geocode( { 'address': address}, function(results, status) {
      if (status == google.maps.GeocoderStatus.OK) {
        map.setCenter(results[0].geometry.location);
        var marker = new google.maps.Marker({
            map: map,
            position: results[0].geometry.location
        });
      } else {
        alert("Geocode was not successful for the following reason: " + status);
      }
    });
  }
 	google.maps.event.addDomListener(window, 'load', initialize);

 });




// ---Photo Gallery Pop-up Window----

// $('#dogModal<%= @dog.id %>').on('shown.bs.modal', function () {
//   $('#dogInput').focus()
// })

// ---Footer-----

function footerShelterClick() {
  window.open("/shelters", "_self");
}



