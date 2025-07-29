import express from "express";

const app = express();

app.get("/", (_req, res) => {
  res.send("Hello from TypeScript + Node on Docker container!");
});

app.get("/health", (req, res) => {
  res.status(200).send("OK");
});

const port = process.env.PORT || 3000;
app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
