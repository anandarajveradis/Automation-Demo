import { DataTable } from '@cucumber/cucumber';
import { UtilsPO } from "./utilsPO";
require('@cypress/xpath');

const utilsPO = new UtilsPO();

export class CommonPO {
    actionOnText(dataTable: DataTable, xpathName: string, action: string) {
        dataTable.hashes().forEach(data => {
            const labelValue: string = data['Text'];
            const xpathValue = utilsPO.getXpathValue(xpathName);
            const xpath = xpathValue.replace('$text', labelValue);
            if (action == "visible") {
                cy.xpath(xpath).should("be.visible");
            } else if (action == "click") {
                cy.xpath(xpath).should("be.visible").first().click({ force: true });
            }
        });
    };

    inputById(dataTable: DataTable) {
        const dataKey = "Name";
        const dataValue = "Value";
        dataTable.hashes().forEach(data => {
            const inputName: string = data[dataKey];
            const inputValue: string = data[dataValue];
            const id = utilsPO.getIdValue(inputName);
            cy.get(`#${id}`).then((element) => {
                let elementNode: string = Cypress.$(element).prop('nodeName');
                elementNode = elementNode.toLowerCase();
                console.log(elementNode)
                if (inputValue == "Enter") {
                    cy.get(`#${id}`).type('{enter}');
                } else {
                    if (elementNode == 'select') {
                        cy.get(`#${id}`).should('be.visible').select(inputValue, { force: true });
                    } else if (elementNode == 'textarea') {
                        cy.get(`#${id}`).should("be.visible").clear().type(inputValue, { delay: 50 });
                    } else if (elementNode == 'input') {
                        const type = Cypress.$(element).attr('type');
                        if (type == 'checkbox') {
                            cy.get(`#${id}`).should("be.visible").click({ force: true })
                        } else {
                            cy.get(`#${id}`).should("be.visible").click({ force: true }).focused().clear().type(inputValue, { delay: 50 });
                        }
                    } else if (elementNode == 'iframe') {
                        cy.get(`iframe[id="${id}"]`).its('0.contentDocument').should('exist').find('#tinymce').should("be.visible").clear().type(inputValue);
                    }
                }
            })
        });
    };

    clickById(dataTable: DataTable, dataKey: string) {
        dataTable.hashes().forEach(data => {
            const inputName: string = data[dataKey];
            const id = utilsPO.getIdValue(inputName);
            cy.get(`#${id}`).should("be.visible").click({ force: true })
        });
    }

    clickAdminMenu(dataTable: DataTable) {
        const dataMain = "MainMenu";
        const dataSub = "Submenu";
        dataTable.hashes().forEach(data => {
            const mainMenu: string = data[dataMain];
            const xpathMainValue = utilsPO.getXpathValue("adminMenu");
            const xpathMain = xpathMainValue.replace('$text', mainMenu);
            cy.xpath(xpathMain).should("be.visible").click({ force: true });
            if (data[dataSub]) {
                const subMenu: string = data[dataSub];
                let xpathSub = utilsPO.getXpathValue("adminSubMenu");
                xpathSub = xpathSub.replace('$mainText', mainMenu);
                xpathSub = xpathSub.replace('$subText', subMenu);
                cy.xpath(xpathSub).first().should("be.visible").click({ force: true });
            }
        });
    }

    actionOnElement(dataTable: DataTable, xpathNameParam: string, action: string) {
        dataTable.hashes().forEach(data => {
            const colName: string = data["Name"];
            const colValue: string = data["Value"];
            let xpathName = xpathNameParam;
            if ((colName == 'Name' || colName == 'Username' || colName == 'Title') && xpathNameParam == "adminGridColumn") {
                xpathName = "adminGridColumnPrimary";
            }
            const xpathGridRow = utilsPO.getXpathValue(xpathName);
            let xpathRow = xpathGridRow.replace('$nameText', colName);
            xpathRow = xpathRow.replace('$valText', colValue);
            if (action == "visible") {
                cy.xpath(xpathRow).should("be.visible");
            } else if (action == "click") {
                cy.xpath(xpathRow).should("be.visible").first().click({ force: true });
            }
        });
    };

    loginAsUser(user: string) {
        const usernameId = utilsPO.getIdValue("Username or Email Address");
        const passwordId = utilsPO.getIdValue("Password");
        const loginId = utilsPO.getIdValue("Log In");
        const username = Cypress.env(user)["username"];
        const password = Cypress.env(user)["password"];
        cy.get(`#${loginId}`).should("be.visible");
        cy.visit("/");
        cy.get(`#${usernameId}`).should("be.visible").click({ force: true }).focused().clear().type(username, { delay: 100 });
        cy.get(`#${passwordId}`).should("be.visible").click({ force: true }).focused().clear().type(password, { delay: 50 });
        cy.get(`#${loginId}`).should("be.visible").click({ force: true })
    }

    logout() {
        let xpathpopup = utilsPO.getXpathValue("adminPopup");
        cy.xpath(xpathpopup).invoke("show");
        let xpathlogout = utilsPO.getXpathValue("adminLogout");
        cy.xpath(xpathlogout).should("be.visible").click({ force: true });
    }
    // screenshot() {
    //     cy.screenshot("SS1");
    //     cy.compareSnapshot("SS1");
    // }

    randomCases() {
        let x = Math.floor((Math.random() * 20) + 1);
        const checkNum = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19];
        assert.isTrue(checkNum.includes(x), `Number ${x} doesn't exist in list`);
    }
};