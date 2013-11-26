// Initializes syntax highlighting
hljs.initHighlightingOnLoad();

// Makes each line clickable, so you can jump faster to it
// and the URL gets updated for easier sharing
$("li").click(function(){
  var old_url = $(location).attr("href");
  var new_url = old_url.replace(/(#.+|$)/, "#" + $(this).attr("id"));

  $(location).attr("href", new_url);
});