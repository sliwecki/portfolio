var cbpAnimatedHeader = (function() {
	var docElem = document.documentElement;
	var	header = document.querySelector('.navbar-default');
	var	didScroll = false;
	var	changeHeaderOn = 200;

	function init() {
		window.addEventListener('scroll', function(event) {
			if(!didScroll) {
				didScroll = true;
				setTimeout(scrollPage, 200);
			}
		}, false);
	}

	function scrollPage() {
		var sy = scrollY();
		if (sy >= changeHeaderOn) {
			classie.add(header, 'navbar-shrink');
		}
		else {
			classie.remove(header, 'navbar-shrink');
		}
		didScroll = false;
	}

	function scrollY() {
		return window.pageYOffset || docElem.scrollTop;
	}

	init();
})();
