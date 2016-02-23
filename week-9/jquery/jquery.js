// U3.W9:JQuery


// I worked on this challenge [by myself, with: ].
// This challenge took me [#] hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css({'background-color': 'pink'})

//RELEASE 2:
  //Add code here to select elements of the DOM

bodyElement = $('body');
h1Element = $('h1');
headerElement  = $('header');
mascotClass = $('.mascot');
logoElement = $('.mascot img');

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

mascotClass.css({'border': '2px solid #000'})
logoElement.css({'border': '3px dashed #000'})

cohort = $('.mascot h1')
cohort.html()

//RELEASE 4: Event Listener
  // Add the code for the event listener here

$('img').mouseover(function(){
    $(this).attr('src', 'YOUR IMAGE URL')
  })

//RELEASE 5: Experiment on your own

<!-- logoElement.hover( function() {
  $('.mascot img').replaceWith("<img src='poop.jpg' alt='It is Poop'/>")
}, function() {
  $('.mascot img').after("<img src='dbc_logo.png' alt='Real DBC logo' />")
}) -->

    $('.mascot img').hover(function () {
        this.src = 'poop.jpg';
    }, function () {
        this.src = 'dbc_logo.png';
    });





})  // end of the document.ready function: do not remove or write DOM manipulation below this

/*
What is jQuery?
[RS] Jquery is a javascript library.

What does jQuery do for you?
[RS] It makes accessing DOM more simple and easy.

What did you learn about the DOM while working on this challenge?
[RS] I learned jquery methods for accessing and manipulating elements.

*/