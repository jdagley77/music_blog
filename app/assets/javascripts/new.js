$( document ).ready(function() {
	visible = true
	$button = $(".login-link")
	$login = $("#login-pop")

	$button.click(function{
		if (visible) {
			$login.slideUp('fast', function(){
				$login.addClass('hide')
				.slideDown(0);
			})
		} else {
			$login.slideUp(0, function(){
				$login.removeClass('hide')
				.slideDown('fast');
			})
		}
});

	

