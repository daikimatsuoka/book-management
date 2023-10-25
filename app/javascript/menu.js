window.addEventListener('load', function(){
  const menu1 = document.getElementsByClassName("right-btn")[0];
  const menu2 = document.getElementsByClassName("left-btn")[0];

  menu1.addEventListener('mouseover', function(){
    menu1.setAttribute("style", "background-color:#69b076;")
  });

  menu1.addEventListener('mouseout', function(){
    menu1.removeAttribute("style")
  });

  menu2.addEventListener('mouseover', function(){
    menu2.setAttribute("style", "background-color:#69b076;")
  });

  menu2.addEventListener('mouseout', function(){
    menu2.removeAttribute("style")
  });
});
