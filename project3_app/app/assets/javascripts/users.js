console.log("yasser")
$(function () {

  $(".Nanny").click(function () {
    // alert("Handle user.Nanny");
    $(".paentDesplay").css("display", "none");
    $(".nannyDesplay").css("display", "block");
    // $('#user_care').val('false')
    // nannyDesplay
  });



  $(".Parent").click(function () {
    $(".paentDesplay").css("display", "block");
    $(".nannyDesplay").css("display", "none");
    // alert("Handle user.Parent");
    // $('#user_care').val('true')
  });

})