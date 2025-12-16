<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cart &amp; Checkout | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Playfair+Display:wght@600;700&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>

<body id="ibucelf" class="cjiayo-t-body body">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main id="ii821zt" class="main-content">
    <div class="page-title-row">
        <h1 id="i6dcask" class="cjiayo-t-h1 page-title">Checkout</h1>
        <p class="subtitle">Review your items, choose your destination, and finalize your order.</p>
    </div>
    <section id="isk0s5e" class="checkout-grid">
        <div id="i9hqu6z" class="items-column">
            <div id="ir8c0rw" class="cjiayo-t-border section-card">
                <div id="i75okjg" class="section-header">
                    <h2 id="idyxgis" class="cjiayo-t-h2 section-title">Your Cart</h2><button type="button" id="toggleSummaryBtn"
                                                                                             aria-controls="isfnces" aria-expanded="false" class="cjiayo-t-button summary-toggle-btn"><img
                        src="${gcv}icons/checkout/panel-right-open.svg" alt="" />
                    Summary
                </button>
                </div>
                <ul id="ixacnr5" class="cart-items-list">

<!-- ================ cart items ============================================================================================= -->
                    <li id="il24rld" class="cart-row"><img
                            src="https://www.2pots2cook.com/wp-content/uploads/2021/03/Truffle-Tagliatelle-Recipe-7.jpg"
                            alt="Dish image" id="ifl9wzh" class="cart-image" />
                        <div id="iod3oqp" class="cart-details">
                            <div id="ibibdme" class="cart-top-row">
                                <div id="igrablk" class="title-and-meta">
                                    <h3 id="icg6ymq-2" class="item-title">
                                        Truffle Tagliatelle
                                        <span class="badge badge-special">Chef's Special</span><span
                                            class="badge badge-veg">Vegetarian</span>
                                    </h3>
                                    <p id="ibrj993-2" class="item-meta">Fresh pasta, black truffle cream, parmigiano</p>
                                </div><button type="button" aria-label="Remove item" id="i9zs7gt" class="remove-button"><img
                                    src="${gcv}icons/checkout/trash.svg" alt="" id="iv7gwg6"
                                    class="trash-icon" />
                                Remove
                            </button>
                            </div>
                            <div id="i4i3xw2" class="controls-row">
                                <div id="ik60rj9" class="cjiayo-t-border quantity-control"><button type="button"
                                                                                                   aria-label="Decrease quantity" data-qty-action="dec" id="ikjkd4k" class="qty-minus"><img
                                        src="${gcv}icons/checkout/minus.svg" alt="" id="i7tgpsj"
                                        class="minus-icon" /></button><input type="number" min="1" value="1" aria-label="Quantity"
                                                                             data-qty-input="" id="i0e9t0m" class="qty-input" /><button type="button"
                                                                                                                                        aria-label="Increase quantity" data-qty-action="inc" id="i3p9sbl" class="qty-plus"><img
                                        src="${gcv}icons/checkout/plus.svg" alt="" id="iu0is6g"
                                        class="plus-icon" /></button></div>
                                <div id="i9zudug" class="price-block">
                                    <div id="ixu5bif" class="unit-price">Unit: $22.00</div>
                                    <div data-line-total="" data-unit="22" id="iejwosr" class="line-total">$22.00</div>
                                </div>
                            </div>
                        </div>
                    </li>
