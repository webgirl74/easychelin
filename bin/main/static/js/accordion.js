$(document).ready(function(){

  $("#accordion tr:odd").addClass("odd");
  $("#accordion tr:not(.odd)").hide(); 
  $("#accordion tr:first-child").show(); //열머리글 보여주기

  $("#accordion tr.odd").click(function(){
      $("tbody tr.active").hide();
      
      if(!$(this).next("tr").hasClass('active')){
          $("tbody tr.active").removeClass('active');
          $(this).next("tr").toggle();
          $(this).next("tr").addClass('active');
          $(this).find(".arrow").toggleClass("up");
      } else {
          $("tbody tr.active").removeClass('active');
      }
  });
});