$(document).ready(function() {
	$('form.vote input.vote').on('click', function(e) {
		e.preventDefault();
		var post_id = $(this).parent().attr('class')
		$(this).parent().hide();

		$.ajax( {
			url: "/postvotes/new",
			method: "post",
			data: { value: post_id }
		})
		.done(function (data) {
			console.log("Hey you just upvoted this post")
		});
	});
});