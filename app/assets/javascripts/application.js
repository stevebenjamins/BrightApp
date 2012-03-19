//= require jquery
//= require jquery_ujs
//= require hoverintent
//= require fancybox
//= require_tree .

$(document).ready(function(){

	//// Load FancyBox
	$(".fancybox").fancybox({
		maxWidth	: 600,
		maxHeight	: 450,
		fitToView	: false,
		width		: '90%',
		height		: '90%',
		autoSize	: false,
		closeClick	: false,
		padding		: 7,
		openEffect	: 'none',
		closeEffect	: 'none',
		closeBtn 	: false,
		scrolling	: 'auto'
	});

	
	//// Account Dropdown
	$("a#account").click(function(){ 
		if ($("ul#account ul").is(":hidden"))
		{ 
			$("a#account").addClass('active'); 
		}else{ 
			$("a#account").removeClass('active');	 
		}
		$("ul#account ul").toggle()
	});
	
	/// Drawer Toggle
	
	$("#drawer_toggle").click(function(){ 
		$("#drawer").slideToggle();
	});
	
	/// Advanced Options Toggle
	$('a#advanced').live("click", function(){
	  	$('fieldset.advanced li').toggle();
	});
	
	/// Close FancyBox
	$('#closebutton').live("click", function(){
	  	$.fancybox.close();
	});

	/// Show Element Toolbar (with a delay)
	$(".element").live({
	       mouseenter:
	           function()
	           {
				  $("p.meta", this).doTimeout( 'hover', 0, 'fadeIn', 'fast' );
	           },
	        mouseleave:
	           function()
	           {
				  $("p.meta", this).doTimeout( 'hover', 250, 'fadeOut', 'fast' );
	           }
	       }
	    );
	
	
});