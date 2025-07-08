import express from "express";
const app = express();
const PORT = parseInt(process.env.PORT || "3000", 10);

app.get("/", (req, res) => {
  res.send("<h1>Hello Hemal Parmar from Elastic Beanstalk!</h1>");
});

app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server running on port ${PORT}`);
});
