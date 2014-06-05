// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require forem
//= require_tree .

var ready;
ready = function() {
	
	function spreadNavs() {
		var navbar_left = $('#navbar_left').width();
		var navbar_right = $('#navbar_right').width();
		var navbar_LCL = $('#navbar_left ul').children().length;
		var navbar_RCL = $('#navbar_right ul').children().length;
		//divide the widths by the number of sub elements
		var navbar_element_left = navbar_left / navbar_LCL;
		var navbar_element_right = navbar_right / navbar_RCL;
		//subtract some for padding
		navbar_element_left -= 10 * navbar_LCL;
		navbar_element_right -= 10 * navbar_RCL;
		//set each element to the computed width and set the padding
		$('#navbar_left ul').children().each(function() {
			$(this).css({
				width: navbar_element_left,
				padding: "5px"
			});
		});
		$('#navbar_right ul').children().each(function() {
			$(this).css({
				width: navbar_element_right,
				padding: "5px"
			});
		});
	}

	spreadNavs();

	//detect if a slideshow is present
	if ($('#slider1_container').length != 0) {
		setUpSlideshow();
	}

}

function setUpSlideshow() {
	//find the width of the parent, so the slideshow will match it
	var parent_width = $('#slideshow').width();
	var parent_height = $('#slideshow').height();
	$('#slider1_container').css({
		width:parent_width,
		height:parent_height
	});
	$('div[u=slides]').css({
		width:parent_width,
		height:parent_height
	});
	//center the bullets
	var orbposition = (parent_width/2)-$('.jssorb1').width();
	$('div[u=navigator]').css({
		left:orbposition
	});

	var options = { 
		$Autoplay: true,
		$FillMode: 2,
		$BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$,
                $ChanceToShow: 2
            }
	};
	var jssor_slider1 = new $JssorSlider$('slider1_container',options);

	//responsive code begin
        //you can remove responsive code if you don't want the slider scales
        //while window resizes
        function ScaleSlider() {
            var parentWidth = $('#slider1_container').parent().width();
            if (parentWidth) {
                jssor_slider1.$SetScaleWidth(parentWidth);
            }
            else
                window.setTimeout(ScaleSlider, 30);
        }
        //Scale slider after document ready
        ScaleSlider();
        if (!navigator.userAgent.match(/(iPhone|iPod|iPad|BlackBerry|IEMobile)/)) {
            //Capture window resize event
            $(window).bind('resize', ScaleSlider);
        }
        //responsive code end
}

$(document).ready(ready);
$(document).on('page:load', ready);