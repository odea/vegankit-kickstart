var gulp = require('gulp'),
    mustache = require('gulp-mustache'),
    fs = require('fs'),
    files = fs.readdirSync('./i18n'),
    requireJSON = function(file) { return contents = JSON.parse(fs.readFileSync(file)); };

gulp.task('mustache', ['jade'], function() {
  for (var $i=0; $i<files.length; $i++) {
    console.log(files[$i])

    var dir = (files[$i] == "en.json" ? "" : files[$i].replace('.json', '') + '/');

    gulp.src(['./templates/**/*.html'])
      .pipe(mustache(requireJSON("./i18n/" + files[$i])))
      .pipe(gulp.dest('./public/' + dir))
  }
}) 
