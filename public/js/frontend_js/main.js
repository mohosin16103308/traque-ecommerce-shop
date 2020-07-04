/*price range*/

$('#sl2').slider();

var RGBChange = function() {
 $('#RGB').css('background', 'rgb('+r.getValue()+','+g.getValue()+','+b.getValue()+')')
 };

/*scroll to top*/

$(document).ready(function(){


$(function () {
 $.scrollUp({
    scrollName: 'scrollUp', // Element ID
    scrollDistance: 300, // Distance from top/bottom before showing element (px)
    scrollFrom: 'top', // 'top' or 'bottom'
    scrollSpeed: 300, // Speed back to top (ms)
    easingType: 'linear', // Scroll to top easing (see http://easings.net/)
    animation: 'fade', // Fade, slide, none
    animationSpeed: 200, // Animation in speed (ms)
    scrollTrigger: false, // Set a custom triggering element. Can be an HTML string or jQuery object
  //scrollTarget: false, // Set a custom target element for scrolling to the top
    scrollText: '<i class="fa fa-angle-up"></i>', // Text for element, can contain HTML
    scrollTitle: false, // Set a custom <a> title if required.
    scrollImg: false, // Set true to use image
    activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
    zIndex: 2147483647 // Z-Index for the overlay
 });
});
});




// Change Price with Size & Stocks Availability
// $(document).ready(function(){
//
//
//     $("#selSize").change(function(){
//         var idsize = $(this).val();
//         if(idsize==""){
//             return false;
//         }
//         $.ajax({
//             type:'get',
//             url:'/get-product-price',
//             data:{idsize:idsize},
//             success:function(resp){
//                 var arr = resp.split('#');
//                 $("#getPrice").html("INR "+arr[0]);
//                 $("#price").val(arr[0]);
//                 if(arr[1]==0){
//                     $("#cartButton").hide();
//                     $("#Availability").text("Out Of Stock");
//                 }else{
//                     $("#cartButton").show();
//                     $("#Availability").text("In Stock");
//                 }
//
//
//             },error:function(){
//                 alert("Error");
//             }
//         });
//     });
// });


    // // Change Price with Size
    // $(document).ready(function(){
    //     $("#selSize").change(function(){
    //         var idsize = $(this).val();
    //         if(idsize==""){
    //             return false;
    //         }
    //         $.ajax({
    //             type:'get',
    //             url:'/get-product-price',
    //             data:{idsize:idsize},
    //             success:function(resp){
    //                 $("#getPrice").html("$ "+resp);
    //             },error:function () {
    //                 alert('Error') ;
    //             }
    //         });
    //     });
    //
    // });
    // // Change Price with Size  End









// Change Image

$(document).ready(function() {

  $(".changeImage").click(function(){


    var image = $(this).attr('src');
    $(".mainImage").attr("src", image);

  });

});

// Change Image End










// .................................EasyZoom...................................
// Instantiate EasyZoom instances
var $easyzoom = $('.easyzoom').easyZoom();

// Setup thumbnails example
var api1 = $easyzoom.filter('.easyzoom--with-thumbnails').data('easyZoom');

$('.thumbnails').on('click', 'a', function(e) {
    var $this = $(this);

    e.preventDefault();

    // Use EasyZoom's `swap` method
    api1.swap($this.data('standard'), $this.attr('href'));
});

// Setup toggles example
var api2 = $easyzoom.filter('.easyzoom--with-toggle').data('easyZoom');

$('.toggle').on('click', function() {
    var $this = $(this);

    if ($this.data("active") === true) {
        $this.text("Switch on").data("active", false);
        api2.teardown();
    } else {
        $this.text("Switch off").data("active", true);
        api2._init();
    }
});

// .................................EasyZoom End...................................






//validate Register form

$().ready(function(){

    $("#registerForm").validate({

        rules:{
            name:{

                required: true,
                minlength: 2,
                accept: "[a-zA-Z]+"
            },

            password:{
                required: true,
                minlength: 6,
            },

            email:{

                required: true,
                email:true,
                remote: "/check-emails"

            }

        },


        //message start
        messages:{

            name:{
                required:"Please enter your Name",
                minlength: "Your Name must be at least 2 characters long",
                accept:"Your Name must be Contains Only Letters "
            } ,


            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long"
            },

            email:{

                required:"Please enter Your  emails address",
                email:"Please enter a valid emails address",
                remote:"Email Already Exists"
            }
        }
        //message End



    });


    //password Strength

    $('#myPassword').passtrength({
        minChars: 6,
        passwordToggle: true,
        tooltip: true,
        eyeImg :"/images/frontend_images/eye.svg"
    });





});


//validate Register form End








//validate Login Form

$().ready(function(){

    $("#loginform").validate({

        rules:{

            email:{

                required: true,
                email:true


            },

            password:{
                required: true,

            }

        },


        //message start
        messages:{


            email:{

                required:"Please enter Your  emails address",
                email:"Please enter  valid emails ",

            },


            password: {
                required: "Please provide Your password",

            }


        }
        //message End



    });


});


