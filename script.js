
      // Sample data
      var records = [
        { id: 1, name: 'Birthday cake',mdate: '20/11/2020', edate: '10/1/2021', price: '10000 FRW' },
        { id: 2, name: 'Graduation cake',mdate: '2/11/2020', edate: '10/12/2020', price: '20000 FRW' },
      ];
      
      // Display records in table
      function displayRecords() {
        var tableBody = document.getElementById('table-body');
        tableBody.innerHTML = '';
        for (var i = 0; i < records.length; i++) {
          var record = records[i];
          var row = '<tr>';
          row += '<td>' + record.id + '</td>';
          row += '<td>' + record.name + '</td>';
          row += '<td>' + record.mdate + '</td>';
          row += '<td>' + record.edate + '</td>';
          row += '<td>' + record.price + '</td>';
          row += '<td class="actions">';
          row += '<button onclick="editRecord(' + record.id + ')">Edit</button>';
          row += '<button onclick="deleteRecord(' + record.id + ')">Delete</button>';
          row += '</td>';
          row += '</tr>';
          tableBody.innerHTML += row;
        }
      }
      
      // Add new record
      function addRecord() {
        var name = document.getElementById('name').value;
        var mdate = document.getElementById('mdate').value;
        var edate = document.getElementById('edate').value;
        var price = document.getElementById('price').value;
        var id = records.length + 1;
        records.push({ id: id, name: name, mdate: mdate , edate: edate , price: price});
        displayRecords();
        resetForm();
      }
      
      // Edit record
      function editRecord(id) {
        var record = records.find(function (record) { return record.id === id; });
        if (record) {
          document.getElementById('name').value = record.name;
          document.getElementById('mdate').value = record.mdate;
          document.getElementById('edate').value = record.edate;
          document.getElementById('price').value = record.price;
          var addButton = document.createElement('input');
          addButton.type = 'button';
          addButton.value = 'Save';
          addButton.onclick = function () {
            record.name = document.getElementById('name').value;
            record.name = document.getElementById('mdate').value;
            record.name = document.getElementById('edate').value;
            record.email = document.getElementById('price').value;
            displayRecords();
            resetForm();
          };
          var formContainer = document.getElementById('form-container');
          formContainer.replaceChild(addButton, formContainer.childNodes[2]);
        }
      }
      
      // Delete record
      function deleteRecord(id) {
        var index = records.findIndex(function (record) { return record.id === id; });
        if (index !== -1) {
          records.splice(index, 1);
          displayRecords();
        }
      }
      
      // Reset form
      function resetForm() {
        document.getElementById('name').value = '';
        document.getElementById('mdate').value = '';
        document.getElementById('edate').value = '';
        document.getElementById('price').value = '';
        var addButton = document.createElement('input');
        addButton.type = 'button';
        addButton.value = 'Add';
        addButton.onclick = function () {
          addRecord();
        };
        var formContainer = document.getElementById('form-container');
        formContainer.replaceChild(addButton, formContainer.childNodes[2]);
      }
      
      // Initialize
      displayRecords();
      