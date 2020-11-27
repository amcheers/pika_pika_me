
const stickyHeader = () => {
  // When the user scrolls the page, execute myFunction
  window.onscroll = function() {myFunction()};

  // Get the navbar
  var navbar = document.getElementById("navbar");

  // Add the sticky class to the navbar when you reach its scroll position. Remove "sticky" when you leave the scroll position
  function myFunction() {
    if (window.pageYOffset >= 0) {
      navbar.classList.remove("transparant")
    } else {
      navbar.classList.add("transparant");
    }
  }
}


