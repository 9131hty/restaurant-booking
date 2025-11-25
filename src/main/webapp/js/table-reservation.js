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

const tableCards = document.querySelectorAll('[data-gjs-name="Table Card"]');
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
        chip.setAttribute('data-gjs-name', 'Decor Chip');
        chip.className = 'px-3 py-1 text-sm rounded-full bg-[rgba(201,177,140,0.2)] text-[var(--gjs-t-color-secondary)]';
        chip.textContent = d;
        detailDecors.appendChild(chip);
    });
    // Preselect first matching decor radio if available
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
    // Scroll into view for details on selection
    document.getElementById('details').scrollIntoView({ behavior: 'smooth', block: 'start' });
}

tableCards.forEach(card => {
    const id = parseInt(card.getAttribute('data-table-id'), 10);
    const data = tablesData.find(t => t.id === id);
    const btn = card.querySelector('[data-gjs-name="View Details Button"]');
    // Entire card clickable for accessibility while keeping button
    card.addEventListener('click', (e) => {
        // Avoid double-trigger if clicking button
        if (e.target.closest('[data-gjs-name="View Details Button"]')) return;
        if (data) updateDetails(data);
    });
    btn.addEventListener('click', (e) => {
        e.stopPropagation();
        if (data) updateDetails(data);
    });
});

// Simple search filter
searchInput?.addEventListener('input', (e) => {
    const q = e.target.value.toLowerCase();
    tableCards.forEach(card => {
        const text = card.innerText.toLowerCase();
        card.style.display = text.includes(q) ? '' : 'none';
    });
});

// Handle reservation submission
reservationForm.addEventListener('submit', (e) => {
    e.preventDefault();
    confirmationBlock.classList.remove('hidden');
    confirmationBlock.focus?.();
    // Clear only non-essential fields to keep UX smooth
    const fieldsToClear = ['requests', 'name', 'phone', 'email'];
    fieldsToClear.forEach(name => {
        const el = reservationForm.querySelector(`[name="${name}"]`);
        if (el) el.value = '';
    });
    // Keep date/time/guests to help user review
    // Provide a gentle outline for success
    confirmationBlock.classList.add('ring-2', 'ring-[rgba(59,130,246,0.5)]');
    // Optional navigation to confirmation message
    confirmationBlock.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
});