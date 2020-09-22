////////////////////////////////CurosFollowAnim////////////////////////////////
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
}


//////////////////////////////////////MENU///////////////////////////////////////
const menu=document.querySelector(".menu-hide");
menu.style.top = menu.dataset.menuType==="home" ? 0 +"px" : -100 +"px";
var prevScrollpos = window.pageYOffset || window.scrollY;
window.onscroll = function() {
  let currentScrollPos = window.pageYOffset || window.scrollY;
  let n = 0; 
  n=menu.dataset.menuType==="home" ? 0 : 200;
  if (prevScrollpos > currentScrollPos && currentScrollPos >= n) {
    menu.style.top = "0px"; 
  } else {
    menu.style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
}
$(".scroll-bottom").click(function() {
  $("html, body").animate({ scrollTop: $(document).height() }, "slow");
  return false;
});
///////////////////////////////////////MENU//////////////////////////////////////
//////////////////////////Burger Menu////////////////////////
let burgerBtn = $('.burger-btn'),
mobMenu = $('.mobile-menu'),
mobileMenuBackground = $('.mobile-menu-background');
burgerBtn.click(()=>{
    console.log(mobMenu)
    burgerBtn.toggleClass('burger-btn-active');
    mobMenu.toggleClass('is-collapsed');
    mobileMenuBackground.toggleClass('is-visible');
})
mobileMenuBackground.click(()=>{
    burgerBtn.toggleClass('burger-btn-active');
    mobMenu.toggleClass('is-collapsed');
    mobileMenuBackground.toggleClass('is-visible');
})

$(window).scroll(()=>{
    if(burgerBtn.hasClass('burger-btn-active')){
        burgerBtn.removeClass('burger-btn-active');
        mobMenu.removeClass('is-collapsed');
        mobileMenuBackground.removeClass('is-visible')
    }    
})
//////////////////////////Burger Menu////////////////////////