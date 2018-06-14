// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
//
//

$( document ).ready(function() {

  // Only load from the news API on the users#show profile page
  if( $('body.users.show').length ){
    const country = $('#articles').data("article");
    console.log(country);
    searchNews(country);
    SearchWeather(country);
  }

});
