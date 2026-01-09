<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Ordering | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@600;700&amp;family=Inter:wght@400;500;600&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
    <link rel="stylesheet" href="${gcv}css/order.css">
    <script> const gcv = '${gcv}';</script>
    <script src="${gcv}js/order.js" defer></script>
</head>

<body id="izeb7qo" class="cjiayo-t-body">
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
                <h1 id="inaea3x" class="cjiayo-t-h1 hero-title">Order Your Favorites</h1>
                <p id="i4q7qep" class="hero-subtitle">Freshly prepared dishes with seasonal ingredients. Add to cart and customize quantities easily.</p>
                <div id="i14si51" class="breadcrumbs"><a href="home"
                                                         class="cjiayo-t-link breadcrumb-link">Home</a><span class="breadcrumb-divider">/</span><span
                        class="breadcrumb-current">Order</span></div>
            </div>
        </div>
    </div>
</section>
<aside id="cartSidebar" aria-label="Cart Sidebar" role="dialog" class="cart-sidebar">
    <div id="iwpsjzu" class="cart-header">
        <div class="cart-title-group"><img src="${gcv}icons/order/shopping-bag.svg" alt=""
                                           class="cart-title-icon" />
            <h2 class="cjiayo-t-h2 cart-title">Your Order</h2>
        </div><button type="button" id="cartClose" aria-label="Close Cart" class="cart-close-button"><img
            src="${gcv}icons/order/x.svg" alt="" class="cart-close-icon" /></button>
    </div>
    <div class="cart-info-row">
        <p id="i4nf3a8" class="cart-info-text">Free delivery on orders over $40.</p>
    </div>
    <div id="cartItems-2" aria-live="polite" aria-atomic="true" class="cart-items-list">
    </div>
    <div class="cart-footer">
        <div class="cart-subtotal-row"><span class="subtotal-label">Subtotal</span><span id="cartSubtotal"
                                                                                         class="subtotal-value">$0.00</span></div>
        <div class="cart-total-row"><span class="total-label">Total</span><span id="cartTotal"
                                                                                class="total-value">$0.00</span></div>
        <div class="cart-actions"><button type="button" id="clearCart" class="clear-cart-button">Clear</button>
            <form id="checkoutForm"
                  action="checkout"
                  method="post">

                <input type="hidden" name="cartData" id="cartDataInput">

                <button type="submit"
                        class="cjiayo-t-button checkout-button">
                    Checkout
                </button>
            </form>
        </div>
    </div>
</aside>
<main id="iz74m1" class="main-content">
    <section id="ipxrnk" class="page-intro">
        <div id="ifh9fy" class="filters-row">
            <div id="i8d7mn" class="search-wrapper"><img src="${gcv}icons/order/search.svg"
                                                         alt="" id="is880o" class="search-icon" /><input type="search" id="searchInput-2"
                                                                                                         placeholder="Search dishes..." aria-label="Search dishes" class="search-input" /></div>
            <div id="icdlo9" class="quick-filters"><button type="button" data-filter="all"
                                                           class="filter-pill">All</button><button type="button" data-filter="mains"
                                                                                                   class="filter-pill">Mains</button><button type="button" data-filter="salads"
                                                                                                                                             class="filter-pill">Salads</button><button type="button" data-filter="desserts"
                                                                                                                                                                                        class="filter-pill">Desserts</button><button type="button" data-filter="drinks"
                                                                                                                                                                                                                                     class="filter-pill">Drinks</button></div>
        </div>
    </section>
    <section>
        <div id="itemsGrid" class="items-grid">

<!-- ======= dish card ===================================================================================================== -->
            <c:forEach var="card" items="${cards}">
                <article
                        data-id="${card.id}"
                        data-name="${card.name}"
                        data-price="${card.basePrice}"
                        data-category="${card.category}"
                        class="group dish-card"
                        id="card-${card.id}">

                    <div class="dish-image-wrapper">
                        <img
                                src="${item_img}${card.image}"
                                alt="${card.name}"
                                loading="eager"
                                class="dish-image"/>
                    </div>

                    <div class="dish-content">
                        <div class="dish-header">
                            <h3 id="im690b" class="dish-name">${card.name}</h3>
                            <span class="dish-price">
                    $<fmt:formatNumber value="${card.basePrice}" type="number" minFractionDigits="2"/>
                </span>
                        </div>

                        <p class="dish-description">
                                ${card.shortDescription}
                        </p>

                        <div class="dish-actions">
                                <div class="dish-meta">
                                    <img src="${card_icon}${card.icon}"
                                         alt=""
                                         class="meta-icon"/>
                                    <span>${card.category}</span>
                                </div>

                            <button type="button" class="cjiayo-t-button add-button">
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </article>
            </c:forEach>
<!-- ======================================================================================================================= -->

        </div>
    </section>
    <section class="support-section">
        <div class="banner-card">
            <div>
                <h3 class="banner-title">Group order or special requests?</h3>
                <p class="banner-subtitle">Contact our team and we’ll make it seamless.</p>
            </div><a href="contact-about" class="cjiayo-t-button banner-cta">Contact Us</a>
        </div>
    </section>
</main><button type="button" aria-controls="cartSidebar" aria-expanded="false" id="cartToggle"
               class="cjiayo-t-button cart-toggle-button"><img
        src="${gcv}icons/order/shopping-cart.svg" alt="" id="it2fhhc"
        class="cart-toggle-icon" /><span>Cart</span><span id="cartCountBadge" class="cart-count-badge">0</span></button>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>

</html>