<!-- ======================================================================================================================= -->

                </ul>
                <section id="cart-price-summary-block" class="cjiayo-t-border section-card">
                    <div id="inin4x8" class="summary-inner">
                        <div class="summary-header">
                            <h3 class="summary-title"><img src="${gcv}icons/checkout/calculator.svg"
                                                           alt="Calculator icon" class="summary-icon" />
                                Price Summary
                            </h3>
                        </div>
                        <div class="summary-rows">
                            <div class="row"><span>Subtotal</span><span id="cpSubtotal" class="right-col">$0.00</span></div>
                            <div class="row"><span>Estimated Tax (8%)</span><span id="cpTax" class="right-col">$0.00</span></div>
                            <div class="row"><span>Delivery Fee</span><span id="cpDelivery" class="right-col">$4.00</span></div>
                            <div class="row-emphasis"><span class="total-label">Total</span><span id="cpTotal"
                                                                                                  class="total-value">$0.00</span></div>
                            <p class="hint">Updates automatically when quantities change or items are removed.</p>
                        </div>
                        <div class="divider"></div>
                        <div id="i22i91t" class="note-row"><label for="order-notes" id="iot2jyl" class="note-label">Special
                            instructions</label>
                            <div class="cjiayo-t-border input-wrapper"><textarea id="order-notes" rows="3"
                                                                                 placeholder="Add notes for the kitchen, allergies, or delivery details..."
                                                                                 class="note-textarea"></textarea></div>
                        </div>
                    </div>
                    <script>
                        (function () {
                            const format = (n) => '$' + n.toFixed(2);
                            const cartList = document.querySelector('#ixacnr5');
                            const summary = {
                                subtotal: document.querySelector('#cpSubtotal'),
                                tax: document.querySelector('#cpTax'),
                                delivery: document.querySelector('#cpDelivery'),
                                total: document.querySelector('#cpTotal')
                            };

                            const DELIVERY_FEE = 4.00;
                            const TAX_RATE = 0.08;

                            function calculate() {
                                let subtotal = 0;
                                document.querySelectorAll('#ixacnr5 [data-line-total]').forEach(el => {
                                    const unit = parseFloat(el.getAttribute('data-unit') || '0');
                                    const row = el.closest('.cart-row');
                                    const qtyInput = row ? row.querySelector('[data-qty-input]') : null;
                                    const qty = Math.max(1, parseInt(qtyInput?.value || '1', 10));
                                    subtotal += unit * qty;
                                });

                                const tax = subtotal * TAX_RATE;
                                const delivery = DELIVERY_FEE;
                                const total = subtotal + tax + delivery;

                                if (summary.subtotal) summary.subtotal.textContent = format(subtotal);
                                if (summary.tax) summary.tax.textContent = format(tax);
                                if (summary.delivery) summary.delivery.textContent = format(delivery);
                                if (summary.total) summary.total.textContent = format(total);
                            }

                            function bindQuantityListeners() {
                                document.querySelectorAll('#ixacnr5 [data-qty-action]').forEach(btn => {
                                    btn.addEventListener('click', () => {
                                        setTimeout(calculate, 10);
                                    });
                                });
                                document.querySelectorAll('#ixacnr5 [data-qty-input]').forEach(inp => {
                                    ['input', 'change', 'blur'].forEach(ev => {
                                        inp.addEventListener(ev, () => setTimeout(calculate, 10));
                                    });
                                });
                            }

                            function bindRemoveListeners() {
                                document.querySelectorAll('#ixacnr5 .remove-button').forEach(btn => {
                                    btn.addEventListener('click', () => {
                                        const row = btn.closest('.cart-row');
                                        if (row) {
                                            row.parentNode.removeChild(row);
                                            calculate();
                                        }
                                    });
                                });
                            }

                            function observeCartMutations() {
                                if (!cartList) return;
                                const observer = new MutationObserver(() => {
                                    bindQuantityListeners();
                                    bindRemoveListeners();
                                    calculate();
                                });
                                observer.observe(cartList, {
                                    childList: true,
                                    subtree: true
                                });
                            }

                            bindQuantityListeners();
                            bindRemoveListeners();
                            observeCartMutations();
                            calculate();
                        })();
                    </script>
                </section>
            </div>
            <div class="cjiayo-t-border payment-methods-card">
                <div class="section-header">
                    <h2 id="iqfupl8" class="cjiayo-t-h2 section-title">Payment</h2>
                </div>
                <div class="payment-body">
                    <div class="radio-group"><label class="cjiayo-t-border radio-item"><span class="radio-label">Pay on
                  Delivery</span><input type="radio" name="payment" checked class="radio-input" /><span
                            class="radio-visual"><span class="radio-dot"></span></span></label><label
                            class="cjiayo-t-border radio-item"><span class="radio-label">Credit / Debit Card</span><input
                            type="radio" name="payment" class="radio-input" /><span class="radio-visual"><span
                            class="radio-dot"></span></span></label><label class="cjiayo-t-border radio-item"><span
                            class="radio-label">Digital Wallet</span><input type="radio" name="payment"
                                                                            class="radio-input" /><span class="radio-visual"><span class="radio-dot"></span></span></label></div>
                    <p class="payment-hint">Securely process your payment. You can also choose to pay when the order arrives.
                    </p>
                </div>
            </div>
        </div>
        <aside id="isfnces" class="cart-sidebar">
            <div id="i0scn8x" class="cjiayo-t-border sidebar-card">
                <div class="sidebar-header">
                    <h3 id="in2ovay" class="sidebar-title">Order Summary</h3><img
                        src="${gcv}icons/checkout/receipt.svg" alt="" class="receipt-icon" />
                </div>
                <div id="ipmg5fs" class="sidebar-body">
                    <div id="iopnznb" class="destination-section">
                        <div class="dest-header"><span class="dest-label">Deliver to</span><button type="button"
                                                                                                   id="chooseAddressBtn" aria-controls="addressPanel" aria-expanded="false"
                                                                                                   class="cjiayo-t-link choose-address-button"><img
                                src="${gcv}icons/checkout/map-pin.svg?color=%237A2E2E" alt="" class="mappin-icon" />
                            Choose saved address
                        </button></div>
                        <div class="cjiayo-t-border selected-address">
                            <p class="address-line">No address selected</p>
                            <p class="address-hint">Select or add a delivery address below.</p>
                        </div>
                        <div id="addressPanel" class="address-panel">
                            <ul class="address-list">
                                <li class="cjiayo-t-border address-item"><label class="address-radio-label"><input type="radio"
                                                                                                                   name="address" value="Home • 21 Olive St, Apt 5, Springfield" checked class="address-radio" />
                                    <div>
                                        <div class="address-name">Home</div>
                                        <div class="address-full">21 Olive St, Apt 5, Springfield</div>
                                    </div>
                                </label><button type="button" class="cjiayo-t-border edit-address-button">Edit</button></li>
                                <li class="cjiayo-t-border address-item"><label class="address-radio-label"><input type="radio"
                                                                                                                   name="address" value="Work • 9 Market Ave, Suite 300, Springfield" class="address-radio" />
                                    <div>
                                        <div class="address-name">Work</div>
                                        <div class="address-full">9 Market Ave, Suite 300, Springfield</div>
                                    </div>
                                </label><button type="button" class="cjiayo-t-border edit-address-button">Edit</button></li>
                            </ul>
                            <div class="address-actions"><button type="button" class="add-address-button">Add New
                                Address</button><button type="button" id="confirmAddressBtn"
                                                        class="cjiayo-t-button confirm-address-button">Use this address</button></div>
                        </div>
                    </div>
                    <div class="divider"></div>
                    <div id="i545a4h" class="summary-rows">
                        <div class="row"><span>Subtotal</span><span id="subtotalValue">$62.50</span></div>
                        <div class="row"><span>Delivery</span><span id="deliveryValue">$4.00</span></div>
                        <div class="row"><span>Tax (7%)</span><span id="taxValue">$4.66</span></div>
                        <div class="row-emphasis"><span class="total-label">Total</span><span id="totalValue"
                                                                                              class="total-value">$71.16</span></div>
                    </div>
                    <div id="i84h6kg" class="promo-field"><label for="promo" class="promo-label">Promo code</label>
                        <div class="promo-input-group">
                            <div class="cjiayo-t-border input-wrapper"><input type="text" id="promo" placeholder="Enter code"
                                                                              class="promo-input" /></div><button type="button" id="applyPromoBtn"
                                                                                                                  class="cjiayo-t-border apply-promo">Apply</button>
                        </div>
                        <p id="promoHint" class="promo-hint">One promo per order.</p>
                    </div>
                    <div class="cta-block"><a href="order-status"
                                              class="cjiayo-t-button summarize-order-button">Summarize Order</a>
                        <p class="secure-note"><img src="${gcv}icons/checkout/shield-check.svg"
                                                    alt="" class="lock-icon" />
                            Transactions are secure and encrypted.
                        </p>
                    </div>
                </div>
            </div>
        </aside>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script id="ioixjkb">
    (function () {
        const $ = (sel, ctx = document) => ctx.querySelector(sel);
        const $$ = (sel, ctx = document) => Array.from(ctx.querySelectorAll(sel));
        const format = (n) => '$' + n.toFixed(2);

        function recalc() {
            let subtotal = 0;
            $$('[data-line-total]').forEach(el => {
                const unit = parseFloat(el.getAttribute('data-unit'));
                const row = el.closest('.cart-row');
                const qtyInput = row?.querySelector('[data-qty-input]');
                const qty = Math.max(1, parseInt(qtyInput?.value || '1', 10));
                const total = unit * qty;
                el.textContent = format(total);
                subtotal += total;
            });

            $('#subtotalValue').textContent = format(subtotal);
            const delivery = 4.00;
            $('#deliveryValue').textContent = format(delivery);
            const tax = subtotal * 0.07;
            $('#taxValue').textContent = format(tax);
            const grand = subtotal + delivery + tax;
            $('#totalValue').textContent = format(grand);

            const cartCard = $('#ir8c0rw');
            const cartSubtotalEl = cartCard?.querySelector('[data-cjiayo-name="Cart Subtotal Value"]');
            const cartDeliveryEl = cartCard?.querySelector('[data-cjiayo-name="Cart Delivery Value"]');
            const cartTaxEl = cartCard?.querySelector('[data-cjiayo-name="Cart Tax Value"]');
            const cartTotalEl = cartCard?.querySelector('[data-cjiayo-name="Cart Total Value"]');
            if (cartSubtotalEl) cartSubtotalEl.textContent = format(subtotal);
            if (cartDeliveryEl) cartDeliveryEl.textContent = format(delivery);
            if (cartTaxEl) cartTaxEl.textContent = format(tax);
            if (cartTotalEl) cartTotalEl.textContent = format(grand);
        }

        $$('[data-qty-action]').forEach(btn => {
            btn.addEventListener('click', () => {
                const row = btn.closest('.cart-row');
                const input = row.querySelector('[data-qty-input]');
                const action = btn.getAttribute('data-qty-action');
                let current = Math.max(1, parseInt(input.value || '1', 10));
                current = action === 'inc' ? current + 1 : Math.max(1, current - 1);
                input.value = current;
                recalc();
                row.classList.add('ring-1', 'ring-[rgba(228,216,200,1)]', 'bg-[rgba(255,253,248,0.9)]');
                setTimeout(() => {
                    row.classList.remove('ring-1', 'ring-[rgba(228,216,200,1)]', 'bg-[rgba(255,253,248,0.9)]');
                }, 250);
            });
        });

        $$('[data-qty-input]').forEach(inp => {
            inp.addEventListener('input', () => {
                if (inp.value === '' || parseInt(inp.value, 10) < 1) inp.value = 1;
                recalc();
            });
            inp.addEventListener('blur', () => {
                if (parseInt(inp.value, 10) < 1) inp.value = 1;
                recalc();
            });
        });

        const chooseBtn = $('#chooseAddressBtn');
        const panel = $('#addressPanel');
        const confirmBtn = $('#confirmAddressBtn');
        const selectedBox = panel?.previousElementSibling;

        chooseBtn?.addEventListener('click', (e) => {
            e.preventDefault();
            const expanded = chooseBtn.getAttribute('aria-expanded') === 'true';
            chooseBtn.setAttribute('aria-expanded', String(!expanded));
            if (panel) panel.classList.toggle('is-open', !expanded);
        });

        confirmBtn?.addEventListener('click', () => {
            const checked = panel.querySelector('input[name="address"]:checked');
            if (checked && selectedBox) {
                const lines = checked.value.split('•').map(s => s.trim());
                selectedBox.querySelector('.address-line').textContent = lines[0];
                const hint = selectedBox.querySelector('.address-hint');
                hint.textContent = lines[1] || '';
                chooseBtn.setAttribute('aria-expanded', 'false');
                panel.classList.remove('is-open');
            }
        });

        $('#applyPromoBtn')?.addEventListener('click', () => {
            const code = ($('#promo')?.value || '').trim().toUpperCase();
            const hint = $('#promoHint');
            if (code === 'WELCOME10') {
                hint.textContent = 'Promo applied: 10% off subtotal.';
                hint.classList.remove('text-[rgba(59,47,47,0.7)]');
                hint.classList.add('text-[color:var(--cjiayo-t-color-success)]');
            } else {
                hint.textContent = 'Invalid code. Try WELCOME10.';
                hint.classList.remove('text-[color:var(--cjiayo-t-color-success)]');
                hint.classList.add('text-[color:var(--cjiayo-t-color-error)]');
                setTimeout(() => {
                    hint.textContent = 'One promo per order.';
                    hint.classList.remove('text-[color:var(--cjiayo-t-color-error)]');
                    hint.classList.add('text-[rgba(59,47,47,0.7)]');
                }, 2000);
            }
            recalc();
        });

        const toggleSummaryBtn = $('#toggleSummaryBtn');
        const sidebar = $('#isfnces');
        toggleSummaryBtn?.addEventListener('click', () => {
            const isOpen = sidebar.classList.contains('is-open');
            sidebar.classList.toggle('is-open', !isOpen);
            toggleSummaryBtn.setAttribute('aria-expanded', String(!isOpen));
        });

        recalc();
    })();
