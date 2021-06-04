const plain = [...document.querySelectorAll(".plain")],
startImg = document.getElementById('start-img');

let tl = new gsap.timeline();
window.onload = ()=>{
  tl
  .to(startImg,0.6,{scale:1.1,ease:Power4.easeOut})
  .to(plain,1.5,{y:"-150%", ease: Power4.easeOut,delay:0,stagger:0.1})
  let scene = document.getElementById('scene');
		let parallax = new Parallax(scene);
}
