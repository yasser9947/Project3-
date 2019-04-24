$(function () {

  $(".child").click(function () {
    // alert("Handle user.Nanny");
    $(".seniorDesplay").css("display", "none");
    $(".childDesplay").css("display", "block");
    // $('#user_care').val('false')
    // nannyDesplay
  });



  $(".foo").click(function () {
    let id = $(this).attr("id")
    console.log(id)
    $.get(`http://localhost:3000/requests/${id}/stat/update?val=1`, function (res) {
      console.log(res)
    })
    
    $(this).text("hanging ⏰");

  });

  $(".senior").click(function () {
    $(".seniorDesplay").css("display", "block");
    $(".childDesplay").css("display", "none");
  });

})