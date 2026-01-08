<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Reservation | Artéa Aureum</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="robots" content="index,follow">
    <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;family=Playfair+Display:wght@400;500;600;700&amp;display=swap"
            rel="stylesheet" />
    <link rel="stylesheet" href="${gcv}css/style.css">
</head>

<body id="ipdtme" class="cjiayo-t-body">
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
                <h1 id="inaea3x" class="cjiayo-t-h1 hero-title">Reserve Your Table</h1>
                <p id="i4q7qep" class="hero-subtitle">Choose your space, savor the moment.</p>
                <p class="hero-poetic">“Where warm light, gentle ambience, and shared stories meet.”</p>
                <div id="i14si51" class="breadcrumbs"><a href="home"
                                                         class="cjiayo-t-link breadcrumb-link">Home</a><span class="breadcrumb-divider">/</span><span
                        class="breadcrumb-current">Reservation</span></div>
            </div>
        </div>
    </div>
</section>
<main class="main">
    <section id="tables" class="tables-section">
        <div id="izxtjg" class="section-container">
            <div id="ibt9jj" class="section-header">
                <div id="is90xs" class="header-left">
                    <h2 id="iestjo5" class="cjiayo-t-h2 tables-heading">Available Tables</h2>
                    <p class="tables-subheading">Explore spaces across window-side, patio, and center hall settings.</p>
                </div>
                <div class="header-right">
                    <div class="search-wrapper"><input type="text" placeholder="Search by location or table #"
                                                       aria-label="Search tables" id="tableSearch" class="search-input" /></div>
                </div>
            </div>
            <div id="i825eic" class="tables-grid">

<!-- =========== table card ================================================================================================ -->
                <article data-table-id="1" class="cjiayo-t-border table-card"><img
                        src="${gcv}images/reservation/table003.jpg"
                        alt="Window-side table with soft light" class="table-image" />
                    <div class="table-card-content">
                        <div class="card-top-row"><span class="table-number">Table #3</span><span class="location-tag">Window
                  Side</span></div>
                        <p class="capacity">Capacity: 2–4 guests</p>
                        <p class="card-description">Cozy nook with evening glow, perfect for intimate dining.</p>
                        <a href="table-detail" class="cjiayo-t-button view-details-button">
                            <img src="${gcv}icons/reservation/eye.svg" alt="" class="button-icon" />
                            View Details
                        </a>
                    </div>
                </article>
<!-- ======================================================================================================================= -->

            </div>
        </div>
    </section>
