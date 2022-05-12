const express = require("express");
const router = express.Router();
const MovieController = require("../controllers/MoviesController");

router.get("/", MovieController.view);
// router.post("/", MovieController.search);

// router.get('/', MovieController.view);

module.exports = router;
