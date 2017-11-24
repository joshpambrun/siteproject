$(document).ready(function() {

  $("button.add_wishlist").click(function() {
    var clickedbtnID = $(this).attr('value');
    $.ajax({
      url: "user/cart/add",
      data: {product: clickedbtnID},
    }).done(function(data) {
      alert("Added " + data.name + " to wishlist!");
    });
  });
  
  $("button.del_wishlist").click(function() {
    var clickedbtnID = $(this).attr('value');
    $.ajax({
      url: "user/cart/del",
      data: {product: clickedbtnID},
    }).done(function(data) {
      alert(data);
    });
  });

});