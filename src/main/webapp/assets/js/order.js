    (function () {
    const $ = (sel, root = document) => root.querySelector(sel);
    const $$ = (sel, root = document) => Array.from(root.querySelectorAll(sel));

    const cartState = {
    items: [],
};

    const cartSidebar = $('#cartSidebar');
    const cartToggle = $('#cartToggle');
    const cartClose = $('#cartClose');
    const cartItems = $('#cartItems-2');
    const cartCountBadge = $('#cartCountBadge');
    const subtotalEl = $('#cartSubtotal');
    const totalEl = $('#cartTotal');
    const clearBtn = $('#clearCart');
    const searchInput = $('#searchInput-2');
    const filterPills = $$('.filter-pill');
    const itemsGrid = $('#itemsGrid');

    function toggleCart(forceOpen = null) {
    const isOpen = cartSidebar.classList.contains('is-open');
    const willOpen = forceOpen !== null ? forceOpen : !isOpen;
    if (willOpen) {
    cartSidebar.classList.add('is-open');
    cartToggle.setAttribute('aria-expanded', 'true');
} else {
    cartSidebar.classList.remove('is-open');
    cartToggle.setAttribute('aria-expanded', 'false');
}
}

    cartToggle.addEventListener('click', () => toggleCart());
    cartClose.addEventListener('click', () => toggleCart(false));

    function triggerCartSparkle() {
    if (!cartToggle) return;
    cartToggle.classList.remove('spark-on');
    void cartToggle.offsetWidth;
    cartToggle.classList.add('spark-on');
    setTimeout(() => cartToggle.classList.remove('spark-on'), 950);
}

    function addItem({ id, name, price, image }) {
    const existing = cartState.items.find(i => i.id === id);
    if (existing) {
    existing.qty += 1;
} else {
    cartState.items.push({ id, name, price, qty: 1, image });
}
    renderCart();
}

    function updateQty(id, delta) {
    const it = cartState.items.find(i => i.id === id);
    if (!it) return;
    it.qty += delta;
    if (it.qty <= 0) {
    cartState.items = cartState.items.filter(i => i.id !== id);
}
    renderCart();
}

    function removeItem(id) {
    cartState.items = cartState.items.filter(i => i.id !== id);
    renderCart();
}

    function formatCurrency(v) {
    return '$' + v.toFixed(2);
}

    function renderCart() {
    if (!cartItems) return;
    cartItems.innerHTML = '';
    if (cartState.items.length === 0) {
    const empty = document.createElement('div');
    empty.setAttribute('data-cjiayo-name', 'Cart Empty State');
    empty.className = 'cart-empty';
    empty.innerHTML = 'Your cart is empty. Add a tasty dish!';
    cartItems.appendChild(empty);
} else {
    cartState.items.forEach(item => {
    const row = document.createElement('div');
    row.setAttribute('data-cjiayo-name', 'Cart Item');
    row.className = 'cart-row';
    row.innerHTML = `
            <img data-cjiayo-name="Cart Item Image" src="${item.image || 'https://app.grapesjs.com/api/assets/random-image?query=%22dish%22&w=200&h=200'}" alt="${item.name}" class="cart-item-thumb">
            <div data-cjiayo-name="Cart Item Left" class="cart-item-content">
              <div data-cjiayo-name="Cart Item Top" class="cart-item-top">
                <h4 data-cjiayo-name="Cart Item Name" class="cart-item-name">${item.name}</h4>
                <button data-cjiayo-name="Remove Item Button" aria-label="Remove ${item.name}" title="Remove ${item.name}" class="cart-remove-btn px-2 py-1">
                  <img data-cjiayo-name="Remove Item Icon" src= "${gcv}icons/order/trash.svg" alt="" class="w-4 h-4">
                </button>
              </div>
              <div data-cjiayo-name="Cart Item Meta" class="cart-item-meta"><span class="cart-item-price">${formatCurrency(item.price)}</span> each</div>
            </div>
            <div data-cjiayo-name="Qty Controls" class="flex items-center gap-2">
              <button data-cjiayo-name="Decrement Button" class="qty-btn" aria-label="Decrease quantity" title="Decrease quantity">
                <img src="${gcv}icons/order/minus.svg" alt="" class="qty-btn-icon">
              </button>
              <span data-cjiayo-name="Qty Label" class="qty-label" aria-live="polite">${item.qty}</span>
              <button data-cjiayo-name="Increment Button" class="qty-btn" aria-label="Increase quantity" title="Increase quantity">
                <img src="${gcv}icons/order/plus.svg" alt="" class="qty-btn-icon">
              </button>
            </div>
          `;
    const [removeBtn, decBtn, incBtn] = [
    row.querySelector('[data-cjiayo-name="Remove Item Button"]'),
    row.querySelector('[data-cjiayo-name="Decrement Button"]'),
    row.querySelector('[data-cjiayo-name="Increment Button"]')
    ];
    removeBtn.addEventListener('click', () => removeItem(item.id));
    decBtn.addEventListener('click', () => updateQty(item.id, -1));
    incBtn.addEventListener('click', () => updateQty(item.id, 1));
    cartItems.appendChild(row);
});
}
    const subtotal = cartState.items.reduce((s, it) => s + it.price * it.qty, 0);
    const total = subtotal;
    subtotalEl.textContent = formatCurrency(subtotal);
    totalEl.textContent = formatCurrency(total);
    const count = cartState.items.reduce((c, it) => c + it.qty, 0);
    cartCountBadge.textContent = count;
}

    function flyToCart(sourceEl, imageSrc) {
    try {
    if (!cartToggle) return;
    const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduce) return;

    const srcRect = sourceEl.getBoundingClientRect();
    const tgtRect = cartToggle.getBoundingClientRect();

    const ghost = document.createElement('img');
    ghost.setAttribute('data-cjiayo-name', 'Fly Ghost');
    ghost.className = 'fly-ghost is-min';
    ghost.src = imageSrc || `${gcv}icons/order/shopping-bag.svg`;

    const startX = srcRect.left + srcRect.width / 2 - 20;
    const startY = srcRect.top + srcRect.height / 2 - 20;
    ghost.style.transform = `translate(${startX}px, ${startY}px) scale(1)`;
    document.body.appendChild(ghost);

    requestAnimationFrame(() => {
    const endX = tgtRect.left + tgtRect.width / 2 - 12;
    const endY = tgtRect.top + tgtRect.height / 2 - 12;
    ghost.style.transform = `translate(${endX}px, ${endY}px) scale(0.2)`;
    ghost.style.opacity = '0.6';
});

    const cleanup = () => {
    ghost.removeEventListener('transitionend', cleanup);
    ghost.remove();
};
    ghost.addEventListener('transitionend', cleanup);
} catch (_) {
}
}

    $$('#itemsGrid .dish-card').forEach(card => {
    const addBtn = card.querySelector('.add-button');
    if (!addBtn) return;
    addBtn.addEventListener('click', () => {
    const id = card.getAttribute('data-id');
    const name = card.getAttribute('data-name');
    const price = Number(card.getAttribute('data-price'));
    const imageEl = card.querySelector('.dish-image');
    const image = imageEl ? imageEl.getAttribute('src') : '';
    addItem({ id, name, price, image });

    addBtn.classList.add('ring-2', 'ring-[rgba(228,216,200,0.9)]');
    setTimeout(() => addBtn.classList.remove('ring-2', 'ring-[rgba(228,216,200,0.9)]'), 350);

    flyToCart(imageEl || addBtn, image);
    triggerCartSparkle();
});
});

    clearBtn.addEventListener('click', () => {
    cartState.items = [];
    renderCart();
});

    function applyFilters() {
    if (!itemsGrid) return;
    const query = (searchInput?.value || '').toLowerCase();
    const active = document.querySelector('.filter-pill.is-active');
    const category = active ? active.getAttribute('data-filter') : 'all';
    $$('#itemsGrid .dish-card').forEach(card => {
    const name = card.getAttribute('data-name').toLowerCase();
    const cat = card.getAttribute('data-category');
    const matchesText = name.includes(query);
    const matchesCat = category === 'all' || cat === category;
    card.style.display = matchesText && matchesCat ? '' : 'none';
});
}

    filterPills.forEach(pill => {
    pill.addEventListener('click', () => {
    filterPills.forEach(p => p.classList.remove('is-active', 'bg-[#FFF8F5]'));
    pill.classList.add('is-active', 'bg-[#FFF8F5]');
    applyFilters();
});
});

    if (searchInput) {
    searchInput.addEventListener('input', applyFilters);
}

    const allPill = filterPills.find(p => p.getAttribute('data-filter') === 'all');
    if (allPill) {
    allPill.classList.add('is-active', 'bg-[#FFF8F5]');
}

    renderCart();

    document.addEventListener('keydown', (e) => {
    if (e.key === 'Escape') toggleCart(false);
});
})();

 (function () {
    document.addEventListener('click', function (e) {
        const btn = e.target.closest('.add-button');
        if (!btn) return;
        btn.classList.add('btn-click-anim');
        btn.addEventListener('animationend', function () {
            btn.classList.remove('btn-click-anim');
        }, { once: true });
    });
})();

    (function () {
    const cards = document.querySelectorAll('#itemsGrid .dish-card');
    const reduce = window.matchMedia('(prefers-reduced-motion: reduce)').matches;
    if (reduce) return;

    cards.forEach(card => {
    if (card.__sparkleInit) return;
    card.__sparkleInit = true;

    const count = 6 + Math.floor(Math.random() * 3); // 6–8 dots
    for (let i = 0; i < count; i++) {
    const dot = document.createElement('span');
    dot.setAttribute('data-cjiayo-name', 'Sparkle Dot');
    dot.className = 'sparkle-dot';

    const left = 8 + Math.random() * 84;   // 8% to 92%
    const top = 8 + Math.random() * 84;    // 8% to 92%
    const size = 4 + Math.random() * 4;    // 4px to 8px

    const tier = Math.random();
    if (tier < 0.33) dot.classList.add('s-low');
    else if (tier < 0.66) dot.classList.add('s-mid');
    else dot.classList.add('s-high');

    dot.style.left = left + '%';
    dot.style.top = top + '%';
    dot.style.width = size + 'px';
    dot.style.height = size + 'px';
    dot.style.animationDelay = (Math.random() * 900) + 'ms';

    const dx = (Math.random() * 14 - 7).toFixed(2) + '%';   // -7% to 7%
    const dy = (Math.random() * 10 - 5).toFixed(2) + '%';   // -5% to 5%
    dot.style.setProperty('--dx', dx);
    dot.style.setProperty('--dy', dy);

    const twinkleVar = 1100 + Math.random() * 700; // 1100ms – 1800ms
    const driftVar = 6 + Math.random() * 4;        // 6s – 10s
    dot.style.setProperty('--twinkle', twinkleVar + 'ms');
    dot.style.setProperty('--drift', driftVar + 's');

    dot.setAttribute('aria-hidden', 'true');

    card.appendChild(dot);
}
});
})();
