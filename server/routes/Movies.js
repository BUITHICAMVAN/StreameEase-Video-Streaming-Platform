const express = require("express");
const router = express.Router();
const MovieController = require("../controllers/MoviesController");

router.get("/", MovieController.view);
router.post("/", MovieController.find);

// connect home page to add movie
router.get("/addmovie", MovieController.form);
router.post("/addmovie", MovieController.create);

// connect home page to edit movie
// router.post("/editmovie/:idMovie", MovieController.create);
router.get("/editmovie/:idMovie", MovieController.edit);
// router.post("/editmovie/:idMovie", MovieController.create);

router.get("/deletemovie/:idMovie", MovieController.edit);
module.exports = router;
