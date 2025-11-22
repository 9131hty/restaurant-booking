<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Maison di Sapori — Menu</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link
            href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&amp;family=Inter:wght@400;500;600;700&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="../css/menu.css">
    <script src="../js/header.js" defer></script>
    <script src="../js/footer.js" defer></script>
    <script src="../js/menu.js" defer id="ivj3e5"></script>
</head>

<body class="gjs-t-body">
<div id="header-container"></div>
<main class="page-content" id="i41fjy">
    <section class="hero-section" id="ivwr1t">
        <div class="hero-text" id="i8jcom">
            <h1 class="gjs-t-h1 hero-title" id="i84ani">Our Menu</h1>
            <p class="hero-subtitle" id="iscmxb">Explore authentic flavors crafted with seasonal ingredients. Browse by
                category, filter by dietary needs, and customize each dish to your taste.</p>
            <div class="hero-quick-links" id="iy1j3a">
                <a href="#categories" class="gjs-t-button quick-link-button" id="i9yupm">
                    <img src="../icons/menu/list-tree.svg" alt="" class="quick-link-icon" id="iig92i" />
                    <span id="iskkjy">Browse Categories</span>
                </a>
                <a href="#cart" class="gjs-t-border quick-link-button" id="i77sjm">
                    <img src="../icons/menu/shopping-cart.svg" alt="" class="quick-link-icon" id="i6iv2x" />
                    <span id="io078t">View Cart</span>
                </a>
            </div>
        </div>
        <div class="hero-image-wrapper" id="ifsgy9">
            <div class="gjs-t-border hero-image-card" id="iwxy51">
                <img src="italian-cuisine_[INPUT]" alt="Maison di Sapori Dishes" class="hero-image" id="ig6sh6" />
            </div>
        </div>
    </section>
    <section class="gjs-t-border filters-section" id="i35qao">
        <div class="filters-header" id="ixetcm">
            <img src="lucide-filters_[INPUT_icon]" alt="" class="filters-icon" id="imjdi2" />
            <h2 class="gjs-t-h2 filters-title" id="ihf8j1">Search &amp; Filters</h2>
        </div>
        <div class="filters-content" id="ikf6ve">
            <div class="search-field-wrapper" id="i0kqdm">
                <label for="searchInput" class="search-label" id="i0prjt">Search dishes</label>
                <div class="gjs-t-border search-field" id="iss5n7">
                    <img src="lucide-search_[INPUT_icon]" alt="" class="search-icon" id="ivmlg1" />
                    <input type="search" id="searchInput" placeholder="Type a dish name or ingredient..."
                           aria-label="Search menu" class="search-input" />
                </div>
            </div>
            <div class="category-filter-wrapper" id="iy47b9">
                <span class="category-label" id="iz71hd">Filter by category</span>
                <div id="categoryPills" class="category-pills">
                    <button type="button" data-category="all" class="gjs-t-border category-pill" id="iv2wru">All</button>
                    <button type="button" data-category="appetizers" class="gjs-t-border category-pill"
                            id="i6vjc9">Appetizers</button>
                    <button type="button" data-category="mains" class="gjs-t-border category-pill" id="ifso5g">Mains</button>
                    <button type="button" data-category="drinks" class="gjs-t-border category-pill" id="ifoyj8">Drinks</button>
                    <button type="button" data-category="desserts" class="gjs-t-border category-pill"
                            id="ivu97v">Desserts</button>
                </div>
            </div>
            <div class="dietary-filters-wrapper" id="ijq26s">
                <span class="dietary-label" id="itf3mm">Dietary tags</span>
                <div class="dietary-filters" id="i42bk7">
                    <label class="dietary-option" id="i2fka5">
              <span class="gjs-t-border custom-checkbox" id="ilz114">
                <input type="checkbox" value="vegetarian" aria-label="Vegetarian" class="dietary-input" id="i4q1zk" />
                <span class="dietary-check-indicator" id="im7snp">
                  <img src="lucide-check_[INPUT_icon]" alt="" class="dietary-icon" id="izw96f" />
                </span>
              </span>
                        <span class="dietary-text" id="itfcuc">Vegetarian</span>
                    </label>
                    <label class="dietary-option" id="iqaqji">
              <span class="gjs-t-border custom-checkbox" id="iun0iw">
                <input type="checkbox" value="vegan" aria-label="Vegan" class="dietary-input" id="iiuwxs" />
                <span class="dietary-check-indicator" id="iccnkp">
                  <img src="lucide-check_[INPUT_icon]" alt="" class="dietary-icon" id="ie1a34" />
                </span>
              </span>
                        <span class="dietary-text" id="iubpmv">Vegan</span>
                    </label>
                    <label class="dietary-option" id="icuvtr">
              <span class="gjs-t-border custom-checkbox" id="irrcr2">
                <input type="checkbox" value="gluten-free" aria-label="Gluten-free" class="dietary-input" id="iu1svm" />
                <span class="dietary-check-indicator" id="ilzajn">
                  <img src="lucide-check_[INPUT_icon]" alt="" class="dietary-icon" id="i18nle" />
                </span>
              </span>
                        <span class="dietary-text" id="io19zk">Gluten-free</span>
                    </label>
                    <label class="dietary-option" id="id1zc7">
              <span class="gjs-t-border custom-checkbox" id="iyrbzx">
                <input type="checkbox" value="spicy" aria-label="Spicy" class="dietary-input" id="iwk205" />
                <span class="dietary-check-indicator" id="iovjra">
                  <img src="lucide-check_[INPUT_icon]" alt="" class="dietary-icon" id="id7wt8" />
                </span>
              </span>
                        <span class="dietary-text" id="iwoc4n">Spicy</span>
                    </label>
                </div>
            </div>
        </div>
    </section>
    <section id="categories" class="categories-overview">
        <div class="categories-grid" id="ifldy1">
            <a href="#category-appetizers" class="gjs-t-border category-card" id="ic1rd1">
                <div class="category-content" id="issbep">
                    <img src="lucide-salad_[INPUT_icon]" alt="" class="category-icon" id="ina78i" />
                    <div class="category-texts" id="ixcgo7">
                        <span class="category-name" id="itkd1b">Appetizers</span>
                        <span class="category-subtitle" id="ib8fpk">Start your meal</span>
                    </div>
                </div>
            </a>
            <a href="#category-mains" class="gjs-t-border category-card" id="iuqba4">
                <div class="category-content" id="iz1meq">
                    <img src="lucide-beef_[INPUT_icon]" alt="" class="category-icon" id="iz3m2m" />
                    <div class="category-texts" id="i4s1yz">
                        <span class="category-name" id="i4587j">Mains</span>
                        <span class="category-subtitle" id="il9yyd">Hearty favorites</span>
                    </div>
                </div>
            </a>
            <a href="#category-drinks" class="gjs-t-border category-card" id="ig6a0h">
                <div class="category-content" id="inmbfk">
                    <img src="lucide-cup-soda_[INPUT_icon]" alt="" class="category-icon" id="iu4zs5" />
                    <div class="category-texts" id="iqmxmo">
                        <span class="category-name" id="is54ij">Drinks</span>
                        <span class="category-subtitle" id="iqjq14">Refreshing sips</span>
                    </div>
                </div>
            </a>
            <a href="#category-desserts" class="gjs-t-border category-card" id="iu3iff">
                <div class="category-content" id="iypkeq">
                    <img src="lucide-ice-cream_[INPUT_icon]" alt="" class="category-icon" id="inoxni" />
                    <div class="category-texts" id="i03h03">
                        <span class="category-name" id="ijtqnd">Desserts</span>
                        <span class="category-subtitle" id="idirlg">Sweet endings</span>
                    </div>
                </div>
            </a>
        </div>
    </section>
    <section class="menu-layout" id="ian9u8">
        <div class="menu-list-column" id="ikpm76">
            <div id="category-appetizers" class="category-section">
                <div class="section-header" id="i7b12v">
                    <img src="lucide-salad_[INPUT_icon]" alt="" class="section-icon" id="i1g8ij" />
                    <h3 class="section-title" id="i41nyg">Appetizers</h3>
                </div>
                <div class="items-grid" id="ialtwc">

                    <!-- Menu Card -->

                </div>
            </div>
            <div id="category-mains" class="category-section">
                <div class="section-header" id="i8ux57">
                    <img src="lucide-beef_[INPUT_icon]" alt="" class="section-icon" id="ikepdp" />
                    <h3 class="section-title" id="ie5zce">Mains</h3>
                </div>
                <div class="items-grid" id="i04jwt">

                    <!-- Menu Card -->

                </div>
            </div>
            <div id="category-drinks" class="category-section">
                <div class="section-header" id="ibigiz">
                    <img src="lucide-cup-soda_[INPUT_icon]" alt="" class="section-icon" id="if5brj" />
                    <h3 class="section-title" id="i1ce7c">Drinks</h3>
                </div>
                <div class="items-grid" id="i10vs7">

                    <!-- Menu Card -->

                </div>
            </div>
            <div id="category-desserts" class="category-section">
                <div class="section-header" id="iz81bh">
                    <img src="lucide-ice-cream_[INPUT_icon]" alt="" class="section-icon" id="iscsv7" />
                    <h3 class="section-title" id="id55wv">Desserts</h3>
                </div>
                <div class="items-grid" id="i3pun8">

                    <!-- Menu Card -->

                </div>
            </div>
        </div>
        <aside id="cart" class="cart-sidebar">
            <div class="gjs-t-border cart-panel" id="i151kk">
                <div class="cart-header" id="icafz3">
                    <div class="cart-title-group" id="iz9l8v">
                        <img src="lucide-shopping-cart_[INPUT_icon]" alt="" class="cart-icon" id="im98ux" />
                        <h3 class="cart-title" id="ifk5jv">Your Cart</h3>
                    </div>
                    <button type="button" id="clearCartBtn" class="clear-cart-button">Clear</button>
                </div>
                <div class="cart-divider" id="ihe0mk"></div>
                <ul id="cartItems" class="cart-items-list"></ul>
                <div class="cart-divider" id="iiraj4"></div>
                <div class="cart-summary" id="ifgzcl">
                    <div class="subtotal-row" id="i4jjrf">
                        <span id="i2d3nx">Subtotal</span>
                        <span id="subtotalAmount">$0.00</span>
                    </div>
                    <div class="tax-row" id="iox5l4">
                        <span id="iuo3ak">Estimated Tax</span>
                        <span id="taxAmount">$0.00</span>
                    </div>
                    <div class="total-row" id="it7wl4">
                        <span id="iot3ey">Total</span>
                        <span id="totalAmount">$0.00</span>
                    </div>
                </div>
                <div class="cart-actions" id="ifvmzq">
                    <a href="../html/cart-checkout.html" class="gjs-t-button checkout-button" id="iphd53">Go to Checkout</a>
                    <a href="./menu.html" class="gjs-t-link view-menu-link" id="icdqxl">Continue browsing</a>
                </div>
            </div>
        </aside>
    </section>
