const { defineConfig } = require("cypress");
const allureWriter = require("@shelex/cypress-allure-plugin/writer");
// const getCompareSnapshotsPlugin = require("cypress-image-diff/plugin");
const createBundler = require("@bahmutov/cypress-esbuild-preprocessor");
const addCucumberPreprocessorPlugin =
  require("@badeball/cypress-cucumber-preprocessor").addCucumberPreprocessorPlugin;
const createEsbuildPlugin =
  require("@badeball/cypress-cucumber-preprocessor/esbuild").createEsbuildPlugin;
module.exports = defineConfig({
  chromeWebSecurity: false,
  defaultCommandTimeout: 10000,
  env: {
    admin1:{
      username: "admin",
      password: "veradis"
    }
  },
  retries: {
    runMode: 1,
    openMode: 0,
  },
  e2e: {
    baseUrl: 'http://103.168.198.89/automation/wp-admin',
    async setupNodeEvents(on, config) {
      require('@cypress/code-coverage/task')(on, config)
      const bundler = createBundler({
        plugins: [createEsbuildPlugin(config)],
      });
      on("file:preprocessor", bundler);
      await addCucumberPreprocessorPlugin(on, config);
      allureWriter(on, config);
      return config;
    },
    specPattern: "cypress/e2e/**/*.feature",
  },
});
