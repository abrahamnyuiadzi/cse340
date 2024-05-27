const express = require("express")
const router = new express.Router() 
const accountController = require("../controllers/accountController")

const utilities = require("../utilities")
const regValidate = require('../utilities/account-validation')



router.get("/login",utilities.handleErrors(accountController.
    buildLogin))
    //unit 4 register login 
    router.get("/register",utilities.handleErrors(accountController.
        buildRegister))

        //unit 5 new default login //
        router.get("/", utilities.checkLogin, utilities.handleErrors(accountController.
            buildManagement))

     // Process the login request
router.post(
    "/login",
    regValidate.cleckLogin(),
    regValidate.checkLoginData,
    utilities.handleErrors(accountController.accountLogin)
  )

  module.exports = router

  