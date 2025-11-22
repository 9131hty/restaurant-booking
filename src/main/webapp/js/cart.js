(function () {
    const formatCurrency = (n) => '$' + n.toFixed(2);
    const TAX_RATE = 0.08;
    const cart = [];
    const subtotalEl = document.getElementById('subtotalAmount');
    const taxEl = document.getElementById('taxAmount');
    const totalEl = document.getElementById('totalAmount');
    const cartItemsEl = document.getElementById('cartItems');
    const clearCartBtn = document.getElementById('clearCartBtn');

    const updateCheckboxStyles = () => {
        document.querySelectorAll('[data-gjs-name="Dietary Option"]').forEach(label => {
            const input = label.querySelector('input[type="checkbox"]');
            const indicator = label.querySelector('[data-gjs-name="Dietary Check Indicator"]');
            if (input && indicator) {
                indicator.classList.toggle('hidden', !input.checked);
            }
        });
    };
    document.querySelectorAll('[data-gjs-name="Dietary Option"] input[type="checkbox"]').forEach(cb => {
        cb.addEventListener('change', updateCheckboxStyles);
    });

    const renderCart = () => {
        cartItemsEl.innerHTML = '';
        let subtotal = 0;
        cart.forEach((ci, idx) => {
            const line = ci.price * ci.qty;
            subtotal += line;
            const li = document.createElement('li');
            li.setAttribute('data-gjs-name', 'Cart Item');
            li.className = 'flex items-start justify-between';
            li.innerHTML = `
            <div data-gjs-name="Cart Item Info" class="flex-1">
              <div data-gjs-name="Cart Item Header" class="flex items-center gap-2">
                <span data-gjs-name="Cart Item Name" class="font-semibold">${ci.name}</span>
                <span data-gjs-name="Cart Item Price" class="text-sm text-[#6A5F5F]">${formatCurrency(ci.price)}</span>
              </div>
              ${ci.modifiers && ci.modifiers.length ? `<div data-gjs-name="Cart Item Modifiers" class="text-xs text-[#6A5F5F] mt-1">+ ${ci.modifiers.map(m => m.name).join(', ')}</div>` : ''}
              ${ci.notes ? `<div data-gjs-name="Cart Item Notes" class="text-xs text-[#6A5F5F] mt-1">Note: ${ci.notes}</div>` : ''}
              <div data-gjs-name="Cart Item Controls" class="mt-2 inline-flex items-center border border-[#E4D8C8] gjs-t-border">
                <button data-gjs-name="Qty Decrease" class="px-2 py-1 hover:text-[#D97B66]" data-idx="${idx}" data-action="dec">-</button>
                <span data-gjs-name="Qty Value" class="px-3">${ci.qty}</span>
                <button data-gjs-name="Qty Increase" class="px-2 py-1 hover:text-[#D97B66]" data-idx="${idx}" data-action="inc">+</button>
              </div>
            </div>
            <div data-gjs-name="Cart Item Line Total" class="text-right">
              <div data-gjs-name="Cart Item Line Value" class="font-semibold">${formatCurrency(line)}</div>
              <button data-gjs-name="Cart Item Remove" class="mt-2 text-sm text-[#7A2E2E] hover:text-[#C62828]" data-idx="${idx}" data-action="remove">Remove</button>
            </div>
          `;
            cartItemsEl.appendChild(li);
        });
        const tax = subtotal * TAX_RATE;
        const total = subtotal + tax;
        subtotalEl.textContent = formatCurrency(subtotal);
        taxEl.textContent = formatCurrency(tax);
        totalEl.textContent = formatCurrency(total);
    };

    cartItemsEl.addEventListener('click', (e) => {
        const btn = e.target.closest('button');
        if (!btn) return;
        const idx = parseInt(btn.dataset.idx, 10);
        const action = btn.dataset.action;
        if (Number.isNaN(idx)) return;
        if (action === 'inc') {
            cart[idx].qty += 1;
        }
        if (action === 'dec') {
            cart[idx].qty = Math.max(1, cart[idx].qty - 1);
        }
        if (action === 'remove') {
            cart.splice(idx, 1);
        }
        renderCart();
    });

    clearCartBtn.addEventListener('click', () => {
        cart.splice(0, cart.length);
        renderCart();
    });

    document.querySelectorAll('[data-add]').forEach(btn => {
        btn.addEventListener('click', () => {
            const item = JSON.parse(btn.getAttribute('data-add'));
            const existingIdx = cart.findIndex(ci => ci.id === item.id && (!ci.modifiers || ci.modifiers.length === 0));
            if (existingIdx > -1) {
                cart[existingIdx].qty += 1;
            } else {
                cart.push({
                    ...item,
                    qty: 1,
                    modifiers: [],
                    notes: ''
                });
            }
            renderCart();
        });
    });

    const modal = document.getElementById('customizationModal');
    const closeModalBtn = document.getElementById('closeModalBtn');
    const modalItemName = document.getElementById('modalItemName');
    const modalAddBtn = document.getElementById('modalAddBtn');
    const modalQty = document.getElementById('modalQty');
    const modalQtyInc = document.getElementById('modalQtyInc');
    const modalQtyDec = document.getElementById('modalQtyDec');
    const modalItemTotal = document.getElementById('modalItemTotal');
    const notesEl = document.getElementById('specialInstructions');
    const modifiersList = document.getElementById('modifiersList');

    let currentItem = null;
    let basePrice = 0;

    const updateModalTotal = () => {
        const qty = parseInt(modalQty.textContent, 10);
        const mods = Array.from(modifiersList.querySelectorAll('input[type="checkbox"]:checked')).map(cb => parseFloat(cb.value.split('|')[1]));
        const modsSum = mods.reduce((a, b) => a + b, 0);
        modalItemTotal.textContent = formatCurrency((basePrice + modsSum) * qty);
    };

    document.querySelectorAll('[data-item]').forEach(btn => {
        btn.addEventListener('click', () => {
            currentItem = JSON.parse(btn.getAttribute('data-item'));
            basePrice = currentItem.price;
            modalItemName.textContent = currentItem.name;
            modalQty.textContent = '1';
            notesEl.value = '';
            modifiersList.querySelectorAll('input[type="checkbox"]').forEach(cb => cb.checked = false);
            updateModalTotal();
            modal.classList.remove('hidden');
            modal.classList.add('flex');
        });
    });

    closeModalBtn.addEventListener('click', () => {
        modal.classList.add('hidden');
        modal.classList.remove('flex');
    });
    modal.addEventListener('click', (e) => {
        if (e.target === modal) {
            modal.classList.add('hidden');
            modal.classList.remove('flex');
        }
    });
    modalQtyInc.addEventListener('click', () => {
        modalQty.textContent = String(parseInt(modalQty.textContent, 10) + 1);
        updateModalTotal();
    });
    modalQtyDec.addEventListener('click', () => {
        modalQty.textContent = String(Math.max(1, parseInt(modalQty.textContent, 10) - 1));
        updateModalTotal();
    });
    modifiersList.addEventListener('change', updateModalTotal);

    modalAddBtn.addEventListener('click', () => {
        if (!currentItem) return;
        const qty = parseInt(modalQty.textContent, 10);
        const modifiers = Array.from(modifiersList.querySelectorAll('input[type="checkbox"]:checked')).map(cb => {
            const [name, price] = cb.value.split('|');
            return {
                name,
                price: parseFloat(price)
            };
        });
        const notes = notesEl.value.trim();
        const priceWithMods = currentItem.price + modifiers.reduce((a, b) => a + b.price, 0);
        cart.push({
            ...currentItem,
            qty,
            modifiers,
            notes,
            price: priceWithMods
        });
        renderCart();
        modal.classList.add('hidden');
        modal.classList.remove('flex');
    });

    const searchInput = document.getElementById('searchInput');
    const categoryButtons = document.querySelectorAll('#categoryPills [data-category]');
    let activeCategory = 'all';
    let activeTags = new Set();

    const allCards = Array.from(document.querySelectorAll('[data-gjs-name="Menu Card"]'));

    const applyFilters = () => {
        const q = (searchInput.value || '').toLowerCase();
        allCards.forEach(card => {
            const addBtn = card.querySelector('[data-add]');
            const data = addBtn ? JSON.parse(addBtn.getAttribute('data-add')) : null;
            if (!data) return;
            const matchesCategory = (activeCategory === 'all') || data.category === activeCategory;
            const matchesSearch = data.name.toLowerCase().includes(q) || card.textContent.toLowerCase().includes(q);
            const matchesTags = activeTags.size === 0 || (data.tags && Array.from(activeTags).every(t => data.tags.includes(t)));
            card.style.display = (matchesCategory && matchesSearch && matchesTags) ? 'flex' : 'none';
        });
    };

    searchInput.addEventListener('input', applyFilters);
    categoryButtons.forEach(btn => {
        btn.addEventListener('click', () => {
            activeCategory = btn.getAttribute('data-category');
            categoryButtons.forEach(b => {
                b.classList.remove('border-[#D97B66]', 'text-[#D97B66]');
            });
            btn.classList.add('border-[#D97B66]', 'text-[#D97B66]');
            applyFilters();
        });
    });
    document.querySelectorAll('[data-gjs-name="Dietary Option"] input[type="checkbox"]').forEach(cb => {
        cb.addEventListener('change', () => {
            activeTags = new Set(
                Array.from(document.querySelectorAll('[data-gjs-name="Dietary Option"] input[type="checkbox"]:checked')).map(x => x.value)
            );
            applyFilters();
        });
    });

    updateCheckboxStyles();
    applyFilters();

    // Responsive adjustments: collapse sticky on smaller screens
    const cartPanel = document.querySelector('[data-gjs-name="Cart Panel"]');
    const mediaQuery = window.matchMedia('(max-width: 992px)');
    const handleSticky = () => {
        if (mediaQuery.matches) {
            cartPanel.classList.remove('sticky', 'top-6');
        } else {
            cartPanel.classList.add('sticky', 'top-6');
        }
    };
    handleSticky();
    mediaQuery.addEventListener('change', handleSticky);
})();