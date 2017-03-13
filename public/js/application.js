$(document).ready(function(){
  // $(".head").click(function() {
  // 	$(this).fadeOut()
  // });
  $("text").click(function(){
    $("p").hide("slow", function(){
        alert("The paragraph is now hidden");
    });
});
});

	  // this ID here refers to the form where the usesr types in a URL, you may have a different name for the ID. Edit the code accordingly.
// 	  $('#url-form').submit(function(e){ 
// 	    e.preventDefault();         
// 	    $.ajax({
// 	      url: '/urls', //this refers to the route post '/url'
// 	      method: 'POST',
// 	      data: $(this).serialize(),
// 	      success: function(data){
// 	     	data = JSON.parse(data)
// 	     	short_link = data.short_url
// 	     	$('#ajax-show').append()
// 	      // write some code here to display the shortened URL
// 	     }
// 	    }); // end of function .ajax
// 	  e.preventDefault()
// 	}); // end of function .submit
// }); // end of function document.ready



 // $('#user-form').submit(function(e){
 //    $.ajax({
 //      url: '/urls',
 //      method: 'POST',
 //      data: $(this).serialize(),
 //      success: function(data){
 //        data = JSON.parse(data)
 //        short_link = data.short_url
 //        $('#ajax-show').append(`<p>https://ariefbitly.herokuapp.com/${short_link}</p>`)
 //      }
 //    });
 //    e.preventDefault()
 //  });
// });