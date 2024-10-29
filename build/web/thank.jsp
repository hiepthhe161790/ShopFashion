<!DOCTYPE html>
<html lang="en">
<head>
     <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
    <title>Order Received</title>
      <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />

</head>
<body>
     <%@include file="components/navBarComponent.jsp" %>
   <div class="container my-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="jumbotron bg-light py-5 shadow">
        <h2 class="text-center h1 mb-4 ">YOUR ORDER HAS BEEN RECEIVED</h2>
        <h3 class="text-center h2 mb-4">Thank you for your payment, it's processing</h3>
        <p class="text-center mb-5">You will receive an order confirmation email with details of your order and a link to track your process.</p>
        <div class="text-center">
          <a href="home" class="btn btn-warning btn-lg">CONTINUE</a>
        </div>
      </div>
    </div>
  </div>
</div>

      <%@include file="components/footerComponent.jsp" %>
</body>
</html>
