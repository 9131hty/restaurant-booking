<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<c:set var="gcv" value="${pageContext.request.contextPath}/assets/" scope="application" />
<!DOCTYPE html>
<html lang="en">


<head>
    <title>Home | Artéa Aureum</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="robots" content="index,follow" />
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;600;700&amp;family=Inter:wght@400;500;600&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>


<body id="iiz0f9y" class="cjiayo-t-body body-root">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main>
    <section id="hero" class="hero-section">
        <div id="id801bi" class="hero-overlay"></div><img
            src="${gcv}images/home/hero-background-image.jpg"
            alt="Elegant fine dining ambience" id="iij3d" class="hero-background-image" />
        <div id="iz49axk" class="hero-container">
            <div id="ix0qvdx" class="hero-visual-wrapper">
                <div id="i9755lf" class="hero-content">
                    <div class="hero-text-block">
                        <h1 id="ik36x7c" class="cjiayo-t-h1 hero-title">
                            A Symphony of Taste &amp; Elegance
                        </h1>
                        <p id="iq82a" class="hero-subtitle">
                            Experience contemporary gastronomy inspired by the seasons, curated by our award‑winning chefs and
                            served with grace.
                        </p>
                        <div class="hero-ctas"><a href="reservation" id="isbykkf"
                                                  class="cjiayo-t-button primary-cta"><img
                                src="${gcv}icons/home/sparkle.svg" alt="" id="i3b6lro"
                                class="cta-icon" />
                            Book Your Evening
                        </a><a href="dishes" id="i3ekeyl" aria-label="Discover signature dishes"
                               title="Discover Signatures" class="secondary-cta"><img
                                src="${gcv}icons/home/utensils-crossed.svg" alt="" id="it3gum9"
                                class="view-menu-icon" />
                            Discover Signatures
                        </a></div>
                    </div>
                    <div class="hero-highlights">
                        <div class="cjiayo-t-border group highlight-item"><img
                                src="${gcv}icons/home/award.svg" alt="" class="highlight-icon" />
                            <div class="highlight-text">
                                <p id="ipdqxkc" class="highlight-title">Michelin‑inspired Menus</p>
                                <p class="highlight-subtitle">Seasonal tasting journeys and a curated à la carte.</p>
                            </div>
                        </div>
                        <div class="cjiayo-t-border group highlight-item"><img
                                src="${gcv}icons/home/wine.svg" alt="" class="highlight-icon" />
                            <div class="highlight-text">
                                <p id="i9ugsls" class="highlight-title">Cellar Pairings</p>
                                <p class="highlight-subtitle">Sommelier‑selected wines to elevate every course.</p>
                            </div>
                        </div>
                        <div class="cjiayo-t-border group highlight-item"><img
                                src="${gcv}icons/home/concierge-bell.svg" alt=""
                                class="highlight-icon" />
                            <div class="highlight-text">
                                <p id="ivavo0v" class="highlight-title">Impeccable Service</p>
                                <p class="highlight-subtitle">Our team orchestrates a seamless evening.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="signature-dishes" class="signature-dishes-section"></section>
    <div id="iwxrg3x" class="section-header">
        <div id="ilaytsh">
            <h2 id="i43bfpn" class="cjiayo-t-h2 section-title">Signature Dishes</h2>
            <p id="ia7kcjh" class="section-subtitle">A glimpse into our most acclaimed creations.</p>
        </div><a href="dishes" id="ie8p6ss" class="cjiayo-t-link header-link">
        View Full Menu
        <img src="${gcv}icons/home/arrow-right.svg" alt="" class="arrow-icon" /></a>
    </div>
    <div id="i1c6qwq" class="section-container">
        <div id="i1oknk6" class="dishes-grid">
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/ocean-trout.jpg"
                        alt="Chef’s Tasting Course — Ocean Trout" loading="eager" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="i13m30y" class="dish-name">Ocean Trout &amp; Citrus Pearl</span>
                    </figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">Sustainably sourced trout, confit fennel, yuzu pearls, dill emulsion.</p>
                </div>
            </article>
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/a5-wagyu-black-garlic.jpg"
                        alt="Wagyu course" loading="lazy" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="igi29md" class="dish-name">A5 Wagyu &amp; Black Garlic</span>
                    </figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">Charcoal‑kissed striploin, black garlic jus, chanterelles, smoked leek ash.</p>
                </div>
            </article>
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/chocolate-terrine-noir.jpg"
                        alt="Artisanal dessert" loading="lazy" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="iqe2fpj" class="dish-name">Chocolate Terrine “Noir”</span>
                    </figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">70% single‑origin cacao, praline crunch, salted caramel, gold leaf.</p>
                </div>
            </article>
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/garden-primavera.jpg"
                        alt="Seasonal tasting course" loading="lazy" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="i0xy0aa" class="dish-name">Garden Primavera</span></figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">Market vegetables, herb pistou, ricotta clouds, truffle vinaigrette.</p>
                </div>
            </article>
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/butter‑poached-lobster.jpg"
                        alt="Lobster course" loading="lazy" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="ia96bjf" class="dish-name">Butter‑Poached Lobster</span>
                    </figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">Vanilla beurre monté, sweetcorn velouté, saffron, caviar.</p>
                </div>
            </article>
            <article class="group cjiayo-t-border dish-card">
                <figure class="dish-media"><img
                        src="${gcv}images/home/levain-cultured-butter.jpg"
                        alt="Bread service" loading="lazy" class="dish-image" />
                    <figcaption class="dish-overlay"><span id="ivmm9gi" class="dish-name">Levain &amp; Cultured Butter</span>
                    </figcaption>
                </figure>
                <div class="dish-body">
                    <p class="dish-desc">Warm levain, smoked sea salt, hand‑churned butter, chive oil.</p>
                </div>
            </article>
        </div>
    </div>
    <section id="about" class="about-section">
        <div class="section-container">
            <div class="about-image-wrapper">
                <div class="cjiayo-t-border about-image-card"><img
                        src="${gcv}images/home/chef.jpg"
                        alt="Chef plating at Artéa Aureum" loading="lazy" class="about-image" /></div>
            </div>
            <div class="about-text">
                <h2 id="iy9qgkd" class="cjiayo-t-h2 about-title">Our Story</h2>
                <p class="about-copy">
                    At Artéa Aureum, we marry classical technique with modern sensibilities. Every evening, our kitchen
                    interprets the season through a lens of craft and curiosity, sourcing impeccably from local purveyors and
                    renowned artisans.
                </p>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>


</html>



