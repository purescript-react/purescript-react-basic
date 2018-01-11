"use strict";

const path = require("path");

const webpack = require("webpack");

const isWebpackDevServer = process.argv.filter(
  a => path.basename(a) === "webpack-dev-server"
).length;

const isWatch = process.argv.filter(a => a === "--watch").length;

const plugins =
  isWebpackDevServer || !isWatch
    ? []
    : [
        function() {
          this.plugin("done", function(stats) {
            process.stderr.write(stats.toString("errors-only"));
          });
        }
      ];

module.exports = {
  devtool: "none",

  devServer: {
    contentBase: ".",
    port: 4008,
    stats: "errors-only"
  },

  entry: "./src/App.js",

  output: {
    path: __dirname,
    pathinfo: true,
    filename: "app.js"
  },

  module: {
    rules: [
      {
        test: /\.purs$/,
        use: [
          {
            loader: "purs-loader",
            options: {
              src: [
                "../bower_components/purescript-*/src/**/*.purs",
                "../src/**/*.purs",
                "src/**/*.purs"
              ],
              output: "../output",
              bundle: false,
              psc: "psa",
              watch: isWebpackDevServer || isWatch,
              pscIde: false
            }
          }
        ]
      }
    ]
  },

  resolve: {
    modules: ["example/node_modules", "bower_components"],
    extensions: [".purs", ".js"]
  },

  plugins: [
    new webpack.LoaderOptionsPlugin({
      debug: true
    })
  ].concat(plugins)
};
