$(function () {

    $(".child").click(function () {
      // alert("Handle user.Nanny");
      $(".seniorDesplay").css("display", "none");
      $(".childDesplay").css("display", "block");
      // $('#user_care').val('false')
      // nannyDesplay
    });
  
  
  
    $(".senior").click(function () {
      $(".seniorDesplay").css("display", "block");
      $(".childDesplay").css("display", "none");
    });

})