let burgerBtn = $('.burger-btn'),
mobMenu = $('.mobile-menu'),
mobileMenuBackground = $('.mobile-menu-background');
burgerBtn.click(()=>{
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

