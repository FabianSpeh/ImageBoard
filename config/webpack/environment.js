const { environment } = require("@rails/webpacker");

const webpack = require("webpack");

enviroment.plugins.append(
  "Provide",
  new webpack.Plugin.ProvidePlugin({
    $: "jquery",
    jQuery: "jquery",
  })
);

module.exports = environment;
