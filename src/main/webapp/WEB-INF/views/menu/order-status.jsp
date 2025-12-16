<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Order Status | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link
            href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:wght@400;600;700&amp;family=Inter:wght@400;500;600;700&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>

<body id="idfm8mk" class="cjiayo-t-body cls-uzhqtl">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main class="main-content">
    <section class="confirmation-header">
        <div class="confirmation-title-block">
            <div class="breadcrumbs"><a href="checkout"
                                        class="cjiayo-t-link breadcrumb-link">Checkout</a><span class="breadcrumb-divider">/</span><span
                    class="breadcrumb-current">Confirmation</span></div>
            <h1 class="cjiayo-t-h1 confirmation-heading">Thank you! Your order is confirmed.</h1>
            <p class="confirmation-subtext">We’re on it. Below is your order timeline and estimated ready time.</p>
            <div class="order-badge-row">
                <div class="order-number-badge"><img src="${gcv}icons/status/receipt.svg"
                                                     alt="Receipt icon" class="icon-order-badge" /><span class="order-number-label">Order #</span><strong
                        id="orderId" class="order-number-value">MS-482913</strong></div>
                <div class="eta-badge"><img src="${gcv}icons/status/clock.svg" alt="Clock icon"
                                            class="icon-eta-badge" /><span class="eta-label">Estimated Ready</span><strong id="etaText"
                                                                                                                           class="eta-value">Today, 6:45 PM</strong></div>
            </div>
        </div>
        <figure class="confirmation-visual"><img
                src="${gcv}images/status/preparing.jpg"
                alt="Chef preparing dishes in the kitchen" class="confirmation-image" />
            <figcaption class="confirmation-caption">Our kitchen has started preparing your order.</figcaption>
        </figure>
    </section>
    <section id="i6mu5z6" class="order-progress-section">
        <div class="progress-header">
            <h2 class="cjiayo-t-h2 progress-title">Order Status</h2>
            <div class="notification-toggle"><label for="notifyToggle" class="notification-label">Email/SMS
                Notifications</label><button type="button" id="notifyToggle"
                                             class="cjiayo-t-button notification-button">Enable</button></div>
        </div>
        <div id="iiyqv1x" class="progress-bar-container">
            <div class="progress-bar-track">
                <div id="progressFill" class="progress-bar-fill"></div>
            </div>
            <div class="progress-steps">
                <div class="progress-step"><span class="progress-dot"></span><span class="progress-label">Confirmed</span>
                </div>
                <div class="progress-step"><span id="dotPreparing" class="progress-dot"></span><span
                        class="progress-label">Preparing</span></div>
                <div class="progress-step"><span id="dotReady" class="progress-dot"></span><span class="progress-label">Ready
              for Pickup</span></div>
                <div class="progress-step"><span id="dotOut" class="progress-dot"></span><span class="progress-label">Out for
              Delivery</span></div>
            </div>
        </div>
        <div class="status-timeline">
            <div class="timeline-card">
                <div class="timeline-header">
                    <div class="timeline-title-area"><img
                            src="${gcv}icons/status/circle-check-big.svg" alt="Confirmed icon"
                            class="timeline-icon" />
                        <h3 class="timeline-title">Order Confirmed</h3>
                    </div><span class="timeline-time">6:12 PM</span>
                </div>
                <p class="timeline-description">We have received your order and sent it to the kitchen.</p>
            </div>
            <div class="timeline-card">
                <div class="timeline-header">
                    <div class="timeline-title-area"><img src="${gcv}icons/status/soup.svg"
                                                          alt="Preparing icon" class="timeline-icon" />
                        <h3 class="timeline-title">Preparing</h3>
                    </div><span class="timeline-time">In progress</span>
                </div>
                <p class="timeline-description">Our chefs are crafting your dishes with care.</p>
                <div class="kitchen-note">Special request: extra basil was noted.</div>
            </div>
            <div class="timeline-card">
                <div class="timeline-header">
                    <div class="timeline-title-area"><img src="${gcv}icons/status/bike.svg"
                                                          alt="Delivery icon" class="timeline-icon" />
                        <h3 class="timeline-title">Pickup/Delivery</h3>
                    </div><span class="timeline-time">Pending</span>
                </div>
                <p class="timeline-description">We will notify you when the order is ready for pickup or has been dispatched
                    for delivery.</p>
            </div>
        </div>
    </section>
    <section class="order-summary-section">
        <div class="summary-header">
            <h2 class="cjiayo-t-h2 summary-title">Order Summary</h2>
            <div class="summary-actions"><a href="./cart-checkout.html" id="i87daev"
                                            class="cjiayo-t-button action-button">View Receipt</a><button type="button" id="refreshStatus"
                                                                                                          class="action-button">Refresh Status</button></div>
        </div>
        <div class="summary-grid">
            <div class="summary-column">
                <h3 class="summary-subtitle">Items</h3>
                <ul class="items-list">

