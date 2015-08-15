'use strict'
gulp   = require('gulp')
concat = require('gulp-concat')
plumber = require('gulp-plumber')
jade = require('gulp-jade')
logger = require('aitutils').aitutils.logger
templateCache = require("gulp-angular-templatecache")
module.exports = ()->
  logger.info 'ASSET', "Compile core jadescripts"

  sourcePaths = ["./_content/**/*.jade", "!./_content/**/_*.jade", "!./_content/blog"]
  gulp.src("./app/assets/templates/**/*.jade").pipe(plumber()).pipe(jade({ locals: {} })).pipe(templateCache({module: "App", root:""})).pipe(gulp.dest("./public/cdn"))
  #gulp.src(sourcePaths).pipe(plumber()).pipe(jade({ locals: {} })).pipe(gulp.dest("./"))
  return


module.exports.watch = './_content/**/*.jade'