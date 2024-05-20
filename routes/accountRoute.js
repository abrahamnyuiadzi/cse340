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

        router.post(
            '/register',
            regValidate.registationRules(),
           regValidate.checkRegData, 
   utilities.handleErrors(accountController.registerAccount))