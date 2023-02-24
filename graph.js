
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