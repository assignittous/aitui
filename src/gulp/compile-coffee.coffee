'use strict'
gulp   = require('gulp')
concat = require('gulp-concat')
plumber = require('gulp-plumber')
coffee = require('gulp-coffee')
logger = require('aitutils').aitutils.logger
module.exports = ()->
  logger.info 'ASSET', "Compile core coffeescripts"
  gulp.src("./src/assets/coffee/angular/**/*.coffee").pipe(plumber()).pipe(coffee({bare:true})).pipe(concat("application.js")).pipe(gulp.dest("./dist/js"))
  #gulp.src("./src/assets/coffee/chartist/**/*.coffee").pipe(plumber()).pipe(coffee({bare:true})).pipe(concat("aitui_chartist.js")).pipe(gulp.dest("./dist/js"))
  #gulp.src("./src/assets/coffee/utilities/**/*.coffee").pipe(plumber()).pipe(coffee({bare:true})).pipe(concat("aitui_utilities.js")).pipe(gulp.dest("./dist/js"))
  return



module.exports.watch = 'databases/**/*.jade'