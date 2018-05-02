const { environment } = require('@rails/webpacker')
const vue =  require('./loaders/vue')
const css =  require('./loaders/css')
const bs4 =  require('./loaders/bs4')

environment.loaders.append('vue', vue)
environment.loaders.append('css', css)
environment.loaders.append('bs4', bs4)
module.exports = environment