</main>
<div id="footer-container"></div>
<div id="customizationModal" class="customization-modal-backdrop">
    <div class="gjs-t-border customization-modal" id="i328e6">
        <div class="modal-header" id="iirxru">
            <div class="modal-title-group" id="indouj">
                <img src="lucide-settings-2_[INPUT_icon]" alt="" class="modal-icon" id="iz67gf" />
                <h4 id="modalItemName" class="modal-title">Customize Item</h4>
            </div>
            <button type="button" id="closeModalBtn" aria-label="Close customization" class="modal-close">
                <img src="lucide-x_[INPUT_icon]" alt="" class="close-icon" id="izhv3e" />
            </button>
        </div>
        <div class="modal-body" id="in0wqv">
            <div class="modifiers-section" id="iffqm7">
                <h5 class="modifiers-title" id="iazk5r">Choose Add-ons</h5>
                <div id="modifiersList" class="modifiers-grid">
                    <label class="gjs-t-border modifier-option" id="inmppu">
                        <span class="modifier-name" id="il5cko">Extra Cheese</span>
                        <span class="modifier-control" id="ikn5da">
                <span class="modifier-price" id="i2b22n">$1.00</span>
                <input type="checkbox" value="Extra Cheese|1" class="modifier-checkbox" id="ir4f01" />
              </span>
                    </label>
                    <label class="gjs-t-border modifier-option" id="iqvpu7">
                        <span class="modifier-name" id="illa8u">Add Prosciutto</span>
                        <span class="modifier-control" id="ip0zlh">
                <span class="modifier-price" id="ianyyw">$3.00</span>
                <input type="checkbox" value="Add Prosciutto|3" class="modifier-checkbox" id="isw4ri" />
              </span>
                    </label>
                    <label class="gjs-t-border modifier-option" id="ix0n5b">
                        <span class="modifier-name" id="ixmo1z">Gluten-free Pasta</span>
                        <span class="modifier-control" id="im8nh6">
                <span class="modifier-price" id="izzrah">$2.00</span>
                <input type="checkbox" value="Gluten-free Pasta|2" class="modifier-checkbox" id="ismtlj" />
              </span>
                    </label>
                    <label class="gjs-t-border modifier-option" id="i8pjdb">
                        <span class="modifier-name" id="ixg1te">Spicy Level +1</span>
                        <span class="modifier-control" id="iosxm2">
                <span class="modifier-price" id="i1yflx">$0.50</span>
                <input type="checkbox" value="Spicy Level +1|0.5" class="modifier-checkbox" id="ipwu5u" />
              </span>
                    </label>
                </div>
            </div>
            <div class="notes-section" id="ixesdd">
                <label for="specialInstructions" class="notes-label" id="i596xg">Special instructions</label>
                <textarea id="specialInstructions" rows="3" placeholder="E.g., sauce on the side, no onions"
                          class="gjs-t-border notes-textarea"></textarea>
            </div>
            <div class="quantity-section" id="i8dy9i">
                <span class="quantity-label" id="idwztm">Quantity</span>
                <div class="gjs-t-border quantity-controls" id="ix8vgh">
                    <button type="button" id="modalQtyDec" class="qty-decrease">-</button>
                    <span id="modalQty" class="qty-value">1</span>
                    <button type="button" id="modalQtyInc" class="qty-increase">+</button>
                </div>
            </div>
        </div>
        <div class="modal-footer" id="i9wfvi">
            <span class="modal-total-label" id="iwg27k">Item total:</span>
            <div class="modal-actions" id="icbqgh">
                <span id="modalItemTotal" class="modal-total-value">$0.00</span>
                <button type="button" id="modalAddBtn" class="gjs-t-button modal-add-button">Add to Cart</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>
