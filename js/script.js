$(document).ready(function()
{
   
    $("#subt").click(function(e)
    {

      e.preventDefault();
      var name = $("#name").val();
      var email = $("#mail").val();
      var mobile= $("#mobile").val();
      var password= $("#password").val();
      var confirmpassword= $("#confirm_password").val();
      var data = "name="+name+"&email="+email+"&mobile="+mobile+"&password="+password+"&confirmpassword="+confirmpassword;
     
      if((name.length==0)){
        $(".er_f").html("Name field cannot be empty");
      }
      else if((email.length==0)){
          $(".er_f").html("Email field cannot be empty");
         
      }
      else if(mobile.length==0){
        $(".er_f").html("mobile field cannot be empty");
      }
      else if((password.length==0)){
        $(".er_f").html("password cannot be empty");
      }
      else if((confirmpassword.length==0)) {
        $(".er_f").html("Enter confirm password");
      }
      else if(password!=confirmpassword){
        $(".er_f").html("password not same");
      }

      else {
          
         $.ajax(
         {
             url:"data.php",
             method:"POST",
             dataType:"JSON",
             data:data,
             success:function(data)
             {
                if(data.is_error==0){
                    window.location = "login.php";
                }
                else 
                {
                    $(".er_f").html(data.msg);
                }
             }
         });
      }

     
    });
    

    $("#login").click(function(e)
    {
       e.preventDefault();
       var mail_in = $("#mail_in").val();
       var password_in = $("#password_in").val();
       var data = "mail_in="+mail_in+"&password_in="+password_in;
       
       if(mail_in.length==0)
       {
           $(".er_f").html("Email field cannot be blank");
       }
       else if(password_in.length==0)
       {
           $(".er_f").html("Password field cannot be empty");
       }

       else
       {
          $.ajax(
          {
              url:"data.php",
              method:"POST",
              dataType:"JSON",
              data:data,
              success:function(data)
              {
                  if(data.is_error==0){
                      window.location = "index.php";
                  }

                  else
                  {
                      $(".er_f").html(data.msg);
                  }
              }
          });
       }

    });

    $(".c_pop").hide();

    $(".single_order").on("click",function(e)
    {
        e.preventDefault();

        var product_id = $(this).attr("id");

        var single_order_val = "single_no_"+product_id;

        var no_single_side_cards = $("#"+single_order_val).val();

        var data = "product_id="+product_id+"&no_single_side_cards=" +no_single_side_cards;

        var validate = $(".valdt").val();
        if (validate<=0)
        {
          alert("Enter valid number of products");
        }

        else 
        {
          $.ajax(
            {
                url:"data.php",
                method:"POST",
                dataType:"JSON",
                data:data,
                success:function(data)
                {
                  if(data.is_error==0){
                    $(".c_pop").show();
                    $(".c_pop").fadeOut(3000);
                  }
                  else {
                    alert("failed to add cart");
                  }
                }
            });
        }

      

    });

    $(".double_order").on("click",function(e)
    {
        e.preventDefault();

      
        var product_id = $(this).attr("id");

        var double_order_val = "double_no_"+product_id;

        var no_double_side_cards = $("#"+double_order_val).val();

        var data = "product_id="+product_id+"&no_double_side_cards=" +no_double_side_cards;

      
        if (no_double_side_cards <=0)
        {
          alert("Enter valid number of products");
        }
        else
        {
          $.ajax(
            {
                url:"data.php",
                method:"POST",
                dataType:"JSON",
                data:data,
                success:function(data)
                {
                  if(data.is_error==0){
                    $(".c_pop").show();
                    $(".c_pop").fadeOut(3000);
                  }
                  else {
                    alert("failed to add cart");
                  }
                }
            });
        }
       

    });



    $(".cart_rem").click(function(e){
        var temp_id =$(this).attr("id");
        var data = "temp_id="+temp_id;

        $.ajax(
          {
            url:"data.php",
            method:"post",
            dataType:"TEXT",
            data:data,
            success:function(data){
              window.location.href = 'cart.php';
            }
        });

    });

      $("#checkout_op").click(function(e){
        window.location.href = 'detailsform.php';
      });

      $(".stationary_btn").click(function()
      {
        var product_id = $(this).attr("id");
        var product_val = "product_no_"+product_id;
        var no_products = $("#"+product_val).val();
        var data = "allproduct_id="+product_id+"&no_products="+no_products;
       
        if(no_products <=0 )
        {
          alert("Enter a valid number of products");
        }

        else
        {
          $.ajax(
            {
                url:"data.php",
                method:"POST",
                dataType:"JSON",
                data:data,
                success:function(data)
                {
                  if(data.is_error==0){
                    $(".c_pop").show();
                    $(".c_pop").fadeOut(3000);
                   
                  }
                  else {
                    alert("failed to add cart");
                  }
                }
            });
        }

      });

     

});