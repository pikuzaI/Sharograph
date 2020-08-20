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
  .to(startImg,0.6,{scale:1.2,ease:Power4.easeOut})
  .to(plain,1.5,{y:"-150%", ease: Power4.easeOut,delay:0,stagger:0.1})
  let scene = document.getElementById('scene');
		let parallax = new Parallax(scene);
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
