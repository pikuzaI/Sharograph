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
  cartMenu.style.transform = showCart === true ? "translate(0%,-50%)" : "translate(110%,-50%)";
  cartMenu.style.borderRadius = showCart === true ? "20px" : "100%";
  cartBG.style.display = showCart === true ? "block" : "none";

}
///////////////////////Filter///////////////////////
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
  filter.style.transform = show === true ? "translate(0%,-50%)" : "translate(-110%,-50%)";
  filter.style.borderRadius = show === true ? "20px" : "100%";
  filterBackground.style.display = show === true ? "block" : "none";
}
/////////////////////////////ProductImagesAnimation///////////////////////////////
const productCardImgs = [
    ...document.querySelectorAll(".product-thumb>.image>a"),
  ];
const balloonsURIS = [...document.querySelectorAll(".cursor-change")];
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
  if (window.innerWidth > 1440) {
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
  }