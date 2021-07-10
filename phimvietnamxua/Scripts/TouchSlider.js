function DispatchTouchSlider() {
    const firstItem = $('.slider').children().eq(0);
    const container = $('.contentSlider');
    const slider = $('.slider');
    let heightMove;
    let isSlide = false;
    // console.log(slider);
    container.mousedown(function (e) {
        e.preventDefault()
        isSlide = true;
        container.css('cursor', "grabbing");
        heightMove = e.clientY - slider.offset().top
        // console.log(e.clientY, slider.offset().top);
    })
    container.mouseup(function () {
        container.css('cursor', "grab");
    })
    $(window).mouseup(function (e) {
        isSlide = false;
    })
    container.mousemove(function (e) {
        if (!isSlide) return;
        slider.css('transform', `translateY(${e.clientY - heightMove}px)`)

        let scrollTop = -(slider.offset().top)
        $('.progressBar').css('width', `${(scrollTop / (slider.innerHeight() - container.innerHeight())) * 100}%`)
        limitArea()
    })

    function limitArea() {
        let maxHeight = -(slider.innerHeight() - container.innerHeight())
        let sliderOffsetTop = slider.offset().top
        if (sliderOffsetTop >= 0) {
            slider.css('transform', `translateY(0px)`)
        } else if (sliderOffsetTop <= maxHeight) {
            slider.css('transform', `translateY(${maxHeight}px)`)
            $('.progressBar').css('width', `${(-maxHeight / (slider.innerHeight() - container.innerHeight())) * 100}%`)
        }
    }
}