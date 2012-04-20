// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery-1.7.1.min.js
//= require jquery_ujs
//= require kendo.all.min.js
//= require bootstrap


$(document).ready(function() {
	
	
	
	
//  Modal Window 
	$(function(){
	  var $modal = $('#modal'),
	      $modal_close = $modal.find('.close'),
	      $modal_container = $('#modal-container');


	  // This bit can be confusing. Since Rails.js sends an accept header asking for
	  // javascript, but we want it to return HTML, we need to override this instead.
	  $('a[data-remote]').bind('ajax:beforeSend', function(e, xhr, settings){
	    xhr.setRequestHeader('accept', '*/*;q=0.5, text/html, ' + settings.accepts.html);
	  });

	  // Handle modal links with the data-remote attribute
	  $('a[data-remote]').bind('ajax:success', function(xhr, data, status){
	    $modal
	      .html(data)
	      .prepend($modal_close)
	      .css('top', $(window).scrollTop() + 40)
	      .show();
	    $modal.fadeIn("fast");	    
	    $modal_container.fadeIn("fast");

	  });

	  // Hide close button click
	  $('.close', '#modal').live('click', function(){
	    $modal_container.hide();
	    $modal.hide();

	  });	 


	});

});