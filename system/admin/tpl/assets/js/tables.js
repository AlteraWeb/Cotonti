function tableSearch(ts, inp) {
  var phrase = document.getElementById(inp);
  var table = document.getElementById(ts);
  var regPhrase = new RegExp(phrase.value, 'i');
  var flag = false;
  for (var i = 1; i < table.rows.length; i++) {
    flag = false;
    for (var j = table.rows[i].cells.length - 1; j >= 0; j--) {
      flag = regPhrase.test(table.rows[i].cells[j].innerHTML);
      if (flag) break;
    }
    if (flag) {
      table.rows[i].style.display = "";
    } else {
      table.rows[i].style.display = "none";
    }
  }
}

function tableCheck(n, part) {
  if(part){
    var curr = $('[data-id="'+n+'"][data-part="'+part+'"]').attr("checked") || false;
  }else{
    var curr = $('[data-id="'+n+'"]').attr("checked") || false;
  }
  $('[data-id="'+n+'"]').attr("checked", curr);
  $('[name="' + n + '[]"]').attr("checked", curr);
}