const plain = [...document.querySelectorAll(".plain")],
bounce = document.getElementById('bounce'),
startImg = document.getElementById('start-img'),
menuTop = document.querySelector('.interface'),
menuBottom = document.querySelector('.menu'),
section= document.getElementById('section-1'),
panWrapper = document.querySelector('.pan-wrapper'),
sectionBG = document.querySelector('.section-1-bg'),
heroImg = document.querySelector('.hero-image'),
balloon = document.querySelector('.parallax-el'),
airLogo = document.querySelector('.air-logo');
let tl = new gsap.timeline();
window.onload = ()=>{
  disableScroll();
  tl
  .to(startImg,1,{scale:1.2,ease:Power4.easeOut})
  .to(plain,1,{y:"-100%", ease: Power4.easeOut,delay:0,stagger:0.1})
  .to(sectionBG,1,{'-webkit-filter':'blur('+(10)+'px)', 'filter':'blur('+(10)+'px)',ease: Power4.easeOut})
  .to(heroImg,1,{scale:0.7,ease: Power4.easeOut,delay:-1})
  //.from(menuTop,2,{y:"-100%",ease: Power4.easeOut,delay:-1.7})
  // .from(balloon,.7,{y:800,ease: Power2.easeOut,})
  // .from(airLogo,1,{y:1000,ease: Power2.easeOut,onComplete:enableScroll})
  .from([balloon,airLogo],1,{ y:800, autoAlpha:0, ease: Power2.easeOut, stagger:0.3,delay:-1,onComplete:enableScroll})
}
window.onbeforeunload = function () {
  if(sectionBG){
    window.scrollTo(0, 0);
  }
  
}
function disableScroll() { 
  if(sectionBG){
  document.body.classList.add("stop-scrolling"); 
  }
} 
function enableScroll() { 
  document.body.classList.remove("stop-scrolling"); 
} 
//Elastic.easeOut.config(1, 0.3)