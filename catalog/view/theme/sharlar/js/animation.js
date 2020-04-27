const $$ = document.querySelector.bind(document);
const $on = document.addEventListener.bind(document);
const bg = document.getElementById("image");
const balloonsArray = [...document.querySelectorAll(".balloon-hover")];
const blocks = [...document.querySelectorAll(".img-block")];
const productCardImgs = [
  ...document.querySelectorAll(".product-thumb>.image>a"),
];
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
    x: (pX - cX) / value / 2,
    y: (pY - cY) / value / 2,
    scale: scale,
    ease: "power3.out",
  });
}

////////////////////////Cursor////////////////////////////////////////
let cursor = $$(".cursor");
let posX = 0,
  posY = 0,
  mouseX = 0,
  mouseY = 0;

gsap.to({}, 0.016, {
  repeat: -1,
  onRepeat: function () {
    posX += (mouseX - posX) / 9;
    posY += (mouseY - posY) / 9;
    gsap.to(cursor, {
      css: {
        left: mouseX - cursor.offsetWidth / 2,
        top: mouseY - cursor.offsetHeight / 2,
      },
      ease: Power4.easeOut,
    });
  },
});

document.addEventListener("mousemove", function (e) {
  mouseX = e.pageX;
  mouseY = e.pageY;
});
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
        ease: "elastic.out(1, 0.3)",
      });
    });
  });
  productCardImgs.forEach((item) => {
    item.addEventListener("mousemove", (event) =>
      mouseOver(event, item, 2, 1.1, true)
    );
    item.addEventListener("mouseleave", (event) => {
      gsap.to(item.querySelector("img"), 2, {
        x: 0,
        y: 0,
        scale: 1,
        ease: "elastic.out(1, 0.3)",
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
  productCardImgs.forEach((item) => {
    item.addEventListener("mouseenter", function () {
      cursor.classList.add("active");

      item.addEventListener("mouseleave", function () {
        cursor.classList.remove("active");
      });
    });
  });
}