<!-- =============== item row ============================================================================================ -->
                    <li class="item-row">
                        <div id="iedya1r" class="item-info"><img
                                src="https://grandecheese.com/wp-content/uploads/2025/02/Margherita-Pizza-deck-oven.jpg.webp"
                                alt="Margherita Pizza" id="ilzcas3" class="item-thumbnail" />
                            <div class="item-texts"><span class="item-name">Margherita Pizza</span><span class="item-note">Thin
                    crust, extra basil</span></div>
                        </div><span id="ioegvek" class="item-price">$14.00</span>

                    </li>
<!-- ======================================================================================================================= -->

                </ul>
            </div>
            <div class="summary-column">
                <h3 class="summary-subtitle">Pickup/Delivery</h3>
                <div class="pickup-delivery-info">
                    <div class="info-row"><img src="${gcv}icons/status/map-pin.svg"
                                               alt="Map pin icon" class="info-icon" /><span class="info-text">Branch: Via Roma, 12, Firenze</span>
                    </div>
                    <div class="info-row"><img src="${gcv}icons/status/contact.svg"
                                               alt="Contact icon" class="info-icon" /><span class="info-text">Contact: +39 055 123 4567</span></div>
                    <div class="info-row"><img src="${gcv}icons/status/truck.svg"
                                               alt="Delivery truck icon" class="info-icon" /><span id="deliveryEta" class="info-text">Delivery ETA:
                Pending</span></div>
                </div>
            </div>
            <div class="summary-column">
                <h3 class="summary-subtitle">Total</h3>
                <div class="totals-list">
                    <div class="totals-row"><span class="totals-label">Subtotal</span><span class="totals-value">$29.00</span>
                    </div>
                    <div class="totals-row"><span class="totals-label">Tax</span><span class="totals-value">$2.61</span></div>
                    <div class="totals-divider"></div>
                    <div class="totals-row"><span class="totals-label">Total</span><span class="totals-value">$31.61</span>
                    </div>
                </div>
                <div class="support-actions"><a href="##" class="support-button"><img
                        src="${gcv}icons/status/life-buoy.svg" alt="Help icon"
                        class="support-icon" /><span>Contact Support</span></a><a href="./order-confirmation-status.html"
                                                                                  class="cjiayo-t-button support-button"><img src="${gcv}icons/status/route.svg"
                                                                                                                              alt="Track icon" class="support-icon" /><span>Track Delivery</span></a></div>
            </div>
        </div>
    </section>
    <section class="assistance-section">
        <div class="assistance-card"><img loading="lazy"
                                          src="${gcv}images/status/contact.jpg"
                                          alt="Customer support representative" class="assistance-image" />
            <div class="assistance-content">
                <h2 class="cjiayo-t-h2 assistance-title">Need help with your order?</h2>
                <p class="assistance-text">Our team is here to assist with changes, delivery updates, or any special requests.
                </p>
                <div class="assistance-methods">
                    <div class="assistance-method"><img src="${gcv}icons/status/phone.svg"
                                                        alt="Phone icon" class="assistance-icon" />
                        <div class="assistance-details"><span class="assistance-label">Call</span><span
                                class="assistance-value">+39 055 123 4567</span></div>
                    </div>
                    <div class="assistance-method"><img src="${gcv}icons/status/mail.svg"
                                                        alt="Mail icon" class="assistance-icon" />
                        <div class="assistance-details"><span class="assistance-label">Email</span><span
                                class="assistance-value">support@arteaaureum.com</span></div>
                    </div>
                    <div class="assistance-method"><img
                            src="${gcv}icons/status/message-circle.svg" alt="Message icon"
                            class="assistance-icon" />
                        <div class="assistance-details"><span class="assistance-label">SMS</span><span
                                class="assistance-value">+39 320 555 7890</span></div>
                    </div>
                </div>
                <div class="assistance-note">For allergy updates, please call the branch directly.</div>
            </div>
        </div>
    </section>
    <section class="status-updates-live">
        <div class="live-header">
            <h2 class="cjiayo-t-h2 live-title">Live Updates</h2><span class="live-hint">Updates appear automatically</span>
        </div>
        <div id="liveUpdates" aria-live="polite" aria-atomic="true" class="live-list">
            <div class="live-item"><img src="${gcv}icons/status/bell.svg"
                                        alt="Notification icon" class="live-icon" />
                <div class="live-content">
                    <p class="live-text">Your order has been confirmed.</p><span class="live-time">Just now</span>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script id="ijnhrbi">
    const progressFill = document.getElementById('progressFill');
    const dotConfirmed = document.getElementById('i30sgca');
    const dotPreparing = document.getElementById('dotPreparing');
    const dotReady = document.getElementById('dotReady');
    const dotOut = document.getElementById('dotOut');

    const liveUpdates = document.getElementById('liveUpdates');
    const notifyToggle = document.getElementById('notifyToggle');
    const refreshStatus = document.getElementById('refreshStatus');
    const deliveryEta = document.getElementById('deliveryEta');
    const etaText = document.getElementById('etaText');

    const cardConfirmed = document.getElementById('icai0sp');
    const cardPreparing = document.getElementById('ibooo4y');
    const cardDelivery = document.getElementById('ifvjw1x');

    let notificationsEnabled = false;
    let stage = 1; // 1: Confirmed, 2: Preparing, 3: Ready, 4: Out for Delivery
    const dots = [dotConfirmed, dotPreparing, dotReady, dotOut];
    const steps = document.querySelectorAll('#i3liths .progress-step');

    function addUpdate(text) {
        const item = document.createElement('div');
        item.setAttribute('data-cjiayo-name', 'Live Item');
        item.className = 'live-item';
        const icon = document.createElement('img');
        icon.setAttribute('data-cjiayo-name', 'Live Icon');
        icon.src = '${gcv}icons/status/bell.svg';
        icon.alt = 'Notification icon';
        icon.className = 'live-icon';
        const content = document.createElement('div');
        content.setAttribute('data-cjiayo-name', 'Live Content');
        content.className = 'live-content';
        const p = document.createElement('p');
        p.setAttribute('data-cjiayo-name', 'Live Text');
        p.className = 'live-text';
        p.textContent = text;
        const time = document.createElement('span');
        time.setAttribute('data-cjiayo-name', 'Live Time');
        time.className = 'live-time';
        time.textContent = 'Just now';
        content.appendChild(p);
        content.appendChild(time);
        item.appendChild(icon);
        item.appendChild(content);
        liveUpdates.prepend(item);
    }

    function animateFillTo(pct) {
        progressFill.classList.add('animating');
        progressFill.style.width = pct;
        window.clearTimeout(animateFillTo._t);
        animateFillTo._t = window.setTimeout(() => {
            progressFill.classList.remove('animating');
        }, 1000);
    }

    function setActiveDots(currentStage) {
        dots.forEach((d, idx) => {
            if (!d) return;
            if (idx < currentStage) {
                d.classList.add('is-active');
            } else {
                d.classList.remove('is-active');
            }
        });
        steps.forEach((stepEl, idx) => {
            if (idx === currentStage - 1) {
                stepEl.setAttribute('aria-current', 'step');
            } else {
                stepEl.removeAttribute('aria-current');
            }
        });
    }

    function setCurrentTimelineCard(currentStage) {
        [cardConfirmed, cardPreparing, cardDelivery].forEach(c => c && c.classList.remove('is-current'));
        if (currentStage === 1) {
            cardConfirmed && cardConfirmed.classList.add('is-current');
        } else if (currentStage === 2) {
            cardPreparing && cardPreparing.classList.add('is-current');
        } else if (currentStage >= 3) {
            cardDelivery && cardDelivery.classList.add('is-current');
        }
    }

    function updateStage(nextStage) {
        stage = nextStage;
        setActiveDots(stage);
        setCurrentTimelineCard(stage);

        if (stage === 2) {
            animateFillTo('50%');
            addUpdate('Your order is now being prepared.');
            etaText.textContent = 'Today, 6:45 PM';
            deliveryEta.textContent = 'Delivery ETA: 7:10 PM';
        } else if (stage === 3) {
            animateFillTo('75%');
            addUpdate('Your order is ready for pickup.');
            etaText.textContent = 'Ready now';
            deliveryEta.textContent = 'Delivery ETA: 7:05 PM';
        } else if (stage === 4) {
            animateFillTo('100%');
            addUpdate('Your order is out for delivery.');
            deliveryEta.textContent = 'Delivery ETA: 6:58 PM';
        }

        if (notificationsEnabled) {
            console.log('Notification sent:', stage);
        }
    }

    notifyToggle.addEventListener('click', () => {
        notificationsEnabled = !notificationsEnabled;
        notifyToggle.textContent = notificationsEnabled ? 'Enabled' : 'Enable';
        addUpdate(notificationsEnabled ? 'Notifications enabled: You will receive email/SMS updates.' : 'Notifications disabled.');
    });

    refreshStatus.addEventListener('click', () => {
        if (stage < 4) updateStage(stage + 1);
    });

    setActiveDots(stage);
    setCurrentTimelineCard(stage);
    animateFillTo(getComputedStyle(progressFill).width || '30%');

    setTimeout(() => updateStage(2), 2500);
    setTimeout(() => updateStage(3), 6000);
    setTimeout(() => updateStage(4), 9500);
</script>
</body>

</html>
