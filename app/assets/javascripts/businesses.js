
var sonicstart = sonicstart || {};

sonicstart.rails = sonicstart.rails ||{};

sonicstart.rails.business = sonicstart.rails.business ||{};



sonicstart.rails.business.show_hours = function(){
    $("#hours_form").toggle();
    $("#business_form").toggle();

    if ( $("#hours_form").is(":visible")){
        $("#form_toggle").text("Edit Business Data");
    }else{
        $("#form_toggle").text("Edit Hours of Operation");

    }

};