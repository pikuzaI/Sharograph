const balloonsArray = [...document.querySelectorAll(".balloon-hover")];
const blocks = [...document.querySelectorAll(".img-block")];


function mouseOver(event, item, value = 2, scale = 1.2, imageOnly = false) {
  let rect = item.getBoundingClientRect();
  let pX = (event.clientX - rect.left).toFixed();
  let pY = (event.clientY - rect.top).toFixed();
  let targetElement = event.target;
  let cX = targetElement.offsetWidth / 2;
  let cY = targetElement.offsetHeight / 2;
  if (imageOnly === false) {
    gsap.to(item, 1, {
      x: (pX - cX) / value,
      y: (pY - cY) / value,
      ease: "power3.out",
    });
  }
  gsap.to(item.querySelector("img"), 1, {
    x: (pX - cX) / value / 2.5,
    y: (pY - cY) / value / 2.5,
    scale: scale,
    ease: "power3.out",
  });
}

const balloonsURIS = [...document.querySelectorAll(".cursor-change")];
if (window.innerWidth > 1440) {
  
  balloonsArray.forEach((item) => {
    item.addEventListener("mousemove", (event) =>
      mouseOver(event, item, 2, 1.2, false)
    );
    item.addEventListener("mouseleave", (event) => {
      gsap.to(item, 2, { x: 0, y: 0, ease: "elastic.out(1, 0.3)" });
      gsap.to(item.querySelector("img"), 2, {
        x: 0,
        y: 0,
        scale: 1,
        ease: "elastic.out(1, 0.6)",
      });
    });
  });

  balloonsURIS.forEach((item) => {
    item.addEventListener("mouseenter", function () {
      cursor.classList.add("active");

      item.addEventListener("mouseleave", function () {
        cursor.classList.remove("active");
      });
    });
  });
}

