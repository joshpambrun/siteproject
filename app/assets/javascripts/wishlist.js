$(document).ready(function() {

  $("button.add_wishlist").click(function() {
    var clickedbtnID = $(this).attr('value');
    alert(clickedbtnID);
  });

});