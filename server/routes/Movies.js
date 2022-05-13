const express = require("express");
const router = express.Router();
const MovieController = require("../controllers/MoviesController");

router.get("/", MovieController.view);
router.post("/", MovieController.find);

router.get("/series", MovieController.view);

// router.post("/actor", MovieController.view);
module.exports = router;
