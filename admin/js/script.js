$(document).ready(function(){
   $("#log_in").click(function(e){
       e.preventDefault();
       var username = $("#uname").val();
       var password = $("#pass_w").val();
       var data = "adminuser="+username+"&password="+password;
       
       $.ajax(
        {
            url:"data.php",
            method:"POST",
            dataType:"JSON",
            data:data,
            success:function(data)
            {
              //alert(data);
               if(data.is_error==0){
                   window.location = "dashboard/index.php";
               }
               else 
               {
                  alert(data.msg);
               }
            }
        });
   });

    $(".ordr_view").click(function(){
        var userid = $(this).attr("id");
        data = "userid="+userid;
        //alert(data);
        
        $.ajax(
            {
                url:"view_orders.php",
                method:"POST",
                dataType:"TEXT",
                data:data,
                
                success:function(data)
                {  
                 //alert(data);
                
                }
            });
    });
})