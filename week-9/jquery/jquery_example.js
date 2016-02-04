// U3.W9:JQuery


// I worked on this challenge with Emily Bosakowski
// This challenge took me 1.5 hours.

$(document).ready(function(){

//RELEASE 0:
  //link the image

//RELEASE 1:

  //Link this script and the jQuery library to the jQuery_example.html file and analyze what this code does.

$('body').css('background-color', 'pink')

//RELEASE 2:
  //Add code here to select elements of the DOM
bodyElement = $('body')

//RELEASE 3:
  // Add code here to modify the css and html of DOM elements

$('h1:first').css({'color':'green'})
$('h1:first').css({'border-bottom':'2px blue dotted'})
$('h1:first').css({'visibility':'visible'})
$('h1:eq(1)').html('Fiddler Crabs')

//RELEASE 4: Event Listener
  // Add the code for the event listener here
  /*
	My computer has a touchscreen and apparently they can't tell when you're mousing over an element or 
	hovering. So I used 'click' and 'dblclick' instead.
  */
$('img').on('click', function(e){
    e.preventDefault()
    $(this).attr('src', 'http://www.animalstown.com/animals/f/fiddler-crab/fiddler-crab-image-01.jpg')
  })

$('img').on('dblclick', function(e){
    e.preventDefault()
    $(this).attr('src','dbc_logo.png')
  })

//RELEASE 5: Experiment on your own
$('div').append('<button>Click me!</button>');
$('button').click(function(){
  $('img').attr('src', 'http://www.animalstown.com/animals/f/fiddler-crab/fiddler-crab-image-01.jpg');
  $('img').height("600px");
  $('img').width("775px");
  $('body').css('background-color','orange');
  $('h1:first').css('border-bottom','5px white double');
  $(this).html("Double-click me!");
});
$('button').dblclick(function(){
	$('img').attr('src', 'dbc_logo.png');
	$('img').height("37px");
    $('img').width("220px");
    $('body').css('background-color','pink');
    $('h1:first').css('border-bottom', '2px blue dotted');
    $(this).html("Click me!");
})

})

/*
REFLECITON:

What is jQuery?
  jQuery allows you to manipulate elements on an HTML document based on events. You can
  change elements as the page loads (the 'ready' in line 7) or upon the occurence of other
  events, such as the user clicking on an element, as in lines 36, 41, 48 and 56.

What does jQuery do for you?
  It enables you to build interactive web pages that are responsive to user actions.

What did you learn about the DOM while working on this challenge?
  I learned about the nodes and navigating among them and about how to identify elements within
  an HTML document so I could mess with them.

*/
