$(function(){


	$('.nav-link').on('click',function(e){
		
		e.preventDefault();

		//get browser url
		var url = window.location.href;

		var hashPos = url.search('#');
		if(hashPos > -1){
			url = url.substr(0,hashPos);
		}

		var href = $(this).attr('href');
		hashPos = href.search('#');
		var slug = '';
		if(hashPos > -1){

			slug = href.substr(hashPos);
			href = href.substr(0,hashPos);
		}
		
		if(url == href && slug != ''){
		
			e.preventDefault();
			var target = $(slug).offset().top;
			$('html,body').animate({scrollTop:target},1000);
		}


	});
});
