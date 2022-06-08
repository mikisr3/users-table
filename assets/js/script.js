								

								
function showHide(){

  console.log("hjhjh");

var clicked = true;

var sidebarToggle = document.body.querySelector('#sidebarToggle');

if(clicked){

                sidebarToggle.src = "http://localhost/blog/assets/images/posts/open.jpg";

                clicked = false;


            }else{

                 sidebarToggle.src = "http://localhost/blog/assets/images/posts/hide.jpg";

                 clicked = true;


            }



}

var clicked = true;
								
window.addEventListener('DOMContentLoaded', event => {

    // Toggle the side navigation
    var sidebarToggle = document.body.querySelector('#sidebarToggle');
    if (sidebarToggle) {
        // Uncomment Below to persist sidebar toggle between refreshes
          if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
              document.body.classList.toggle('sb-sidenav-toggled');
         }

        //console.log(sidebarToggle.src);


        sidebarToggle.addEventListener('click', event => {
            event.preventDefault();
            document.body.classList.toggle('sb-sidenav-toggled');
            localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
            if(clicked){

                sidebarToggle.src = "http://localhost/blog/assets/images/posts/open.jpg";

                clicked = false;


            }else{

                 sidebarToggle.src = "http://localhost/blog/assets/images/posts/hide.jpg";

                 clicked = true;


            }
            
        });
    }

});





const listItems = document.querySelectorAll('.alt');


listItems.forEach(li => {

  li.addEventListener('click', () => {

   
     document.querySelectorAll(".alt").forEach(x => x.className = "alt");

     li.classList.toggle('alt-background');
     

    // li.style.backgroundColor = "red";
  
  });
});


$('.list-group a').click(function () {
    var eid = $(this).attr("id");

    
    var $frm = $('#event-notify-form');
    //set the value of the hidden element
     $frm.find('input[name="CatId"]').val(eid);
    //submit the form
    // $frm.submit();
});

	























							   

      
