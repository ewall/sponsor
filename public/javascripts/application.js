// AJAX pagination support with will_paginate and jQuery; history fix via jQuery-BBQ

baseurl = location.protocol + '//' + location.host + location.pathname;

$(function() {
  $('.pagination a').live('click', function(e) { 
    params = $.deparam.querystring(this.href);
		new_url = $.param.fragment(baseurl, params, 2);
		$(this).parent('.pagination').append("<img src='/images/spinner.gif' class='spinner' />"); // show loading spinner
			location.hash = $.param.fragment( new_url ); // set the new hash, which will trigger the hashchange event
		return false;
  });
});

$(window).bind( 'hashchange', function(e) {
	params = e.fragment; // pre-jQuery1.4: $.deparam.fragment(document.location.href);
	$.getScript( $.param.querystring(baseurl, params) );
});

if (location.hash) {
  $(window).trigger( 'hashchange' );
}