</main>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
<script>
    const tablesData = [
        {
            id: 1,
            number: 'Table #3',
            type: 'Two-top • Cozy nook',
            seating: '2–4',
            locationTag: 'Window Side',
            locationText: 'Window view with soft evening light',
            description: 'Nestled by the window, this table catches the warm glow as day turns to night.',
            ambience: 'Soft lights, warm tone—intimate and calm.',
            decors: ['Romantic Setup', 'Minimal Elegant', 'Seasonal Theme']
        },
        {
            id: 2,
            number: 'Table #7',
            type: 'Flexible • Open-air',
            seating: '2–6',
            locationTag: 'Patio',
            locationText: 'Patio breeze with lantern-lit charm',
            description: 'A breezy spot under gentle lanterns, perfect for relaxed gatherings.',
            ambience: 'Ambient outdoor light, lively yet soothing.',
            decors: ['Birthday Setup', 'Seasonal Theme', 'Minimal Elegant']
        },
        {
            id: 3,
            number: 'Table #12',
            type: 'Family-style • Spacious',
            seating: '4–8',
            locationTag: 'Center Hall',
            locationText: 'Lively center with celebratory energy',
            description: 'At the heart of the room—ideal for shared plates and laughter.',
            ambience: 'Vibrant atmosphere, warm and festive.',
            decors: ['Birthday Setup', 'Seasonal Theme', 'Minimal Elegant']
        },
        {
            id: 4,
            number: 'Table #5',
            type: 'Banquette • Plush seating',
            seating: '2–6',
            locationTag: 'Window Side',
            locationText: 'Elevated window banquette with city view',
            description: 'Soft textures, city lights, and a gentle hush—chic and comfortable.',
            ambience: 'Dim, cozy glow with refined accents.',
            decors: ['Romantic Setup', 'Minimal Elegant', 'Seasonal Theme']
        },
        {
            id: 5,
            number: 'Table #9',
            type: 'Round table • Sociable',
            seating: '3–5',
            locationTag: 'Patio',
            locationText: 'Patio round under fairy lights',
            description: 'Circular conversations under twinkling lights—joyful and airy.',
            ambience: 'Playful sparkle, relaxed tempo.',
            decors: ['Birthday Setup', 'Seasonal Theme', 'Minimal Elegant']
        },
        {
            id: 6,
            number: 'Table #15',
            type: 'Booth • Curved comfort',
            seating: '2–4',
            locationTag: 'Center Hall',
            locationText: 'Booth beside wine wall',
            description: 'A curved booth with a warm view of vintage labels—quiet yet connected.',
            ambience: 'Warm, cozy enclave amidst gentle buzz.',
            decors: ['Minimal Elegant', 'Romantic Setup', 'Seasonal Theme']
        },
        {
            id: 7,
            number: 'Table #2',
            type: 'Two-top • Intimate',
            seating: '2',
            locationTag: 'Window Side',
            locationText: 'Petite corner with candlelit glow',
            description: 'Made for two—privacy, candlelight, and soft whispers.',
            ambience: 'Gentle light, serene and intimate.',
            decors: ['Romantic Setup', 'Minimal Elegant', 'Seasonal Theme']
        },
        {
            id: 8,
            number: 'Table #18',
            type: 'Chef’s view • Engaging',
            seating: '2–3',
            locationTag: 'Near Kitchen',
            locationText: 'Near open kitchen—culinary theater',
            description: 'Feel the rhythm of the kitchen—lively, aromatic, and engaging.',
            ambience: 'Energetic, warm tones with a hint of sizzle.',
            decors: ['Minimal Elegant', 'Seasonal Theme']
        }
    ];

    const tableCards = document.querySelectorAll('[data-cjiayo-name="Table Card"]');
    const searchInput = document.getElementById('tableSearch');

    const detailNumber = document.getElementById('detailNumber');
    const detailType = document.getElementById('detailType');
    const detailSeating = document.getElementById('detailSeating');
    const detailLocation = document.getElementById('detailLocation');
    const detailLocationText = document.getElementById('detailLocationText');
    const detailDescription = document.getElementById('detailDescription');
    const detailAmbience = document.getElementById('detailAmbience');
    const detailDecors = document.getElementById('detailDecors');
    const reservationTable = document.getElementById('reservationTable');
    const reservationForm = document.getElementById('reservationForm');
    const confirmationBlock = document.getElementById('confirmationBlock');

    let selectedTable = null;

    function renderDecorChips(decors) {
        detailDecors.innerHTML = '';
        decors.forEach(d => {
            const chip = document.createElement('span');
            chip.setAttribute('data-cjiayo-name', 'Decor Chip');
            chip.className = 'px-3 py-1 text-sm rounded-full bg-[rgba(201,177,140,0.2)] text-[var(--cjiayo-t-color-secondary)]';
            chip.textContent = d;
            detailDecors.appendChild(chip);
        });
        const radios = document.querySelectorAll('#decorOptions input[type="radio"]');
        let matched = false;
        radios.forEach(r => {
            if (decors.includes(r.value) && !matched) {
                r.checked = true;
                matched = true;
            } else if (!decors.includes(r.value)) {
                r.checked = false;
            }
        });
    }

    function updateDetails(table) {
        detailNumber.textContent = table.number;
        detailType.textContent = table.type;
        detailSeating.textContent = table.seating;
        detailLocation.textContent = table.locationTag;
        detailLocationText.textContent = table.locationText;
        detailDescription.textContent = table.description;
        detailAmbience.textContent = table.ambience;
        renderDecorChips(table.decors);
        reservationTable.textContent = table.number;
        selectedTable = table;
        document.getElementById('details').scrollIntoView({ behavior: 'smooth', block: 'start' });
    }

    tableCards.forEach(card => {
        const id = parseInt(card.getAttribute('data-table-id'), 10);
        const data = tablesData.find(t => t.id === id);
        const btn = card.querySelector('[data-cjiayo-name="View Details Button"]');
        card.addEventListener('click', (e) => {
            if (e.target.closest('[data-cjiayo-name="View Details Button"]')) return;
            if (data) updateDetails(data);
        });
        btn.addEventListener('click', (e) => {
            e.stopPropagation();
            if (data) updateDetails(data);
        });
    });

    searchInput?.addEventListener('input', (e) => {
        const q = e.target.value.toLowerCase();
        tableCards.forEach(card => {
            const text = card.innerText.toLowerCase();
            card.style.display = text.includes(q) ? '' : 'none';
        });
    });

    reservationForm.addEventListener('submit', (e) => {
        e.preventDefault();
        confirmationBlock.classList.remove('hidden');
        confirmationBlock.focus?.();
        const fieldsToClear = ['requests', 'name', 'phone', 'email'];
        fieldsToClear.forEach(name => {
            const el = reservationForm.querySelector(`[name="${name}"]`);
            if (el) el.value = '';
        });

        confirmationBlock.classList.add('ring-2', 'ring-[rgba(59,130,246,0.5)]');
        confirmationBlock.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
    });
</script>
</body>

</html>
