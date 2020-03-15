const plain = document.getElementById('plain'),
plain2 = document.getElementById('plain-2'),
bounce = document.getElementById('bounce'),
startImg = document.getElementById('start-img');
let tl = new gsap.timeline();
document.addEventListener("DOMContentLoaded", ()=>{
  tl
  .from(startImg,2,{scale:0.7,ease:Power4.easeOut,delay:0.5})
  .to([plain,plain2],2,{y:"-100%", ease: Power4.easeOut,delay:0,stagger:0.08})
  .from(bounce,1.5,{scale:1.2,x:0,opacity:0.8,ease: Power4.easeOut,delay:-2})
})
//Elastic.easeOut.config(1, 0.3)