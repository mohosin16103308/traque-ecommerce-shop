
$(document).ready(function(){




	$('input[type=checkbox],input[type=radio],input[type=file]').uniform();

	$('select').select2();




	// Form Validation
    $("#basic_validate").validate({
		rules:{
			required:{
				required:true
			},
			email:{
				required:true,
				email: true
			},
			date:{
				required:true,
				date: true
			},
			url:{
				required:true,
				url: true
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
  // Form Validation End




	$("#number_validate").validate({
		rules:{
			min:{
				required: true,
				min:10
			},
			max:{
				required:true,
				max:24
			},
			number:{
				required:true,
				number:true
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


});




 //...................................password validate & check ......................
 $(document).ready(function(){

    //password check
    $("#current_pwd").keyup(function(){
        var current_pwd = $("#current_pwd").val();
        $.ajax({
            type:'get',
            url:'/admin/check-pwd',
            data:{current_pwd:current_pwd},
            success:function(resp){
                //alert(resp);
                if(resp=="false"){
                    $("#chkPwd").html("<font color='red'>Current Password is Incorrect</font>");
                }else if(resp=="true"){
                    $("#chkPwd").html("<font color='green'>Current Password is Correct</font>");
                }
            },error:function(){
                alert("Error");
            }
        });
    });
        //password check End

          //password validate
    $("#password_validate").validate({
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
    //password validate End

});


//...................................password check..................................










/*
|--------------------------------------------------------------------------
|    Category
|--------------------------------------------------------------------------
*/



//...................................Add category Validation......................


$(document).ready(function(){
$("#add_category").validate({
    rules:{
        category_name:{
            required:true
        },
        description:{
            required:true,

        },

        url:{
            required:true,

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
});
//...................................Add category Validation End......................





//...................................Edit category Validation ........................
$(document).ready(function(){
$("#edit_category").validate({
    rules:{
        category_name:{
            required:true
        },
        description:{
            required:true,

        },

        url:{
            required:true,

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

});
//...................................Edit category Validation ......................



//...................................delete category confirmation...................

$(document).ready(function(){
$("#delcat").click(function(){
    // alert("test");
    if(confirm('Are you sure want to Delete this category?')) {

        return true;
    }
    return false

});
});
//...................................delete category confirmation......................





//...................................Delete Category By sweetAlert.........................................

$(document).on('click','.deleteRecord',function(e){
    var id = $(this).attr('rel');
    var deleteFunction = $(this).attr('rel1');
    swal({
            title: "Are you sure?",
            text: "Remember!  You will not be able to recover this Record Again! OK?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn btn-danger",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        },
        function(){
           // window.location.href="/admin/"+deleteFunction+"/"+id;
            window.location.href="/admin/"+id+"/"+deleteFunction;
        });
});

//...................................Delete Category By sweetAlert End...........................













/*
|--------------------------------------------------------------------------
|   Product
|--------------------------------------------------------------------------
*/

//...................................Add product Validation.........................................

$("#add_product").validate({
    rules:{

        category_id:{
            required:true
        },

        product_name:{
            required:true
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

//...................................Add product Validation End.........................................



//...................................Delete Product By sweetAlert.........................................

$(document).on('click','.deleteRecord',function(e){
    var id = $(this).attr('rel');
    var deleteFunction = $(this).attr('rel1');
    swal({
            title: "Are you sure?",
            text: "Remember!  You will not be able to recover this Record Again! OK?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn btn-danger",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        },
        function(){
            // window.location.href="/admin/"+deleteFunction+"/"+id;
            window.location.href="/admin/"+id+"/"+deleteFunction;
        });
});

//...................................Delete Product By sweetAlert End...........................





// Add Remove Input Fields Dynamically using jQuery

$(document).ready(function(){
    var maxField = 10; //Input fields increment limitation

    var addButton = $('.add_button'); //Add button selector

    var wrapper = $('.field_wrapper'); //Input field wrapper

    var fieldHTML = '<div class="field_wrapper" style="margin-left:0px;margin-top: 5px;margin-bottom: 3px;">' +
        '<input type="text" name="sku[]" style="width:120px"/>&nbsp;' +
        '<input type="text" name="size[]" style="width:120px"/>&nbsp;' +
        '<input type="text" name="price[]" style="width:120px"/>&nbsp;' +
        '<input type="text" name="stock[]" style="width:120px"/>' +
        '<a href="javascript:void(0);" class="remove_button" title="Remove field"> Remove</a></div>';  //New input field html


    var x = 1; //Initial field counter is 1

    $(addButton).click(function(){ //Once add button is clicked

        if(x < maxField){ //Check maximum number of input fields

            x++; //Increment field counter

            $(wrapper).append(fieldHTML); // Add field html
        }
    });

    $(wrapper).on('click', '.remove_button', function(e){ //Once remove button is clicked

        e.preventDefault();

        $(this).parent('div').remove(); //Remove field html

        x--; //Decrement field counter

    });

});

// Add Remove Input Fields Dynamically using jQuery End






/*
|--------------------------------------------------------------------------
|   product-attribute
|--------------------------------------------------------------------------
*/

//...................................product-attribute validation.........................................

$("#product-attribute").validate({
    rules:{

        sku:{
            required:true
        },

        size:{
            required:true
        },
        price:{
            required:true
        },
        stock:{
            required:true
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

//...................................product-attribute validation end.........................................



//...................................Delete product-attribute By sweetAlert.........................................

$(document).on('click','.deleteRecord',function(e){
    var id = $(this).attr('rel');
    var deleteFunction = $(this).attr('rel1');
    swal({
            title: "Are you sure?",
            text: "Remember!  You will not be able to recover this Record Again! OK?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn btn-danger",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        },
        function(){
            // window.location.href="/admin/"+deleteFunction+"/"+id;
            window.location.href="/admin/"+id+"/"+deleteFunction;
        });
});

//...................................Delete product-attribute By sweetAlert End...........................

//...................................Delete Multiple Images By sweetAlert.........................................

$(document).on('click','.deleteRecord',function(e){
    var id = $(this).attr('rel');
    var deleteFunction = $(this).attr('rel1');
    swal({
            title: "Are you sure?",
            text: "Remember!  You will not be able to recover this Record Again! OK?",
            type: "warning",
            showCancelButton: true,
            confirmButtonClass: "btn btn-danger",
            confirmButtonText: "Yes, delete it!",
            closeOnConfirm: false
        },
        function(){
            // window.location.href="/admin/"+deleteFunction+"/"+id;
            window.location.href="/admin/"+id+"/"+deleteFunction;
        });
});

//...................................Delete Multiple Images By sweetAlert...........................


















