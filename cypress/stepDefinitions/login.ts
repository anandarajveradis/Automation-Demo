import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";
import { DataTable } from '@cucumber/cucumber';
import { CommonPO } from "../pageObjects/commonPO";

const commonPo = new CommonPO();

Given("navigate to admin login page", () => {
  cy.visit("/")
});
// Then("Visual Verify", () =>{
//   commonPo.screenshot()
// });

Then("verify following label text is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "labelText", "visible")
});

Then("verify following button text is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "buttonText", "visible")
});

Then("verify following button is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "buttonTagText", "visible")
});

Then("verify following link text is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "linkText", "visible")
});

Then("verify following error message is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "loginError", "visible")
})

Then("check page title", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "h1Text", "visible")
});

Then("verify following h2 text is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "h2Text", "visible")
})

Then("check following admin menu is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "adminMenu", "visible")
});

Then("verify following username is visible", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "userName", "visible")
})

Then("click following button text", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "buttonText", "click")
});

Then("click following button", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "buttonTagText", "click")
});

Then("click following link text", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "linkText", "click")
});

Then("click on label text", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "labelText", "click")
})

Then("click the following menu in product data section", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "productDataMenu", "click")
})

Then("click on following image in image gallery", (dataTable: DataTable) => {
  commonPo.actionOnText(dataTable, "attachImage", "click")
})

Then("click the following button using id", (dataTable: DataTable) => {
  commonPo.clickById(dataTable, "Name");
});

Then("click following link by id", (dataTable: DataTable) => {
  commonPo.clickById(dataTable, "Name");
})

Then("check the admin grid column data", (dataTable: DataTable) => {
  commonPo.actionOnElement(dataTable, "adminGridColumn", "visible")
});

Then("click the admin grid column data", (dataTable: DataTable) => {
  commonPo.actionOnElement(dataTable, "adminGridColumn", "click")
});

Then("delete row using following grid column", (dataTable: DataTable) => {
  commonPo.actionOnElement(dataTable, "deleteRow", "click")
})

Then("trash row using following grid column", (dataTable: DataTable) => {
  commonPo.actionOnElement(dataTable, "trashRow", "click")
})

Then("login user as {string}", (user: string) => {
  commonPo.loginAsUser(user);
})

Then("enter the following input value", (dataTable: DataTable) => {
  commonPo.inputById(dataTable);
});

Then("click the following admin menu", (dataTable: DataTable) => {
  commonPo.clickAdminMenu(dataTable);
});

Then("click on logout", () => {
  commonPo.logout();
})

Then("check number exist in list of numbers",()=>{
  commonPo.randomCases();
})