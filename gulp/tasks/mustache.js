var gulp = require('gulp'),
  mustache = require('gulp-mustache');

var dest = './public',
  json = new Object();

requireJSON = function(file) {
  var fs = require('fs');
  contents = JSON.parse(fs.readFileSync(file));
  return contents
}

json.en = requireJSON('./i18n/en.json');
console.log(json.en)

gulp.task('mustache', ['jade'], function() {
  return gulp.src(['./templates/**/*.html'])
    .pipe(mustache(json.en))
    .pipe(gulp.dest(dest))
})

