<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="addproduct.css">
</head>
<body>
    <div class="navbar">
        <h1>Online Shopping and Delivery</h1>
     </div>
     <div id="crud-container">
      <form id="form-container">
            <label for="">product name</label>
            <input type="text" name="" id="name"/></br>
            <label for="">manufactured Date</label>    
            <input type="text" name="" id="mdate"/></br>
            <label for="">expired date</label>    
            <input type="text" name="" id="edate"/></br>
            <label for="">product price</label>    
            <input type="text" name="" id="price"/></br>
            <input type="button" value="Add" onclick="addRecord()">
            <a href="dashboard.php"><input type="button" value="Back"></a>
      </form>
      <table id="table-container">
        <thead>
          <tr>
            <th>id</th>
            <th>name</th>
            <th>mdate</th>
            <th>edate</th>
            <th>price</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody id="table-body"></tbody>
      </table>
    </div>
    <script src="script.js"></script>
</body>
</html>