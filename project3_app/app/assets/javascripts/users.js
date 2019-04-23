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
  // Sing Up
  $('.form').find('input, textarea').on('keyup blur focus', function (e) {
  
    var $this = $(this),
        label = $this.prev('label');
  
      if (e.type === 'keyup') {
        if ($this.val() === '') {
            label.removeClass('active highlight');
          } else {
            label.addClass('active highlight');
          }
      } else if (e.type === 'blur') {
        if( $this.val() === '' ) {
          label.removeClass('active highlight'); 
        } else {
          label.removeClass('highlight');   
        }   
      } else if (e.type === 'focus') {
        
        if( $this.val() === '' ) {
          label.removeClass('highlight'); 
        } 
        else if( $this.val() !== '' ) {
          label.addClass('highlight');
        }
      }
  
  });
  
  $('.tab a').on('click', function (e) {
    
    e.preventDefault();
    
    $(this).parent().addClass('active');
    $(this).parent().siblings().removeClass('active');
    
    target = $(this).attr('href');
  
    $('.tab-content > div').not(target).hide();
    
    $(target).fadeIn(600);
    
  });
})