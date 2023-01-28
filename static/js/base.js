const nav = document.querySelector('nav')

document.addEventListener("scroll", e => {

    if (scrollY > 100) {
        nav.classList.add('bg-gray-900')
        nav.classList.remove('invisible')
    } else {
        nav.classList.remove('bg-gray-900')
        nav.classList.remove('invisible')
    }
})