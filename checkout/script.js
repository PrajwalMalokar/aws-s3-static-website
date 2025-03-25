function showCheckout() {
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    const cartItemsContainer = document.getElementById('cart-items');
    let totalAmount = 0;
    
    cartItemsContainer.innerHTML = ''; // Clear existing items

    // Check if the cart is empty
    if (cart.length === 0) {
        cartItemsContainer.innerHTML = '<p>Your cart is empty</p>';
        document.getElementById('cart-total').innerText = '0.00';
        return;
    }

    // Loop through cart items and display them
    cart.forEach(item => {
        const listItem = document.createElement('li');
        listItem.innerText = `${item.name} - Rs.${item.price.toFixed(2)}`;
        cartItemsContainer.appendChild(listItem);
        totalAmount += item.price;
    });

    // Display the total amount
    document.getElementById('cart-total').innerText = totalAmount.toFixed(2);
}

// Call this to display the checkout data when the page loads
document.addEventListener('DOMContentLoaded', showCheckout);
function displayOrderSuccess() {
    // Retrieve the cart from localStorage
    const cart = JSON.parse(localStorage.getItem('cart')) || [];
    let totalAmount = 0;

    // Purchaser's details (you can replace this with actual user input)
    const orderDetails = {
        name: "Prajwal",
        email: "prajwal@example.com",
        phone: "9876543210",
        items: cart
    };

    // Display the purchaser's details
    document.getElementById('purchaser-name').innerText = orderDetails.name;
    document.getElementById('purchaser-email').innerText = orderDetails.email;
    document.getElementById('purchaser-phone').innerText = orderDetails.phone;

    // Display the ordered items
    const orderItemsList = document.getElementById('order-items');
    orderItemsList.innerHTML = ''; // Clear existing items

    orderDetails.items.forEach(item => {
        const listItem = document.createElement('li');
        listItem.innerText = `${item.name} - Rs.${item.price.toFixed(2)}`;
        orderItemsList.appendChild(listItem);
        totalAmount += item.price;
    });

    // Display the total amount
    document.getElementById('total-amount').innerText = `Rs.${totalAmount.toFixed(2)}`;

    // Finally, show the "Order Placed" section
    document.getElementById('order-success').style.display = 'block';

    // Optional: Clear the cart after placing the order
    localStorage.removeItem('cart');
}


// Call this function when the order is placed successfully
// This should be triggered after clicking "Place Order" on the checkout page
function placeOrder() {
    // Display the invoice and order success
    displayOrderSuccess();
    // Clear the cart after placing the order
    localStorage.removeItem('cart');
}