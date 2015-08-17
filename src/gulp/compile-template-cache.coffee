'use strict'
gulp   = require('gulp')
concat = require('gulp-concat')
plumber = require('gulp-plumber')
jade = require('gulp-jade')
logger = require('aitutils').aitutils.logger
templateCache = require("gulp-angular-templatecache")
module.exports = ()->
  logger.info 'ASSET', "Compile core jadescripts"


  gulp.src("./src/assets/angular_templates/**/*.jade").pipe(plumber()).pipe(jade({ locals: {} })).pipe(templateCache({module: "App", root:""})).pipe(gulp.dest("./dist/js"))

  return


module.exports.watch = './_content/**/*.jade'