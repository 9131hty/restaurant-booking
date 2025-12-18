<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Our Menu | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&amp;family=Inter:wght@400;500;600&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>

<body class="cjiayo-t-body body">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<section id="ia1q4x8" class="hero-section">
    <div id="i8642dy" class="hero-background">
        <div id="i17xid" class="decorative-blob"></div>
        <div id="i7jdxt" class="decorative-blob"></div>
        <div aria-hidden="true" class="shine-layer"></div>
    </div>
    <div id="ibea6pv" class="hero-container">
        <div class="header-row">
            <div class="hero-text">
                <p class="overline">Fine casual dining</p>
                <h1 id="inaea3x" class="cjiayo-t-h1 hero-title">Our Menu</h1>
                <p id="i4q7qep" class="hero-subtitle">Explore our chef-curated selection of seasonal plates, crafted with
                    local ingredients and global inspiration. No ordering here — just savor the details.</p>
                <div id="i14si51" class="breadcrumbs"><a href="home"
                                                         class="cjiayo-t-link breadcrumb-link">Home</a><span class="breadcrumb-divider">/</span><span
                        class="breadcrumb-current">Menu</span></div>
            </div>
            <div class="hero-badge">
                <div class="cjiayo-t-border badge-card"><img
                        src="${gcv}icons/dishes/sparkles.svg" alt="Sparkles Icon"
                        class="icon-badge" />
                    <div>
                        <p class="badge-title">Seasonal Highlights</p>
                        <p class="badge-subtitle">New dishes added this month</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<main id="i99ahbp">
    <section class="menu-section">
        <div class="cjiayo-t-border filter-bar">
            <div class="filter-chips"><button type="button" class="filter-chip">All</button><button type="button"
                                                                                                    class="filter-chip">Starters</button><button type="button" class="filter-chip">Mains</button><button
                    type="button" class="filter-chip">Pasta</button><button type="button"
                                                                            class="filter-chip">Desserts</button><button type="button" class="filter-chip">Drinks</button></div>
            <div class="legend"><img src="${gcv}icons/dishes/leaf.svg" alt="Leaf icon"
                                     class="legend-icon" /><span>Vegetarian • V</span></div>
        </div>
        <div class="menu-grid">

<!-- ======= dish cards ===================================================================================================== -->
            <article data-animate="" id="ietzi7" class="group cjiayo-t-border dish-card">
                <div id="iy7383" class="dish-image-wrapper"><img
                        src="https://app.grapesjs.com/api/assets/random-image?query=%22bruschetta%20appetizer%22&amp;w=900&amp;h=600"
                        alt="Heirloom Tomato Bruschetta" id="ijtmtc" class="group-hover:scale-[1.03] dish-image" /><span
                        class="dish-tag">Starter • V</span></div>
                <div class="dish-content">
                    <div class="dish-header">
                        <h3 id="is4flyg" class="cjiayo-t-h2 dish-title">Heirloom Tomato Bruschetta</h3><span
                            class="dish-price">$9</span>
                    </div>
                    <p class="dish-description">Grilled sourdough, basil oil, balsamic pearls, garlic confit, and marinated
                        heirloom tomatoes.</p>
                </div>
            </article>
<!-- ======================================================================================================================= -->

        </div>
        <div class="cjiayo-t-border notes-card"><img src="${gcv}icons/dishes/info.svg"
                                                     alt="Info Icon" class="info-icon" />
            <div>
                <h4 class="notes-title">Allergen and dietary notes</h4>
                <p class="notes-text">Please inform us of any allergies. Many dishes can be made gluten-free upon request. A
                    15% service charge may apply to parties of 6 or more.</p>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script>
    (function () {
        var items = document.querySelectorAll('[data-animate]');
        for (var i = 0; i < items.length; i++) {
            var el = items[i];
            el.style.opacity = '0';
            el.style.transform = 'translateY(8px)';
            el.style.transition = 'opacity 600ms ease, transform 600ms ease';
        }
        if ('IntersectionObserver' in window) {
            var io = new IntersectionObserver(function (entries) {
                entries.forEach(function (entry) {
                    if (entry.isIntersecting) {
                        entry.target.style.opacity = '1';
                        entry.target.style.transform = 'translateY(0)';
                        io.unobserve(entry.target);
                    }
                });
            }, { rootMargin: '0px 0px -10% 0px', threshold: 0.15 });
            for (var j = 0; j < items.length; j++) io.observe(items[j]);
        } else {
            for (var k = 0; k < items.length; k++) {
                items[k].style.opacity = '1';
                items[k].style.transform = 'translateY(0)';
            }
        }

        var imgs = document.querySelectorAll('[data-cjiayo-name="Dish Image"]');
        for (var m = 6; m < imgs.length; m++) {
            imgs[m].setAttribute('loading', 'lazy');
        }
    })();
</script>
</body>

</html>