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
      const content = $('#txt_area_comments').val();
      $.post({
        url: "http://localhost:3000/comments",
        data: { content:  content, post_id: postId } ,
      })
      .done(function (data) {
        $('#txt_area_comments').val('');
        var commentsContent = `Posted By: ${data.user.username}<br>Comment: ${data.content}<a class='delete_comment' href='javascript:void(0)' id='${data.id}'>Delete</a><br>`;
        $p = $('<p>').html(commentsContent);
        $p.appendTo('#comments_div');
        $('.delete_comment').on('click', function(){
          var idAttr = $(this).attr('id');
          const url_destroy = `http://localhost:3000/comments/${idAttr}`;
          $.ajax({
            url: url_destroy,
            type: 'DELETE'
          })
          .done(function(){
            $('#comments_div').html("");
            getCommentsJson();
          })
          .fail(errorHandler);
          // console.log(idAttr);
        });
      })
      .fail(errorHandler);
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
    const comment = data[i];
    var $display_delete;
    if(userId === data[i].user.id){

      $display_delete = $(`<a class="delete_comment">Delete</a>`);
      $display_delete.on('click', function(){
        const url_destroy = `http://localhost:3000/comments/${ comment.id }`;
        // console.log('url', url_destroy);
        $.ajax({
          url: url_destroy,
          type: 'DELETE'
        })
        .done(function(){
          // $('#comments_div').html(""); // getCommentsJson();
          $(`#comment_${ comment.id }`).remove();
        })
        .fail(errorHandler);
      });
    }
    else {
      $display_delete = "";
    }
    var commentsContent = `Posted By: ${data[i].user.username}<br>Comment: ${data[i].content}`;

    $comment = $(`<div id="comment_${ comment.id }">`).html(`<p>${ commentsContent }</p>`);
    $comment.append($display_delete);
    $comment.appendTo('#comments_div');
    // $p = $('<p>').html(commentsContent);
    // $p.appendTo('#comments_div');

  }
};
const errorHandler = xhr => {
  console.warn('Error with comments request: ', xhr.responseText, xhr);
};
