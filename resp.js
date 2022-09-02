var testo = document.getElementById('testo');
var button = document.getElementById('VediTraduzione');
var testo2 = document.getElementById('testo2');
var button2 = document.getElementById('VediTraduzione2');

button.addEventListener('click', function(){
    testo.classList.toggle('hidden');
    if (button.innerHTML == "see_less"){
        button.innerHTML = "see_more";
      }else{
        button.innerHTML = "see_less";
        }
    });

button2.addEventListener('click', function(){
  testo2.classList.toggle('hidden');
  if(button2.innerHTML =="see_less"){
    button2.innerHTML = "see_more";
  }else{
    button2.innerHTML = "see_less";
  }
});


