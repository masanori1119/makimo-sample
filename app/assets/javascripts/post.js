$(function() {
   $(".comment-open").click(function() {
        var postId = $(this).data("post-id");
         $(".comment-" + postId).fadeToggle();
  });
});

