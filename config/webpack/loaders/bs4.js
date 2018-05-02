const path = require('path')
const { source_path } = require('@rails/webpacker').config

module.exports = {
    test: /\.js$/,
        include: [ // use `include` vs `exclude` to white-list vs black-list
            path.resolve(source_path), // white-list your app source files
            require.resolve("bootstrap-vue"), // white-list bootstrap-vue
        ],
    loader: "babel-loader"
}