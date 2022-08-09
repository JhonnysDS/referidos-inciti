$(function() {
	// Menu Tabular
	let menu_tabs = $('.menu__tabs li a'); 
	menu_tabs.on('click', function() {
		let itemValue = $(this).data("item");
		menu_tabs.removeClass('active');
		$(this).addClass('active');

		$('.menu__item').fadeOut(100);
		$(itemValue).delay(100).fadeIn();
	});
});