const express = require("express");
const path = require("path");

const app = express();

// ---- Runtime contract ----
const PORT = process.env.PORT || 3000;
const APP_ENV = process.env.APP_ENV || "local";
const GIT_SHA = process.env.GIT_SHA || "dev";

// ---- Static files ----
app.use(express.static(path.join(__dirname, "public")));

// ---- Health check ----
app.get("/health", (req, res) => {
  res.status(200).json({
    status: "ok"
  });
});

// ---- Build metadata ----
app.get("/meta", (req, res) => {
  res.json({
    app: "devops-portfolio-static-app",
    environment: APP_ENV,
    git_sha: GIT_SHA,
    timestamp: new Date().toISOString()
  });
});

// ---- Root ----
app.get("*", (req, res) => {
  res.sendFile(path.join(__dirname, "public", "index.html"));
});

// ---- Start server ----
app.listen(PORT, () => {
  console.log(`App running on port ${PORT}`);
  console.log(`Environment: ${APP_ENV}`);
  console.log(`Git SHA: ${GIT_SHA}`);
});
