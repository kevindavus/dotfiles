module.exports = {
  "parserOptions": {
    "ecmaVersion": 8,
    "ecmaFeatures": {
      "experimentalObjectRestSpread": true,
      "jsx": true
    },
    "sourceType": "module"
  },

  "extends": [
    "eslint:recommended"
  ],
  
  "env": {
    "browser": true,
    "es6": true,
    "node": true
  },

  "plugins": [
    "eslint-config-sparkpost"
  ],

  "globals": {
    "document": false,
    "navigator": false,
    "window": false
  },
};
