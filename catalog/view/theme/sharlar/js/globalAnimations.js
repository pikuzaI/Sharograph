///////////////////////////////Cookies////////////////////////////////////////
$(window).load(function () {
  let ifCookieAccepted = localStorage.getItem('accept');
  if (!ifCookieAccepted) {
    setTimeout(function () {
      $('body').append(`<div class="cookies-container">
      <div class="cookies-inner white-background">
        <div class="cookie-item"><i class="fa fa-info-circle cl-green" aria-hidden="true"></i></div>
        <div class="cookie-item">
          <p>На нашому вебсайті ми використовуємо файли cookie, які помагають нам створити максимально приємні
            умови використання сайтом. Файли cookie, які ми зберігаємо не містять інформації за допомогою якої
            можна визначити вашу особистість.
          </p>
        </div>
        <div class="cookie-item">
          <div class="theme-button green-btn accept-cookies">Прийняти</div>
        </div>
      </div>
    </div>`)
      $('.accept-cookies').click(function () {
        $('.cookies-container').css("transform", "translateY(200%)");
        setTimeout(function () { $('.cookies-container').remove() }, 1000);
        localStorage.setItem('accept', 1);
      })
    }, 3000)
  }
})

///////////////////////////////Cookies////////////////////////////////////////
////////////////////////////////CurosFollowAnim////////////////////////////////
let cursor = $$(".cursor"),
  posX = 0,
  posY = 0,
  mouseX = 0,
  mouseY = 0;
cursor.style.display = window.innerWidth > 1440 ? 'block' : 'none';


document.addEventListener("mousemove", function (e) {
  mouseX = e.pageX;
  mouseY = e.pageY;

});
if (window.innerWidth > 1440) {
  gsap.to({}, 0.016, {
    repeat: -1,
    onRepeat: function () {
      posX += (mouseX - posX) / 20;
      posY += (mouseY - posY) / 20;
      gsap.to(cursor, 0.18, {
        css: {
          left: mouseX - cursor.offsetWidth / 2,
          top: mouseY - cursor.offsetHeight / 2,
        },
      });
    },
  });
}


//////////////////////////////////////MENU///////////////////////////////////////
const menu = document.querySelector(".menu-hide");
menu.style.top = menu.dataset.menuType === "home" ? 0 + "px" : -100 + "px";
var prevScrollpos = window.pageYOffset || window.scrollY;
window.onscroll = function () {
  let currentScrollPos = window.pageYOffset || window.scrollY;
  let n = 0;
  n = menu.dataset.menuType === "home" ? 0 : 200;
  if (prevScrollpos > currentScrollPos && currentScrollPos >= n) {
    menu.style.top = "0px";
  } else {
    menu.style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
}
$(document).on('click',".scroll-bottom",function (e) {
  e.preventDefault()
  $("html, body").animate({ scrollTop: $(document).height() }, "slow");
});

///////////////////////////////////////MENU//////////////////////////////////////
//////////////////////////Burger Menu////////////////////////
let burgerBtn = $('.burger-btn'),
  mobMenu = $('.mobile-menu'),
  mobileMenuBackground = $('.mobile-menu-background');
burgerBtn.click(() => {
  console.log(mobMenu)
  burgerBtn.toggleClass('burger-btn-active');
  mobMenu.toggleClass('is-collapsed');
  mobileMenuBackground.toggleClass('is-visible');
})
mobileMenuBackground.click(() => {
  burgerBtn.toggleClass('burger-btn-active');
  mobMenu.toggleClass('is-collapsed');
  mobileMenuBackground.toggleClass('is-visible');
})

$(window).scroll(() => {
  if (burgerBtn.hasClass('burger-btn-active')) {
    burgerBtn.removeClass('burger-btn-active');
    mobMenu.removeClass('is-collapsed');
    mobileMenuBackground.removeClass('is-visible')
  }
})
//////////////////////////Burger Menu////////////////////////
/////////////////////////Init mobile menu///////////////////
const mobileMenu = {
  createMobileNav: function () {
    $('body').append(`<div class="mobile__nav shadow-sm">	
		<a class="mobile__nav-item" href="http://reco.fun:8080/sharlar-shop/">
			<i class="fa fa-home" aria-hidden="true"></i>
			<span>Головна</span>
		</a>
		<a class="mobile__nav-item" href="http://reco.fun:8080/sharlar-shop/index.php?route=product/category&path=62">
			<i class="fa fa-shopping-basket" aria-hidden="true"></i>
			<span>Каталог</span>
		</a>
		<a class="mobile__nav-item scroll-bottom" href="#">
			<i class="fa fa-address-book"></i>
			<span>Контакти</span>
		</a>
		<a class="mobile__nav-item" href="http://reco.fun:8080/sharlar-shop/index.php?route=information/information&information_id=4" >
			<i class="fa fa-info" aria-hidden="true"></i>
			<span>Про нас</span>
		</a>
</div>`);
  },
  removeMobileNav: function () {
    $('.mobile__nav').remove()
  }
}
function toggleMobMenu(){
  if (window.innerWidth <= 960) {
    mobileMenu.createMobileNav();
  }else{
    mobileMenu.removeMobileNav();
  }
}
toggleMobMenu();
var width = $(window).width();
$(window).on('resize', function() {
  if ($(this).width() !== width) {
    width = $(this).width();
    toggleMobMenu();
  }
});
/////////////////////////Init mobile menu///////////////////