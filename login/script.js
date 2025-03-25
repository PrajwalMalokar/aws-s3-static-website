// Toggle between Login and Registration forms
document.getElementById("signupLink").addEventListener("click", function(event) {
    event.preventDefault();  // Prevent the default anchor behavior
    document.getElementById("loginForm").style.display = "none";
    document.getElementById("registerForm").style.display = "block";
  });
  
  document.getElementById("loginLink").addEventListener("click", function(event) {
    event.preventDefault();  // Prevent the default anchor behavior
    document.getElementById("registerForm").style.display = "none";
    document.getElementById("loginForm").style.display = "block";
  });
  
  // Validation for Login
  function validateLogin() {
    var username = document.getElementById("loginUsername").value;
    var password = document.getElementById("loginPassword").value;
    var errorMessage = document.getElementById("loginErrorMessage");
  
    if (username === "user" && password === "pass123") {
      alert("Login successful!");
      return true;
    } else {
      errorMessage.innerText = "Invalid username or password!";
      return false;
    }
  }
  
  // Validation for Registration
  function validateRegister() {
    var username = document.getElementById("regUsername").value;
    var email = document.getElementById("regEmail").value;
    var password = document.getElementById("regPassword").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var errorMessage = document.getElementById("registerErrorMessage");
  
    if (password !== confirmPassword) {
      errorMessage.innerText = "Passwords do not match!";
      return false;
    }
  
    if (username && email && password) {
      alert("Registration successful!");
      return true;
    } else {
      errorMessage.innerText = "Please fill in all fields!";
      return false;
    }
  }
  