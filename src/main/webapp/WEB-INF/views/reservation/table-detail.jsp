<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" class="cjiayo-t-body">
<head>
    <title>Reserve Your Table — Detailed Reservation</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="" />
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&amp;family=Playfair+Display:wght@500;600;700&amp;display=swap"
            rel="stylesheet"
    />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>
<body id="it8d1hs" class="cjiayo-t-body body-root">
<jsp:include page="/WEB-INF/views/layout/header.jsp" />
<div class="header-spacer"></div>
<main id="i4z7xumi" class="main-content">
    <section id="i03awz09" class="hero-section">
        <div id="ibs3rq6j" class="hero-container">
            <div id="iqjuuylb" class="hero-grid">
                <div class="hero-text">
                    <div id="iypytpkz" class="breadcrumbs">
                        <a
                                href="./index.html"
                                id="ifvt2d0p"
                                class="cjiayo-t-link breadcrumb-link"
                        >Home</a
                        ><span id="i5b2qi2f">/</span
                    ><a
                            href="./table-reservation.html"
                            id="immh85c7"
                            class="cjiayo-t-link breadcrumb-link"
                    >Table Reservation</a
                    ><span id="ilhlee8f">/</span
                    ><span id="iqudso1p" class="breadcrumb-current"
                    >Reserve Your Table</span
                    >
                    </div>
                    <h1 id="i9t6nzcj" class="cjiayo-t-h1 hero-title">
                        Reserve Your Table
                    </h1>
                    <p class="hero-subtitle">
                        Choose your date, time, and party size. We’ll hold the best
                        table for your occasion.
                    </p>
                    <div class="hero-highlights">
                        <div class="hero-highlight-item">
                            <img
                                    src="${gcv}icons/reservation/clock.svg"
                                    alt=""
                                    class="hero-icon"
                            /><span>Same-day bookings</span>
                        </div>
                        <div class="hero-highlight-item">
                            <img
                                    src="${gcv}icons/reservation/users.svg"
                                    alt=""
                                    class="hero-icon"
                            /><span>Up to 12 guests online</span>
                        </div>
                        <div class="hero-highlight-item">
                            <img
                                    src="${gcv}icons/reservation/shield-check.svg"
                                    alt=""
                                    class="hero-icon"
                            /><span>Instant confirmation</span>
                        </div>
                    </div>
                </div>
                <div class="hero-image-wrapper">
                    <div class="hero-image-card">
                        <img
                                src="${gcv}images/reservation/table.jpg"
                                alt="Warmly lit restaurant table setting"
                                loading="eager"
                                class="hero-image"
                        />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="i4g7zhdc" class="reservation-section">
        <div class="reservation-container">
            <div class="reservation-layout">
                <div class="form-column">
                    <div id="i2hqu43e" class="cjiayo-t-border form-card">
                        <div class="form-header">
                            <h2 id="i37q3wvh" class="cjiayo-t-h2 form-title">
                                Reservation Details
                            </h2>
                            <span class="selected-table-label"
                            >Dining Room • Standard seating</span
                            >
                        </div>
                        <form
                                method="get"
                                id="reservationForm"
                                novalidate=""
                                class="reservation-form"
                        >
                            <div id="iu7xwu1t" class="field-row">
                                <div id="ij6zauf3" class="field-group">
                                    <label for="fullName" id="i99nun9m" class="field-label"
                                    >Full Name</label
                                    >
                                    <div id="i0vu895u" class="input-wrapper">
                                        <img
                                                src="${gcv}icons/reservation/user.svg"
                                                alt=""
                                                id="iht8id7z"
                                                class="input-icon"
                                        /><input
                                            type="text"
                                            id="fullName-4"
                                            name="fullName"
                                            required
                                            placeholder="Jane Doe"
                                            class="text-input"
                                    />
                                    </div>
                                    <span id="ip10lc1g" class="field-hint"
                                    >Please use the name you’ll check in with.</span
                                    >
                                </div>
                                <div id="ie10gz7z" class="field-group">
                                    <label for="contact" id="i0q86mld" class="field-label"
                                    >Contact (Email or Phone)</label
                                    >
                                    <div id="i1031o3p" class="input-wrapper">
                                        <img
                                                src="${gcv}icons/reservation/at-sign.svg"
                                                alt=""
                                                id="idlw2kls"
                                                class="input-icon"
                                        /><input
                                            type="text"
                                            id="contact-3"
                                            name="contact"
                                            required
                                            placeholder="jane@email.com or (555) 123‑4567"
                                            class="text-input"
                                    />
                                    </div>
                                    <span id="i7v9skpg" class="field-hint"
                                    >We’ll send your confirmation here.</span
                                    >
                                </div>
                            </div>
                            <div id="iujrdmng" class="field-row">
                                <div class="field-group">
                                    <label for="resDate" class="field-label"
                                    >Reservation Date</label
                                    >
                                    <div class="input-wrapper">
                                        <img
                                                src="${gcv}icons/reservation/calendar.svg"
                                                alt=""
                                                class="input-icon"
                                        /><input
                                            type="date"
                                            id="resDate"
                                            name="resDate"
                                            required
                                            class="date-input"
                                    />
                                    </div>
                                </div>
                                <div id="idd7kx5i" class="field-group">
                                    <label class="field-label">Available Hours</label>
                                    <div class="time-slots-wrapper">
                                        <div class="time-slots-grid">
                                            <label class="radio-item"
                                            ><input
                                                    type="radio"
                                                    name="resTime"
                                                    value="17:00"
                                                    required
                                                    class="radio-input"
                                            /><span class="radio-label">5:00 PM</span></label
                                            ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="17:30"
                                                class="radio-input"
                                        /><span class="radio-label">5:30 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="18:00"
                                                class="radio-input"
                                        /><span class="radio-label">6:00 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="18:30"
                                                class="radio-input"
                                        /><span class="radio-label">6:30 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="19:00"
                                                class="radio-input"
                                        /><span class="radio-label">7:00 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="19:30"
                                                class="radio-input"
                                        /><span class="radio-label">7:30 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="20:00"
                                                class="radio-input"
                                        /><span class="radio-label">8:00 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="20:30"
                                                class="radio-input"
                                        /><span class="radio-label">8:30 PM</span></label
                                        ><label class="radio-item"
                                        ><input
                                                type="radio"
                                                name="resTime"
                                                value="21:00"
                                                class="radio-input"
                                        /><span class="radio-label">9:00 PM</span></label
                                        >
                                        </div>
                                    </div>
                                    <span class="field-hint"
                                    >Times update based on date and party size.</span
                                    >
                                </div>
                                <div id="i19ei34m" class="field-group">
                                    <label for="guests" class="field-label">Guests</label>
                                    <div class="input-wrapper">
                                        <button
                                                type="button"
                                                id="decGuests"
                                                class="stepper-decrease"
                                        >
                                            <img
                                                    src="${gcv}icons/reservation/minus.svg"
                                                    alt=""
                                                    class="minus-icon"
                                            /></button
                                        ><input
                                            type="number"
                                            id="guests"
                                            name="guests"
                                            min="1"
                                            max="12"
                                            value="2"
                                            required
                                            class="number-input"
                                    /><button
                                            type="button"
                                            id="incGuests"
                                            class="stepper-increase"
                                    >
                                        <img
                                                src="${gcv}icons/reservation/plus.svg"
                                                alt=""
                                                class="plus-icon"
                                        />
                                    </button>
                                    </div>
                                    <span class="field-hint"
                                    >For parties above 12, please call us.</span
                                    >
                                </div>
                            </div>
                            <div class="field-group">
                                <label for="requests" class="field-label"
                                >Special Requests</label
                                >
                                <div class="input-wrapper">
                      <textarea
                              id="requests"
                              name="requests"
                              rows="3"
                              placeholder="Allergies, wheelchair access, high chair, birthday note..."
                              class="textarea-input"
                      ></textarea>
                                </div>
                            </div>
                            <div class="consent-row">
                                <input
                                        type="checkbox"
                                        id="policy"
                                        required
                                        class="checkbox-input"
                                /><label for="policy" class="checkbox-label"
                            >I agree to the reservation policies below.</label
                            >
                            </div>
                            <div class="form-actions">
                                <a
                                        href="./table-reservation.html"
                                        id="iocdwd8t"
                                        class="cjiayo-t-link back-link"
                                ><img
                                        src="${gcv}icons/reservation/arrow-left.svg"
                                        alt=""
                                        id="igzmdydj"
                                        class="back-icon"
                                />
                                    Back to Tables </a
                                ><button
                                    type="submit"
                                    id="submitReservation"
                                    class="cjiayo-t-button submit-button"
                            >
                                <img
                                        src="${gcv}icons/reservation/badge-check.svg"
                                        alt=""
                                        class="submit-icon"
                                />
                                Confirm Reservation
                            </button>
                            </div>
                        </form>
                    </div>
                    <div
                            id="confirmationPanel"
                            aria-live="polite"
                            class="cjiayo-t-border confirmation-panel"
                    >
                        <div class="confirmation-header">
                            <div class="confirmation-title-group">
                                <img
                                        src="${gcv}icons/reservation/party-popper.svg"
                                        alt=""
                                        class="confirmation-icon"
                                />
                                <h3 id="ih488yrq" class="cjiayo-t-h2 confirmation-title">
                                    Reservation Confirmed
                                </h3>
                            </div>
                            <a
                                    href="./order-confirmation-status.html"
                                    id="ifnptq98"
                                    class="cjiayo-t-link view-orders-link"
                            >
                                Track Status
                                <img
                                        src="${gcv}icons/reservation/chevron-right.svg"
                                        alt=""
                                        id="im9bxhei"
                                        class="chevron-icon"
                                /></a>
                        </div>
                        <div class="confirmation-body">
                            <div class="summary-column">
                                <ul class="summary-list">
                                    <li class="summary-item">
                        <span>Name</span
                        ><strong id="sumName" class="summary-value">—</strong>
                                    </li>
                                    <li class="summary-item">
                        <span>Date</span
                        ><strong id="sumDate" class="summary-value">—</strong>
                                    </li>
                                    <li class="summary-item">
                        <span>Time</span
                        ><strong id="sumTime" class="summary-value">—</strong>
                                    </li>
                                    <li class="summary-item">
                        <span>Guests</span
                        ><strong id="sumGuests" class="summary-value">—</strong>
                                    </li>
                                </ul>
                                <p class="confirmation-note">
                                    We’ve sent a confirmation to your contact. Please arrive
                                    within 10 minutes of your reservation time.
                                </p>
                            </div>
                            <div class="image-column">
                                <div class="image-card">
                                    <img
                                            src="${gcv}images/reservation/hid.jpg"
                                            alt="Guests celebrating at a cozy table"
                                            loading="lazy"
                                            class="confirmation-image"
                                    />
                                </div>
                            </div>
                        </div>
                        <div class="confirmation-actions">
                            <a
                                    href="./checkout.html"
                                    id="ikhtguzu"
                                    class="cjiayo-t-button order-link"
                            >
                                Go to Checkout </a
                            ><a href="#reservationForm" class="cjiayo-t-link edit-link"
                        >Edit Reservation</a
                        >
                        </div>
                    </div>
                </div>
                <div class="info-column">
                    <div class="cjiayo-t-border availability-card">
                        <div class="availability-header">
                            <h3 id="ijc3x537" class="cjiayo-t-h2 availability-title">
                                Table Info &amp; Hours
                            </h3>
                            <span class="capacity-badge"
                            ><img
                                    src="${gcv}icons/reservation/users.svg"
                                    alt=""
                                    class="users-icon"
                            />
                    Up to 4 guests
                  </span>
                        </div>
                        <div class="availability-body">
                            <div class="mini-map">
                                <img
                                        src="${gcv}images/reservation/intro.jpg"
                                        alt="Restaurant interior near the selected table"
                                        loading="lazy"
                                        class="map-image"
                                />
                            </div>
                            <div class="hours-grid">
                                <div class="hours-header">
                                    <img
                                            src="${gcv}icons/reservation/clock-4.svg"
                                            alt=""
                                            class="clock-icon"
                                    /><span class="hours-title">Service windows</span>
                                </div>
                                <div class="service-windows">
                      <span class="service-item">Lunch • 12:00–15:00</span
                      ><span class="service-item">Dinner • 17:00–22:00</span
                                ><span class="service-item"
                                >Sun Brunch • 10:00–13:00</span
                                >
                                </div>
                            </div>
                            <div class="perks-list">
                                <div class="perks-header">
                                    <img
                                            src="${gcv}icons/reservation/sparkles.svg"
                                            alt=""
                                            class="perk-icon"
                                    /><span class="perks-title">Perks for your table</span>
                                </div>
                                <ul class="perks-items">
                                    <li class="perk-item">
                                        <img
                                                src="${gcv}icons/reservation/check.svg"
                                                alt=""
                                                class="check-icon"
                                        />
                                        Window seating
                                    </li>
                                    <li class="perk-item">
                                        <img
                                                src="${gcv}icons/reservation/check.svg"
                                                alt=""
                                                class="check-icon"
                                        />
                                        Wheelchair access
                                    </li>
                                    <li class="perk-item">
                                        <img
                                                src="${gcv}icons/reservation/check.svg"
                                                alt=""
                                                class="check-icon"
                                        />
                                        High-chair available
                                    </li>
                                    <li class="perk-item">
                                        <img
                                                src="${gcv}icons/reservation/check.svg"
                                                alt=""
                                                class="check-icon"
                                        />
                                        Quiet corner
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="cjiayo-t-border policies-card">
                        <div class="policies-header">
                            <img
                                    src="${gcv}icons/reservation/info.svg"
                                    alt=""
                                    class="info-icon"
                            />
                            <h3 id="ifwzniil" class="cjiayo-t-h2 policies-title">
                                Reservation Policies
                            </h3>
                        </div>
                        <div class="policies-body">
                            <ul class="policy-list">
                                <li class="policy-item">
                                    <img
                                            src="${gcv}icons/reservation/bell.svg"
                                            alt=""
                                            class="policy-icon"
                                    /><span
                                >We hold tables for 10 minutes past your reserved time.
                        After that, seating is subject to availability.</span
                                >
                                </li>
                                <li class="policy-item">
                                    <img
                                            src="${gcv}icons/reservation/baby.svg"
                                            alt=""
                                            class="policy-icon"
                                    /><span
                                >High chairs and booster seats are limited; please
                        request them in Special Requests.</span
                                >
                                </li>
                                <li class="policy-item">
                                    <img
                                            src="${gcv}icons/reservation/credit-card.svg"
                                            alt=""
                                            class="policy-icon"
                                    /><span
                                >No prepayment required for parties under 8. Large
                        parties may require a card on file.</span
                                >
                                </li>
                                <li class="policy-item">
                                    <img
                                            src="${gcv}icons/reservation/sparkles.svg"
                                            alt=""
                                            class="policy-icon"
                                    /><span
                                >We accommodate most dietary needs. Let us know about
                        allergies in advance.</span
                                >
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script id="idasmkp2">
    (function () {
        const form = document.getElementById("reservationForm");
        const panel = document.getElementById("confirmationPanel");
        const sumName = document.getElementById("sumName");
        const sumDate = document.getElementById("sumDate");
        const sumTime = document.getElementById("sumTime");
        const sumGuests = document.getElementById("sumGuests");
        const guestsInput = document.getElementById("guests");
        const incGuests = document.getElementById("incGuests");
        const decGuests = document.getElementById("decGuests");
        const dateInput = document.getElementById("resDate");

        const today = new Date();
        const pad = (n) => String(n).padStart(2, "0");
        const minDate = `${today.getFullYear()}-${pad(
          today.getMonth() + 1
        )}-${pad(today.getDate())}`;
        dateInput.min = minDate;
        if (!dateInput.value) dateInput.value = minDate;

        incGuests.addEventListener("click", () => {
            guestsInput.stepUp();
            guestsInput.dispatchEvent(
                new Event("input", {
                    bubbles: true,
                })
            );
        });
        decGuests.addEventListener("click", () => {
            guestsInput.stepDown();
            guestsInput.dispatchEvent(
                new Event("input", {
                    bubbles: true,
                })
            );
        });

        form.addEventListener("submit", (e) => {
            e.preventDefault();
            if (!form.reportValidity()) return;

            const name = (document.getElementById("fullName").value || "").trim();
            const dateVal = document.getElementById("resDate").value;
            const guests = document.getElementById("guests").value;
            const timeRadio = form.querySelector('input[name="resTime"]:checked');
            const timeVal = timeRadio
                ? timeRadio.nextElementSibling.textContent
                : "—";

            sumName.textContent = name || "—";
            sumDate.textContent = dateVal || "—";
            sumTime.textContent = timeVal || "—";
            sumGuests.textContent = guests || "—";

            panel.style.display = "block";
            panel.scrollIntoView({
                behavior: "smooth",
                block: "start",
            });
        });
    })();
</script>
</body>
</html>
