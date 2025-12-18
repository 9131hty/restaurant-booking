<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="${gcv}css/header.css">
<header class="header-wrapper">
    <div class="navbar-container"><a href="home" class="navbar-brand" id="i6zfz">
        <img src="${gcv}icons/common/sparkles.svg" alt="" class="brand-icon" /><span
            id="ib40c5g" class="cjiayo-t-h2 brand-name">Artéa Aureum</span></a>
        <nav class="navbar-links" id="i7t4c">
            <a href="home" class="cjiayo-t-link navbar-link" id="iw83d">
                Home</a>
            <a href="dishes" class="cjiayo-t-link navbar-link" id="il1q3">
                Browse Dishes</a>
            <a href="order" class="cjiayo-t-link navbar-link" id="i64wv">
                Order</a>
            <a href="reservation" class="cjiayo-t-link navbar-link" id="i23rv">
                Reservation</a>
            <a href="contact-about" class="cjiayo-t-link navbar-link" id="ikfa3">
                About</a>
            <a href="reviews" class="cjiayo-t-link navbar-link" id="ib5j3">
                Reviews</a>
            <a href="sign-in" class="cjiayo-t-button navbar-cta" id="i9x65">
                <img src="${gcv}icons/common/log-in.svg" alt="" class="hero-icon"/>
                Login</a>
        </nav>
    </div>
</header>
<script>
    let lastScroll = 0;
    const header = document.querySelector('.header-wrapper');


    window.addEventListener('scroll', () => {
        const currentScroll = window.pageYOffset;
        if (currentScroll > lastScroll) {
            header.style.top = "-80px";
        } else {
            header.style.top = "0";
        }
        lastScroll = currentScroll;
    });


</script>





