const mongoose = require("mongoose");
mongoose.connect(
  "mongodb+srv://user10:user10@cms.arxmh0w.mongodb.net/?retryWrites=true&w=majority&appName=CMS"
);
mongoose.connection.on("connected", () => {
  console.log("Connected");
});
mongoose.connection.on("error", (err) => {
  console.log(`${err}`);
});

module.exports = mongoose;
