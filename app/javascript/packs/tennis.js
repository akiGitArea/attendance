jQuery(document).ready(function( $ ) {
	$('a[href="#hello"]').click(function() {
	  // スクロールの速度
	  let speed = 400; // ミリ秒で記述
	  let href = $(this).attr("href");
	  let target = $(href == "#" || href == "" ? 'html' : href);
	  let position = target.offset().top;
	  $('body,html').animate({
	    scrollTop: position
	  }, speed, 'swing');
	  return false;
	});
	$('a[href="#green"]').click(function() {
	  // スクロールの速度
	  let speed = 400; // ミリ秒で記述
	  let href = $(this).attr("href");
	  let target = $(href == "#" || href == "" ? 'html' : href);
	  let position = target.offset().top;
	  $('body,html').animate({
	    scrollTop: position
	  }, speed, 'swing');
	  return false;
	});
	$('a[href="#portfolio"]').click(function() {
	  // スクロールの速度
	  let speed = 400; // ミリ秒で記述
	  let href = $(this).attr("href");
	  let target = $(href == "#" || href == "" ? 'html' : href);
	  let position = target.offset().top;
	  $('body,html').animate({
	    scrollTop: position
	  }, speed, 'swing');
	  return false;
	});
	$('a[href="#contact"]').click(function() {
	  // スクロールの速度
	  let speed = 400; // ミリ秒で記述
	  let href = $(this).attr("href");
	  let target = $(href == "#" || href == "" ? 'html' : href);
	  let position = target.offset().top;
	  $('body,html').animate({
	    scrollTop: position
	  }, speed, 'swing');
	  return false;
	});
});