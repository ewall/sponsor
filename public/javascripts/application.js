// AJAX pagination support via jQuery
$(function() {
  $('.pagination a').live('click', function(e) {
    $(this).parent('.pagination')
           .append("<img src='/images/spinner.gif' class='spinner' />");
		//$.get(this.href, null, null, 'script');
		$.getScript(this.href);
    return false;
  });
});
