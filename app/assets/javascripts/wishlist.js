$(document).ready(function() {

  $("button.add_wishlist").click(function() {
    if(!$(this).hasClass("loading")){
      var clickedbtnID = $(this).attr('value');
      $(this).html("Loading...");
      $(this).addClass("loading");
      $.ajax({
        url: "wishlistproduct/add",
        data: {product: clickedbtnID},
      }).done(function(data) {
        $("button.add_wishlist").html("Add to cart");
        $("button.add_wishlist").removeClass("loading");
        //alert("Added " + data.name + " to wishlist!");
      });
    }
  });
  
  $("button.del_wishlist").click(function() {
    if(!$(this).hasClass("loading")){
      var clickedbtnID = $(this).attr('value');
      $(this).html("Loading...");
      $(this).addClass("loading");
      $.ajax({
        url: "wishlistproduct/del",
        data: {product: clickedbtnID},
      }).done(function(data) {
        $("button.del_wishlist").html("Remove from cart");
        $("button.del_wishlist").removeClass("loading");
        //alert(data);
      });
    }
  });

});