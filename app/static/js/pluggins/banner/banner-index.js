var banner = document.getElementById('banner-content-referreds'),
    bannerSon = document.getElementById('banner-content-referreds-son'),
    closeBanner = document.getElementById('close-button');

closeBanner.addEventListener('click', function(){
    banner.classList.add('inactive');
    bannerSon.classList.add('inactive');
});