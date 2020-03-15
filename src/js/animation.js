const bg = document.getElementById("image");
bg.addEventListener("mousemove", event => mouseOver(event, bg,10));
  bg.addEventListener("mouseleave", event => {
    gsap.to(bg, 2, { x: 0, y: 0, ease: "elastic.out(1, 0.3)" });
  });
const balloonsArray = [...document.querySelectorAll(".balloon-type")];
balloonsArray.forEach(item => {
  item.addEventListener("mousemove", event => mouseOver(event, item));
  item.addEventListener("mouseleave", event => {
    gsap.to(item, 2, { x: 0, y: 0, ease: "elastic.out(1, 0.3)" });
  });
});
function mouseOver(event, item,value=2) {
  let rect = item.getBoundingClientRect();
  let pX = (event.clientX - rect.left).toFixed();
  let pY = (event.clientY - rect.top).toFixed();
  let targetElement = event.target;
  let cX = targetElement.offsetWidth / 2;
  let cY = targetElement.offsetHeight / 2;
  gsap.to(item, 1, {
    x: (pX - cX) / value,
    y: (pY - cY) / value,
    ease: "power3.out"
  });
}

////////skew animation///////////
const img = document.querySelector(".img-container"),
  text = document.querySelector(".inner-right-wrapper"),
  section = document.querySelectorAll('.section-bg');

let currentPixel = window.pageYOffset;

const looper = function() {
  let newPixel = window.pageYOffset;
  let diff = newPixel - currentPixel;
  let speed = diff * 0.05;
  gsap.to(section, 1, { skewY: speed ,ease: "elastic.out(1, 0.3)"});
  //gsap.to(text, 1, { skewY: speed });
  requestAnimationFrame(looper);
  currentPixel = newPixel;
};
looper();
