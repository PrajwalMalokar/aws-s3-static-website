let cart = JSON.parse(localStorage.getItem('cart')) || [];

function addToCart(itemName, itemPrice) {
    cart.push({ name: itemName, price: itemPrice });
    localStorage.setItem('cart', JSON.stringify(cart));  // Save to localStorage
    alert(itemName + " added to cart!");
    updateCartCount();
}

function updateCartCount() {
    document.getElementById("cart-count").innerText = cart.length;
}
