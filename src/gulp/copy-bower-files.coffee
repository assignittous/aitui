#move-bower-files.coffee

'use strict'
gulp   = require('gulp')
bowerfiles = require('main-bower-files')
logger = require('aitutils').aitutils.logger


module.exports = ()->
  logger.info "Copying bower components to dist/ext"
  gulp.src(bowerfiles()).pipe gulp.dest "./dist/ext"
  return









