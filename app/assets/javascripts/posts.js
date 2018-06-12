// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$( document ).ready(function() {

  if( $('body.posts.show').length ){

    $('form').submit(function(event){
      event.preventDefault();
      return false;
    });
    // This gets called when the page loads
    getCommentsJson();

    $('#btn_comment').on('click', function(){
      // getCommentsJson();

      // console.log('post!');
      //
      // $.post({
      //   url: "http://localhost:3000/comments",
      //   data: { comment:  "whatever" } ,
      // )
      // .done(function (data) {
      //   console.log(data);
      // })
      // .fail(function (err) {
      //   console.log(err);
      // });



    });

  } // CSS controller/action test

});
// Making JSON call to get the comments belongs to that particular Post
const getCommentsJson = function(){
  const URL = `http://localhost:3000/comments/${postId}`;
  $.getJSON(URL,{
    format: 'json',
    nojsoncallback: 1
  })
  .done(getComments)
  .fail(errorHandler);
}
// This gets called on success
const getComments = data => {
  for(i=0; i< data.length; i++){
    var commentsContent = `Posted By: ${data[i].user.username}<br>Description: ${data[i].content}<br>`;
    $p = $('<p>').html(commentsContent);
    $p.appendTo('#comments_div');
  }
};
const errorHandler = xhr => {
  console.warn('Error with comments request: ', xhr.responseText, xhr);
};
