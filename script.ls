const burger = document.querySelector('.burger');
const navMenu = document.querySelector('.nav-menu');

burger.addEventListener('click', () => {
    navMenu.classList.toggle('show');
});

// Gallery
const galleryContainer = document.querySelector('.gallery-container');
const galleryItems = document.querySelectorAll('.gallery-item');

let currentIndex = 0;

function showImage(index) {
    galleryItems.forEach((item, i) => {
        if (i === index) {
            item.style.display = 'block';
        } else {
            item.style.display = 'none';
        }
    });
}

function nextImage() {
    currentIndex = (currentIndex + 1) % galleryItems.length;
    showImage(currentIndex);
}

function prevImage() {
    currentIndex = (currentIndex - 1 + galleryItems.length) % galleryItems.length;
    showImage(currentIndex);
}

galleryContainer.addEventListener('click', (e) => {
    if (e.target.closest('.gallery-container')) {
        nextImage();
    }
});

showImage(currentIndex);

const galleryItems = document.querySelectorAll('.gallery-item');

galleryItems.forEach(item => {
    item.addEventListener('click', () => {
        const currentItem = document.querySelector('.gallery-item.current');
        const prevItem = document.querySelector('.gallery-item.prev');
        const nextItem = document.querySelector('.gallery-item.next');

        currentItem.classList.remove('current');
        prevItem.classList.remove('prev');
        nextItem.classList.remove('next');

        if (item.classList.contains('prev')) {
            currentItem.classList.add('next');
            prevItem.classList.add('current');
            item.classList.add('prev');
        } else if (item.classList.contains('next')) {
            currentItem.classList.add('prev');
            nextItem.classList.add('current');
            item.classList.add('next');
        }
    });
});
const form = document.querySelector('form');
form.addEventListener('submit', (e) => {
    e.preventDefault();
    // Тут можна додати логіку для відправки форми на сервер
    alert('Форму успішно відправлено!');
    form.reset();
});
