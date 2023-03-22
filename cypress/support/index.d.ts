declare namespace Cypress {
    interface Chainable<Subject> {
      compareSnapshot(name: string, options?: Partial<ScreenshotOptions>): Chainable<any>;
    }
    const cucumber = require('cypress-cucumber-preprocessor').default;
const codegen = require('./codegen');

module.exports = (on, config) => {
  on('file:preprocessor', cucumber({ }));
  on('task', { codegen });
};
  }