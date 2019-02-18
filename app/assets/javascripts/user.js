$(document).ready(function(){

  $('#dropdown_country').change(function(){
    $(user_state_id).html("<option> select state </option>");
    var selected_id = $(this).find('option:selected').val();
    $.ajax({
      url: '/users/drop',
      type: "GET",
      async: false,
      data: { "selected_id": selected_id},
      success: function(data) {
        // console.log(data);
        // var myarr = [];
        // for (var i = 0; i < data.length; i++) {
        //   myarr.push( `${data[i].id , data[i].name}`);
        // }
        // $('#dropdown_state').append(`${myarr}`);
        // console.log(myarr);
        $.each(data, function(index, item) {
          console.log(index + ":" + item.name);
          $('#user_state_id').append(`<option value= ${item.id}> ${item.name}</option> `);
        });
        $('#dropdown_state').show();
      },
      error: function(data) {
        alert(data);              
      }
    });
  });
  
  $('#user_state_id').change(function(){
    $(user_city_id).html("<option> select city</option>");
    var city_selected = $(this).find('option:selected').val();
    $.ajax({
      url: '/users/dropy',
      type: "GET",
      async: false,
      data: { "city_selected": city_selected},
      success: function(data) {
        $.each(data, function(index, item) {
          console.log(index + ":" + item.name);
          $('#user_city_id').append(`<option value= ${item.id}> ${item.name}</option> `);
        });
        $('#dropdown_city').show();
      },
      error: function(data) {
        alert(data);              
      }
    });
  });

$('#form-valid').validate({
      rules: {
        "user[name]": {
          required: true
         },
         "user[phone]": {
         	required: true ,
         	minlength: 10,
         	digits: true 
         },
         "user[email]": {
         	required: true ,
         	email: true
         },
          "user[address]": {
         	required: true ,
         	minlength: 10
         },
         "user[country]":{
         	required: true
         }
       },
      messages: {
        "user[name]": {
          required: "name can't be blank"
         	},
        "user[phone]": {
          required: "please enter phone number",
          minlength: "invalid number",
          digits: "phone number must be number"
        },
        "user[email]": {
          required: "email is required",
          email: "must be valid email"
        },
        "user[address]": { 
        	required: "field is mandatory" ,
        	minlength: "length must be greater than 10"
       },
       "user[country]":{
	       required: "country must be selected"
        }
      }
    });

})

