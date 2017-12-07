const wdioConfig = require('../wdio.conf.js');

wdioConfig.config.specs = [
    './e2e/**/*.feature',
];
wdioConfig.config.cucumberOpts.require = [
    './src/steps/given.js',
    './src/steps/then.js',
    './src/steps/when.js',
    './e2e/steps/given.js',
    './e2e/steps/then.js',
    './e2e/steps/when.js',
];

exports.config = wdioConfig.config;
