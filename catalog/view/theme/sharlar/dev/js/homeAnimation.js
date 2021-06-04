let guideBG = $('.guide-background-hide'),
guide = $('.guide'),
guideClose = $('.btn-close-guide'),
showGuide = $('.guide-show');
guideClose.click(toggleGuide);
guideBG.click(toggleGuide);
showGuide.click(toggleGuide);

function toggleGuide(){
    if(guide.hasClass('guide-hide')){
        guide.css('transform','translate(-50%,-50%) scale(1)');
        guide.css('transition','transform .3s cubic-bezier(0.175, 0.885, 0.32, 1.275)');
        guide.css('opacity','1');
        guide.removeClass('guide-hide');
    }else{
        guide.css('transform','translate(-50%,-50%) scale(0)');
        guide.css('transition','transform .3s ease-out');
        guide.addClass('guide-hide');
    }
    guideBG.toggleClass('guide-background-hide');

}