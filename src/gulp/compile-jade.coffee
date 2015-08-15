'use strict'
gulp   = require('gulp')
concat = require('gulp-concat')
plumber = require('gulp-plumber')
jade = require('gulp-jade')
logger = require('aitutils').aitutils.logger

module.exports = ()->
  logger.info 'ASSET', "Compile jade"

  sourcePaths = ["./src/assets/specimen/**/*.jade", "!./src/assets/specimen/**/_*.jade"]

  gulp.src(sourcePaths).pipe(plumber()).pipe(jade({ locals: {} })).pipe(gulp.dest("./dist"))
  return



module.exports.watch = './src/assets/specimen/**/*.jade'