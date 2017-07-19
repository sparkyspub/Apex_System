var table_data = [ { first_name : 'Rose',
                     last_name  : 'Tyler',
                     home       : 'Earth' },
                   { first_name : 'Zoe',
                     last_name  : 'Heriot',
                     home       : 'Space Station W3'},
                   { first_name : 'Jo',
                     last_name  : 'Grant',
                     home       : 'Earth'},
                   { first_name : 'Leela',
                     last_name  : null,
                     home       : 'Unspecified'},
                   { first_name : 'Romana',
                     last_name  : null,
                     home       : 'Gallifrey'},
                   { first_name : 'Clara',
                     last_name  : 'Oswald',
                     home       : 'Earth'},
                   { first_name : 'Adric',
                     last_name  : null,
                     home       : 'Alzarius'},
                   { first_name : 'Susan',
                     last_name  : 'Foreman',
                     home       : 'Gallifrey'} ];

function displayTable(persons){
  var table = document.getElementById('nameTable');

// Going through table_data array
  for(var i = 0; i < persons.length; i++){
    var person = persons[i];
    var row = document.createElement('tr');
    var properties = ['first_name', 'last_name', 'home'];

// Going through key values of object
    for(var j = 0; j < properties.length; j++){
      var cell = document.createElement('td');
      console.log(person[properties[j]]);
      cell.innerHTML = person[properties[j]];
      if(person[properties[j]] == null || person[properties[j]] === 'Unspecified'){
        cell.innerHTML = ("N/A");
      }
      row.appendChild(cell);
    }
    table.appendChild(row);
  }
}
displayTable(table_data);
