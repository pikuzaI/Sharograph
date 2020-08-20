
      
$('.balloon-types-inner').slick({
    dots: false,
    infinite: false,
    speed: 300,
    slidesToShow: 4,
    slidesToScroll: 1,
    responsive: [
      {
        breakpoint: 1024,
        settings: {
          slidesToShow: 3,
          slidesToScroll: 3,
          infinite: true,
          dots: true
        }
      },
      {
        breakpoint: 600,
        settings: {
          slidesToShow: 2,
          slidesToScroll: 2
        }
      },
      {
        breakpoint: 480,
        settings: {
          slidesToShow: 1,
          slidesToScroll: 1
        }
      }
      // You can unslick at a given breakpoint now by adding:
      // settings: "unslick"
      // instead of a settings object
    ]
  });
  
[$('.slick-prev'),$('.slick-next')].forEach(item=>{
    item.click(()=>{
        gsap.to(item, 0.3, {scale:1.2, ease:Power2.easeOut});
        gsap.to(item, 0.6, {scale:1, ease:Bounce.easeOut, delay:0.3});
    })
})