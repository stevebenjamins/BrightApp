//= require jquery
//= require jquery_ujs
//= require fancybox
//= require_tree .

$(document).ready(function(){
	
	//// Load FancyBox
	$(".fancybox").fancybox({
		maxWidth	: 450,
		maxHeight	: 450,
		fitToView	: false,
		width		: '90%',
		height		: '90%',
		autoSize	: false,
		closeClick	: false,
		openEffect	: 'none',
		closeEffect	: 'none'
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

});