</script>
<script data-scope="add-address-modal">
    (function () {
        const overlay = document.querySelector('[data-js="add-address-modal"]');
        if (!overlay) return;

        const openBtn = document.querySelector('#i6h3r3c'); // "Add New Address" button
        const closeBtn = overlay.querySelector('[data-js="close"]');
        const cancelLink = overlay.querySelector('[data-js="cancel"]');
        const saveBtn = overlay.querySelector('[data-js="save"]');

        const nameInp = overlay.querySelector('[data-js="addr-name"]');
        const streetInp = overlay.querySelector('[data-js="addr-street"]');
        const cityInp = overlay.querySelector('[data-js="addr-city"]');
        const stateInp = overlay.querySelector('[data-js="addr-state"]');
        const postalInp = overlay.querySelector('[data-js="addr-postal"]');
        const extraInp = overlay.querySelector('[data-js="addr-extra"]');

        const sidebarList = document.querySelector('#ihvssss'); // Sidebar address list
        const selectedBox = document.querySelector('#izadc8r');
        const chooseBtn = document.querySelector('#chooseAddressBtn');
        const panel = document.querySelector('#addressPanel');

        function openModal() {
            overlay.classList.add('is-open');
            overlay.setAttribute('aria-hidden', 'false');
            setTimeout(() => nameInp?.focus(), 10);
        }

        function closeModal() {
            overlay.classList.remove('is-open');
            overlay.setAttribute('aria-hidden', 'true');
            openBtn?.focus();
        }

        function highlightInvalid(el) {
            const wrap = el?.closest('.input-wrapper');
            if (wrap) {
                wrap.style.boxShadow = '0 0 0 2px rgba(198,40,40,0.5)';
                setTimeout(() => {
                    wrap.style.boxShadow = '';
                }, 600);
            }
        }

        function validate() {
            let ok = true;
            [nameInp, streetInp, cityInp].forEach(inp => {
                if (!inp.value.trim()) {
                    ok = false;
                    highlightInvalid(inp);
                }
            });
            return ok;
        }

        function saveAddress() {
            if (!validate()) return;

            const label = nameInp.value.trim();
            const street = streetInp.value.trim();
            const city = cityInp.value.trim();
            const state = stateInp.value.trim();
            const postal = postalInp.value.trim();
            const extra = extraInp.value.trim();

            const fullParts = [street, city, state, postal].filter(Boolean);
            const full = fullParts.join(', ') + (extra ? ` • ${extra}` : '');

            if (sidebarList) {
                sidebarList.querySelectorAll('input[type="radio"][name="address"]').forEach(r => r.checked = false);

                const li = document.createElement('li');
                li.className = 'cjiayo-t-border address-item';
                li.innerHTML = `
          <label class="address-radio-label">
            <input type="radio" name="address" value="${label} • ${full}" class="address-radio" checked style="margin-top:0.25rem;">
            <div>
              <div class="address-name">${label}</div>
              <div class="address-full">${full}</div>
            </div>
          </label>
          <button type="button" class="cjiayo-t-border edit-address-button">Edit</button>
        `;
                sidebarList.appendChild(li);

                if (selectedBox) {
                    const line = selectedBox.querySelector('.address-line');
                    const hint = selectedBox.querySelector('.address-hint');
                    if (line) line.textContent = label;
                    if (hint) hint.textContent = full;
                }

                if (panel) {
                    chooseBtn?.setAttribute('aria-expanded', 'false');
                    panel.classList.remove('is-open');
                }
            }

            [nameInp, streetInp, cityInp, stateInp, postalInp, extraInp].forEach(inp => inp.value = '');
            closeModal();
        }

        openBtn?.addEventListener('click', (e) => {

        });

        openBtn?.addEventListener('click', (e) => {
            e.preventDefault();
            openModal();
        });

        closeBtn?.addEventListener('click', (e) => {
            e.preventDefault();
            closeModal();
        });

        cancelLink?.addEventListener('click', (e) => {
            e.preventDefault();
            closeModal();
        });

        overlay.addEventListener('click', (e) => {
            if (e.target === overlay) closeModal();
        });

        document.addEventListener('keydown', (e) => {
            if (overlay.classList.contains('is-open') && e.key === 'Escape') closeModal();
        });

        saveBtn?.addEventListener('click', saveAddress);
    })();
</script>
</body>

</html>
