let count = 1;
document.getElementById("radio1").checked = true;

setInternal(function (){
  nextImage();
}, 2000);

function nextImage(){
  count++;
  if(count>4){
    count = 1;
  }

  document.getElementById("radio"+count).checked = true;
}
