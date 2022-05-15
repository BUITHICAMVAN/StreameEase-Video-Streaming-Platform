const express = require("express");
const router = express.Router();
const MovieController = require("../controllers/MoviesController");
//Series
router.get("/series", MovieController.viewSeries);
router.post("/series", MovieController.findSeries);
router.get("/addseries", MovieController.formSeries);
router.post("/addseries", MovieController.createSeries);

router.get("/series/editseries/:idSeries", MovieController.editSeries);
router.post("/series/editseries/:idSeries", MovieController.updateSeries);
router.get("/series/delete/:idSeries", MovieController.deleteSeries);

// router.get("/:idMovie", MovieController.delete);



//searchSeries

// router.get("/addseries", MovieController.formSeries);
// router.post("/addseries", MovieController.createSeries);




//Movie
router.get("/", MovieController.view);
router.post("/", MovieController.find);


// router.post("/series", MovieController.findSeries);

// connect home page to add movie
router.get("/addmovie", MovieController.form);
router.post("/addmovie", MovieController.create);

// connect home page to add movie
router.get("/signup", MovieController.signupRender);
router.post("/signup", MovieController.signup);

router.get("/signin", MovieController.signinRender);
router.post("/signin", MovieController.signin);

router.get("/user", MovieController.userRender);
router.post("/user", MovieController.user);

// connect home page to edit movie
// router.post("/editmovie/:idMovie", MovieController.create);
router.get("/editmovie/:idMovie", MovieController.edit);
router.post("/editmovie/:idMovie", MovieController.update);
router.get("/:idMovie", MovieController.delete);

// router.post("/editmovie/:idMovie", MovieController.create);
// router.get("/deletemovie/:idMovie", MovieController.edit);
// router.post("/deletemovie/:idMovie", MovieController.update);

module.exports = router;
