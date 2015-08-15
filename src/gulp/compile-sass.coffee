'use strict'
gulp   = require('gulp')
plumber = require('gulp-plumber')
sass = require('gulp-sass')
logger = require('aitutils').aitutils.logger

module.exports = ()->
  logger.info 'ASSET', "Compile core coffeescripts"
  gulp.src(["./src/sass/**/*.sass","!./_sass/**/_*.sass"]).pipe(plumber()).pipe(sass({indentedSyntax: true})).pipe(gulp.dest("./dist/css"))
  return


module.exports.taskName = 'compile-sass'
module.exports.watch = "./src/sass/**/*.sass"