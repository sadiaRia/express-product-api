// server.js
const express = require('express');
const app = express();
// const productRoutes = require('./routes/products');

// Middleware to parse JSON
app.use(express.json());

// Use the product routes
// app.use('/api/products', productRoutes);

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
