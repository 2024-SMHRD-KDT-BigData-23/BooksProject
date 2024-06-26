(function($) {
	"use strict";

	// Spinner
	var spinner = function() {
		setTimeout(function() {
			if ($('#spinner').length > 0) {
				$('#spinner').removeClass('show');
			}
		}, 1);
	};
	spinner(0);


	// Fixed Navbar
	$(window).scroll(function() {
		if ($(window).width() < 992) {
			if ($(this).scrollTop() > 55) {
				$('.fixed-top').addClass('shadow');
			} else {
				$('.fixed-top').removeClass('shadow');
			}
		} else {
			if ($(this).scrollTop() > 55) {
				$('.fixed-top').addClass('shadow').css('top', -55);
			} else {
				$('.fixed-top').removeClass('shadow').css('top', 0);
			}
		}
	});


	// Back to top button
	$(window).scroll(function() {
		if ($(this).scrollTop() > 300) {
			$('.back-to-top').fadeIn('slow');
		} else {
			$('.back-to-top').fadeOut('slow');
		}
	});
	$('.back-to-top').click(function() {
		$('html, body').animate({ scrollTop: 0 }, 1500, 'easeInOutExpo');
		return false;
	});

	// Modal Video
	$(document).ready(function() {
		var $videoSrc;
		$('.btn-play').click(function() {
			$videoSrc = $(this).data("src");
		});
		console.log($videoSrc);

		$('#videoModal').on('shown.bs.modal', function(e) {
			$("#video").attr('src', $videoSrc + "?autoplay=1&amp;modestbranding=1&amp;showinfo=0");
		})

		$('#videoModal').on('hide.bs.modal', function(e) {
			$("#video").attr('src', $videoSrc);
		})
	});



	// Product Quantity
	$('.quantity button').on('click', function() {
		var button = $(this);
		var oldValue = button.parent().parent().find('input').val();
		if (button.hasClass('btn-plus')) {
			var newVal = parseFloat(oldValue) + 1;
		} else {
			if (oldValue > 0) {
				var newVal = parseFloat(oldValue) - 1;
			} else {
				newVal = 0;
			}
		}
		button.parent().parent().find('input').val(newVal);
	});

})(jQuery);

// 슬라이드 시작

var swiper = new Swiper(".mySwiper", {
	slidesPerView: 5,
	spaceBetween: 30,
	loop: true,
	autoplay: {
		delay: 2500,
		disableOnInteraction: false,
	},
	pagination: {
		el: ".swiper-pagination",
		clickable: true,
	},
});

// 슬라이드 끝

// 회원가입 js코드

window.addEventListener('load', () => {
	const forms = document.getElementsByClassName('validation-form');

	Array.prototype.filter.call(forms, (form) => {
		form.addEventListener('submit', function(event) {
			if (form.checkValidity() === false) {
				event.preventDefault();
				event.stopPropagation();
			}

			form.classList.add('was-validated');
		}, false);
	});
}, false);

// 회원가입 끝