//validate Login Form End









//User account/profile Update

$().ready(function(){

    $("#accountForm").validate({

        rules:{

            name:{
                required:"Please enter your Name",
                minlength: 2,
                accept: "[a-zA-Z]+"
            } ,

            address:{
                required: true,
                minlength:6

            },

            city:{
                required: true,
                minlength:2
            },

            state:{
                required: true,
                minlength:2
            },

            country:{
                required: true

            },







        },


        //message start
        messages:{


            name:{
                required:"Please enter your Name",
                minlength: "Your Name must be at least 2 characters long",
                accept:"Your Name must be Contains Only Letters "
            } ,




            address:{

                required:"Please enter Your  address",
                minlength: "Your address must be at least 6 characters long"

            },




            city:{

                required:"Please Provide Your City",
                minlength: "Your City Name must be at least 2 characters long",

            },


            state:{
                required:"Please Provide Your State",
                minlength: "Your State Name must be at least 2 characters long",

            },

            country:{

                required:"Please enter Your Country",

            }



        }
        //message End



    });


});


//User account/profile End














//User account/profile Check Current|Update password Update

$().ready(function(){

    $("#current_pwd").keyup(function(){
        var current_pwd = $(this).val();
        $.ajax({

            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },

            type:'post',
            url:'/check-user-pwd',
            data:{current_pwd:current_pwd},
            success:function(resp){

                if(resp=="false"){
                    $("#chkPwd").html("<font color='red'> Current Password is Incorrect</font>");

                }else if(resp=="true"){
                    $("#chkPwd").html("<font color='green'> Current Password is Correct</font>");
                }


            },error:function(){
                alert("Error");
            }
        });
    });


    //Update Password
    $("#passwordForm").validate({
        rules:{
            current_pwd:{
                required: true,
                minlength:6,
                maxlength:20
            },
            new_pwd:{
                required: true,
                minlength:6,
                maxlength:20
            },
            confirm_pwd:{
                required:true,
                minlength:6,
                maxlength:20,
                equalTo:"#new_pwd"
            }
        },
        errorClass: "help-inline",
        errorElement: "span",
        highlight:function(element, errorClass, validClass) {
            $(element).parents('.control-group').addClass('error');
        },
        unhighlight: function(element, errorClass, validClass) {
            $(element).parents('.control-group').removeClass('error');
            $(element).parents('.control-group').addClass('success');
        }
    });

    //Update Password





});

//User account/profile Check Current|Upadte  password Update End









// Copy Billing Address to Shipping Address Script

$().ready(function(){

$("#copyAddress").click(function(){
    if(this.checked){
        $("#shipping_name").val($("#billing_name").val());
        $("#shipping_address").val($("#billing_address").val());
        $("#shipping_city").val($("#billing_city").val());
        $("#shipping_state").val($("#billing_state").val());
        $("#shipping_pincode").val($("#billing_pincode").val());
        $("#shipping_mobile").val($("#billing_mobile").val());
        $("#shipping_country").val($("#billing_country").val());
    }else{
        $("#shipping_name").val('');
        $("#shipping_address").val('');
        $("#shipping_city").val('');
        $("#shipping_state").val('');
        $("#shipping_pincode").val('');
        $("#shipping_mobile").val('');
        $("#shipping_country").val('');
    }
});

});


// Copy Billing Address to Shipping Address Script End










//  payment system

function selectPaymentMethod(){
    if($('#Paypal').is(':checked') || $('#COD').is(':checked')){
        /*alert("checked");*/
    }else{
        alert("Please select Payment Method");
        return false;
    }
}


//  payment system end














//validate Contact Form

$().ready(function(){

    $("#main-contact-form").validate({

        rules:{
            name:{
                required: true,
                minlength: 2,
                accept: "[a-zA-Z]+"
            },
            email:{

                required: true,
                email:true,

            },

            subject:{
                required: true,
            },

            message:{
                required: true,
            }
        },

        //message start
        messages:{

            name:{
                required:"Please enter your Name",
                minlength: "Your Name must be at least 2 characters long",
                accept:"Your Name must be Contains Only Letters "
            } ,

            email:{

                required:"Please enter Your  emails address",
                email:"Please enter a valid emails address",

            },

            subject:{
                required:"Please enter Your  Subject",
            },

            message:{
                required:"Please enter Your  Message",
            }

        }
        //message End

    });

});

//validate Contact Form End







//check pincode

function checkPincode(){
    var pincode = $("#chkPincode").val();
    if(pincode==""){
        alert("Please enter Pincode"); return false;
    }
    $.ajax({
        type:'post',
        data:{pincode:pincode},
        url:'/check-pincode',
        success:function(resp){
            if(resp>0){
                $("#pincodeResponse").html("<font color='green'>This pincode is available for delivery</font>");
            }else{
                $("#pincodeResponse").html("<font color='red'>This pincode is not available for delivery</font>");
            }
        },error:function(){
            alert("Error");
        }
    });
}

//check pincode End


