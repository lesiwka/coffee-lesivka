path = require('path')

webConfig =
  target: 'web'
  mode: 'production'
  module:
    rules: [
      {
        test: /\.coffee$/
        use: [
          loader: 'coffee-loader',
          options:
            transpile:
              presets: ['@babel/preset-env']
        ]
      }
    ]
  entry: './src/lesiwka.coffee'
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'lesiwka.js'
    library: 'lesiwka'
    libraryTarget: 'var'

chromeConfig =
  target: 'web'
  mode: 'production'
  module:
    rules: [
      {
        test: /\.coffee$/
        use: ['coffee-loader']
      }
    ]
  entry: './src/encode.coffee'
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'lesiwka.encode.js'
    library: 'lesiwka'
    libraryTarget: 'var'

nodeConfig =
  target: 'node'
  mode: 'development'
  module:
    rules: [
      {
        test: /\.coffee$/
        use: ['coffee-loader']
      }
    ]
  entry: './src/lesiwka.coffee'
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'lesiwka.node.js'
    libraryTarget: 'commonjs'


module.exports = [webConfig, chromeConfig, nodeConfig]
