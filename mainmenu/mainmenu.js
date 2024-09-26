jQuery(document).ready(function () {
	//Calculate height of top level menu and set top style for menu placement
	jQuery('ul.mainmenu li .sub').css('top', jQuery('ul.mainmenu > li').height());

	// set hover class to parent item
	jQuery('li.level0 div').mouseover(function () {
		jQuery(this).closest('li.level0').find('a.level0').addClass("menuhover")
	}).mouseout(function () {
		jQuery(this).closest('li.level0').find('a.level0').removeClass("menuhover")
	});

	function megaHoverOver() {
		jQuery(this).find(".sub").stop().fadeTo('slow', 1).show();
	}

	function megaHoverOut() {
		jQuery(this).find(".sub").stop().fadeTo('slow', 0, function () {
			jQuery(this).hide();
		});
	}

	var config = {
		sensitivity: 2, // number = sensitivity threshold (must be 1 or higher)
		interval: 10, // number = milliseconds for onMouseOver polling interval
		over: megaHoverOver, // function = onMouseOver callback (REQUIRED)
		timeout: 10, // number = milliseconds delay before onMouseOut
		out: megaHoverOut // function = onMouseOut callback (REQUIRED)
	};

	jQuery("ul.mainmenu li .sub").css({ 'opacity': '0' });
	jQuery("ul.mainmenu li").hoverIntent(config);

});


