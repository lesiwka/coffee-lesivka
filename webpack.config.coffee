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
  entry: './src/lesivka.coffee'
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'lesivka.js'
    library: 'lesivka'
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
    filename: 'lesivka.encode.js'
    library: 'lesivka'
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
  entry: './src/lesivka.coffee'
  output:
    path: path.resolve(__dirname, 'dist')
    filename: 'lesivka.node.js'
    libraryTarget: 'commonjs'


module.exports = [webConfig, chromeConfig, nodeConfig]
