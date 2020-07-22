const $$ = document.querySelector.bind(document);
const $on = document.addEventListener.bind(document);
const bg = document.getElementById("image");
const balloonsArray = [...document.querySelectorAll(".balloon-hover")];
const blocks = [...document.querySelectorAll(".img-block")];
const productCardImgs = [
  ...document.querySelectorAll(".product-thumb>.image>a"),
];
const menu=document.querySelector(".menu-hide");
menu.style.top = menu.dataset.menuType==="home" ? 0 +"px" : -100 +"px";
//////////////////////////////////////MENU///////////////////////////////////////
var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  let currentScrollPos = window.pageYOffset;
  let n = 0; 
  n=menu.dataset.menuType==="home" ? 0 : 200;
  if (prevScrollpos > currentScrollPos && currentScrollPos >= n) {
    menu.style.top = "0"; 
  } else {
    menu.style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
}
///////////////////////////////////////MENU//////////////////////////////////////
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
/////////////////////////////////CART////////////////////////////////////
let cartMenu = $$('.cart-menu-wrapper'),
cartBG = $$('.cart-menu-bg'),
cartTrigger = $$('.cart-button'),
cartClose = $$('.cart-close');
cartMenu.style.borderRadius = "0%";
let showCart = false;
cartClose.addEventListener('click',toggleCart);
cartBG .addEventListener('click',toggleCart);
cartTrigger.addEventListener('click',toggleCart);
function toggleCart(){
  showCart=!showCart;
  cartMenu.style.right = showCart === true ? "0" : "-150%";
  cartMenu.style.borderRadius = showCart === true ? "0px" : "100%";
  cartBG.style.display = showCart === true ? "block" : "none";

}

////////////////////////Cursor////////////////////////////////////////
let cursor = $$(".cursor"),
 posX = 0,
  posY = 0,
  mouseX = 0,
  mouseY = 0;
cursor.style.display = window.innerWidth > 1440? 'block':'none';


document.addEventListener("mousemove", function (e) {
  mouseX = e.pageX;
  mouseY = e.pageY;

});
const balloonsURIS = [...document.querySelectorAll(".cursor-change")];
if (window.innerWidth > 1440) {
  gsap.to({}, 0.016, {
    repeat: -1,
    onRepeat: function () {
      posX += (mouseX - posX)/20;
      posY += (mouseY - posY)/20;
      gsap.to(cursor,0.18, {
        css: {
          left: mouseX - cursor.offsetWidth / 2,
          top: mouseY - cursor.offsetHeight / 2,
        },
      });
    },
  });
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

///////////////////////button listeners///////////////////////
let filter = $$('.filter-wrapper'),
  close = $$('.close-filter'),
  filterBackground = $$('.filter-background'),
  open = $$('.show-filter');
let show = false;

close.addEventListener('click',toggleMenu);
filterBackground .addEventListener('click',toggleMenu);
open.addEventListener('click',toggleMenu);
function toggleMenu(){
  show=!show;
  filter.style.left = show === true ? "0" : "-100%";
  filterBackground.style.left = show === true ? "0" : "-100%";
  filterBackground.style.opacity = show === true ? "1" : "0";
}
