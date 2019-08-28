$(document).ready(function(){
    $(".ordr_view").click(function(){
        var userid = $(this).attr("id");
        data = "userid="+userid;        
        $.ajax(
            {
                url:"view_orders.php",
                method:"POST",
                dataType:"TEXT",
                data:data,               
                success:function(data)
                {  
                 window.location.href='view_orders.php';
                }
            });
    })
});