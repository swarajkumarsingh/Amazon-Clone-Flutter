const express = require("express");
const cors = require("cors");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth.js");
const adminRouter = require("./routes/admin.js");
const productRouter = require("./routes/product.js");

const app = express();
const PORT = 3000;

// Routers
app.use(cors());
app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);

// Mongodb Connection
mongoose
  .connect("mongodb://localhost:27017/amazon-backend", {
    useNewUrlParser: true,
    useUnifiedTopology: true,
  })
  .then(() => {
    console.log("Connected to MongoDB");
  })
  .catch((err) => {
    console.log(err);
  });

//   Server started!
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
