document.addEventListener('DOMContentLoaded', function() {
    const chatWindow = document.querySelector('.chat-window');
    const chatIcon = document.querySelector('.chat-icon');
    const closeButton = document.querySelector('.close-chat');

    // Función para mostrar/ocultar el chat
    chatIcon.addEventListener('click', function() {
        const isVisible = chatWindow.style.display === 'block';
        chatWindow.style.display = isVisible ? 'none' : 'block';
    });

    // Cerrar al hacer click en el botón de cerrar (X)
    closeButton.addEventListener('click', function() {
        chatWindow.style.display = 'none';
    });

    // Cerrar al hacer click fuera del chat
    document.addEventListener('click', function(event) {
        if (!chatWindow.contains(event.target) && !chatIcon.contains(event.target)) {
            chatWindow.style.display = 'none';
        }
    });
});


document.addEventListener("DOMContentLoaded", function () {
    const menu = document.querySelector(".menu");
    const boton = menu.querySelector("button");
    const submenu = menu.querySelector(".menu-contenido");
    const opciones = submenu.querySelectorAll("a");

    boton.addEventListener("click", function (event) {
        event.stopPropagation();
        submenu.classList.toggle("active");
    });

    opciones.forEach(opcion => {
        opcion.addEventListener("click", function (event) {
            event.stopPropagation();
            submenu.classList.add("active"); // Mantiene el menú abierto
        });
    });

    document.addEventListener("click", function (event) {
        if (!menu.contains(event.target)) {
            submenu.classList.remove("active");
        }
    });
});

var swiper = new Swiper(".mySwiper-1", {
    direction: "horizontal",
    loop: true,

    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev"
    },

    autoplay: {
        delay: 3000
    },

    pagination: {
        el: ".swiper-pagination",
        type: "bullets",
        clickable: true
    }

});
var swiper = new Swiper(".mySwiper-2", {
    slidesPerView: 3,
    spaceBetween: 20,
    loop: true,
    loopFillGroupWithBlank: true,

    navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
    breakpoints: {
        0: {
            slidesPerView: 1,
        },
        520: {
            slidesPerView: 2
        },
        950: {
            slidesPerView: 3
        }
    }

});







