
function submitForm(event) {
  event.preventDefault() ;

  // Get form data
  var form = event.target;
  var data = new FormData(form);

  // Send form data to server using XMLHttpRequest
  var xhr = new XMLHttpRequest();
  xhr.open('POST', 'script.sh', true);
  xhr.onload = function() {
    // Handle server response here
  };
  xhr.send(data);
}

