(function () {
    const TAX_RATE = 0.08;
    const DELIVERY_FEE = 5.00;

    const cartTable = document.getElementById('cart-items');
    const subtotalEl = document.getElementById('subtotal-amount');
    const taxEl = document.getElementById('tax-amount');
    const deliveryEl = document.getElementById('delivery-amount');
    const totalEl = document.getElementById('total-amount');

    const pickupRadio = document.querySelector('input[name="fulfillment"][value="pickup"]');
    const deliveryRadio = document.querySelector('input[name="fulfillment"][value="delivery"]');
    const pickupInfo = document.getElementById('pickup-info');
    const deliveryFields = document.getElementById('delivery-fields');

    const billingSame = document.getElementById('billingSame');
    const billingFields = document.getElementById('billing-fields');

    const placeOrderBtn = document.getElementById('place-order');
    const paymentErrorBox = document.getElementById('payment-error');

    function formatCurrency(val) {
        return '$' + val.toFixed(2);
    }

    function calcTotals() {
        let subtotal = 0;
        cartTable.querySelectorAll('tr[data-price]').forEach(row => {
            const price = parseFloat(row.getAttribute('data-price'));
            const qtyInput = row.querySelector('input[type="number"]');
            const qty = Math.max(1, parseInt(qtyInput.value || '1', 10));
            const subtotalCell = row.querySelector('td:last-child');
            const itemSubtotal = price * qty;
            subtotal += itemSubtotal;
            subtotalCell.textContent = formatCurrency(itemSubtotal);
        });
        const tax = subtotal * TAX_RATE;
        const deliveryFee = deliveryRadio.checked ? DELIVERY_FEE : 0;
        const total = subtotal + tax + deliveryFee;
        subtotalEl.textContent = formatCurrency(subtotal);
        taxEl.textContent = formatCurrency(tax);
        deliveryEl.textContent = formatCurrency(deliveryFee);
        totalEl.textContent = formatCurrency(total);
    }

    function attachQtyControls() {
        cartTable.querySelectorAll('tr[data-price]').forEach(row => {
            const minusBtn = row.querySelector('button[aria-label="Decrease quantity"]');
            const plusBtn = row.querySelector('button[aria-label="Increase quantity"]');
            const qtyInput = row.querySelector('input[type="number"]');

            minusBtn.addEventListener('click', () => {
                qtyInput.value = Math.max(1, parseInt(qtyInput.value || '1', 10) - 1);
                calcTotals();
            });
            plusBtn.addEventListener('click', () => {
                qtyInput.value = Math.max(1, parseInt(qtyInput.value || '1', 10) + 1);
                calcTotals();
            });
            qtyInput.addEventListener('input', () => {
                const v = qtyInput.value.replace(/[^\d]/g, '');
                qtyInput.value = v;
                calcTotals();
            });
            qtyInput.addEventListener('blur', () => {
                qtyInput.value = Math.max(1, parseInt(qtyInput.value || '1', 10));
                calcTotals();
            });
        });
    }

    function toggleFulfillment() {
        if (pickupRadio.checked) {
            pickupInfo.classList.remove('hidden');
            deliveryFields.classList.add('hidden');
        } else {
            pickupInfo.classList.add('hidden');
            deliveryFields.classList.remove('hidden');
        }
        calcTotals();
    }

    function toggleBilling() {
        if (billingSame.checked) {
            billingFields.classList.add('hidden');
        } else {
            billingFields.classList.remove('hidden');
        }
    }

    function validateRequired() {
        let ok = true;
        paymentErrorBox.classList.add('hidden');

        function markInvalid(el, invalid) {
            el.classList.toggle('ring-2', invalid);
            el.classList.toggle('ring-[var(--gjs-t-color-error)]', invalid);
        }

        const fullName = document.getElementById('fullName');
        const email = document.getElementById('email');
        const phone = document.getElementById('phone');

        const cardName = document.getElementById('cardName');
        const cardNumber = document.getElementById('cardNumber');
        const expiry = document.getElementById('expiry');
        const cvc = document.getElementById('cvc');

        const requiredFields = [fullName, email, phone, cardName, cardNumber, expiry, cvc];

        requiredFields.forEach(el => {
            const invalid = !el.value || (el === email && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(el.value));
            markInvalid(el, invalid);
            ok = ok && !invalid;
        });

        // Basic card number check (Luhn-lite length)
        const num = (cardNumber.value || '').replace(/\s+/g, '');
        if (!(num.length >= 12 && num.length <= 19)) {
            markInvalid(cardNumber, true);
            ok = false;
        }

        // Expiry MM/YY check
        const exp = (expiry.value || '').trim();
        if (!/^\d{2}\/\d{2}$/.test(exp)) {
            markInvalid(expiry, true);
            ok = false;
        }

        // CVC 3-4 digits
        const cvcVal = (cvc.value || '').trim();
        if (!/^\d{3,4}$/.test(cvcVal)) {
            markInvalid(cvc, true);
            ok = false;
        }

        // Delivery address if delivery selected
        if (deliveryRadio.checked) {
            ['address1', 'city', 'state', 'zip'].forEach(id => {
                const el = document.getElementById(id);
                const invalid = !el.value;
                markInvalid(el, invalid);
                ok = ok && !invalid;
            });
        }

        // Billing address if not same
        if (!billingSame.checked) {
            ['billAddress1', 'billCity', 'billState', 'billZip'].forEach(id => {
                const el = document.getElementById(id);
                const invalid = !el.value;
                markInvalid(el, invalid);
                ok = ok && !invalid;
            });
        }

        if (!ok) {
            paymentErrorBox.classList.remove('hidden');
        }
        return ok;
    }

    placeOrderBtn.addEventListener('click', () => {
        if (!validateRequired()) return;
        // Simulate order placement and redirect to confirmation page
        placeOrderBtn.disabled = true;
        placeOrderBtn.classList.add('opacity-70');
        placeOrderBtn.textContent = 'Processing...';
        setTimeout(() => {
            window.location.href = 'page://EIHfwgSr4sCaPPxHCSI'; // In a real app, redirect to confirmation page id
        }, 1200);
    });

    pickupRadio.addEventListener('change', toggleFulfillment);
    deliveryRadio.addEventListener('change', toggleFulfillment);
    document.getElementById('cardNumber').addEventListener('input', (e) => {
        // Format card number visually
        let v = e.target.value.replace(/\D/g, '').slice(0, 19);
        e.target.value = v.replace(/(\d{4})(?=\d)/g, '$1 ').trim();
    });
    billingSame.addEventListener('change', toggleBilling);

    attachQtyControls();
    toggleFulfillment();
    toggleBilling();
    calcTotals();
})();