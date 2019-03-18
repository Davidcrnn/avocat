$(document).ready(function(){
  var readMoreHtml = $(".read-more").html();
  var lessText = readMoreHtml.substr(0,400);

  if(readMoreHtml.length > 400){
    $(".read-more").html(lessText).append("<a href='' class='read-more-link'>Lire la suite</a>")
    } else {
      $(".read-more").html(readMoreHtml);
    }

  $("body").on("click", ".read-more-link", function(event){
    event.preventDefault();
    $(this).parent(".read-more").html(readMoreHtml).append("<a href='' class='show-less-link'> Réduire</a>")
    $(this).fadeIn();
  });

  $("body").on("click", ".show-less-link", function(event){
    event.preventDefault();
    $(this).parent(".read-more").html(readMoreHtml.substr(0, 400)).append("<a href='' class='read-more-link'> Lire la suite</a>")
  });
});

