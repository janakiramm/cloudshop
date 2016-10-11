 $(document).ready(function() {
 
	// Search
	
	$('#header-links input[name=\'filter_name\']').keydown(function(e) {
		if (e.keyCode == 13) {
			url = 'index.php?route=product/search';
			 
			var filter_name = $('input[name=\'filter_name\']').attr('value')
			
			if (filter_name) {
				url += '&filter_name=' + encodeURIComponent(filter_name);
			}
			
			location = url;
		}
	});
	
	// Header Links & Currency Animation
	
	$("#header-links li a, #currency a").hover(function() {
		$(this).stop().animate({"color":"#222"}, 800);
	},function() {
		$(this).stop().animate({"color":"#888"}, 800);
	});	
	
	//Product Box Opacity Focus
	$(".box-product > div, .product-list > div, .product-grid > div").hover(function() {
		$(this).siblings().stop().fadeTo(400,0.4);
	}, function() {
		$(this).siblings().stop().fadeTo(400,1);
	});
	
	
	// Menu Effect
	
	$("#menu > ul > li > div").hide();		
	
	$("#menu > ul > li").hover(function () {
		$(this).children('div').stop(true, true).slideDown('medium', function() {
		// Animation complete.
		});
	},
	function () {
		$(this).children('div').stop(true, true).fadeOut('fast', function() {
		// Animation complete.
		});   
	});

	$("#menu li:has(ul)").find("a:first").append(
		'&nbsp;&nbsp;<img src="catalog/view/theme/simply-minimal-cinnabar1-rounded/image/arrow-down.png" />'
	);
	
	$("#footer .column ul li").hover(function() {
		$(this).stop().animate({"margin-left":"10px"}, 800);
	},function() {
		$(this).stop().animate({"margin-left": "0px" }, 800);
	});
	
	$(".box > .box-content > ul > li > a, .box-category > ul > li > a").hover(function() {
		$(this).stop().animate({"text-indent":"5px"}, 800);
	},function() {
		$(this).stop().animate({"text-indent": "0px" }, 800);
	});
	
	$(".box-category > ul > li ul > li > a").hover(function() {
		$(this).stop().animate({"text-indent":"5px"}, 800);
	},function() {
		$(this).stop().animate({"text-indent": "12px" }, 800);
	});
	
 });