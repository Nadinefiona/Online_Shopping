<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<link rel="stylesheet" href="graph.css">
</head>

<body>
    <div class="navbar">
        <h1>Online Shopping and Delivery</h1>
     </div>
<div class="page">
    <div><canvas id="cookieChart" style="width:100%;max-width:600px;margin-left: 20rem;margin-top: 5rem;"></canvas></div>
    <div><button><a href="dashboard.php">Back</a></button> </div>
</div>

<script>
    
var xValues = ["customers", "new customers", "All products", "products booked", "new products"];
var yValues = [ 55, 34, 95, 24, 15];
var barColors = ["red", "green","blue","orange","brown"];

new Chart("cookieChart", {
  type: "bar",
  data: {
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  },
  options: {
    legend: {display: false},
    title: {
      display: true,
      text: "Statistics of products and customers"
    }
  }
});
</script>

</body>
</html>
