var gulp = require('gulp'),
    mustache = require('gulp-mustache'),
    fs = require('fs'),
    files = fs.readdirSync('./i18n'),
    requireJSON = function(file) { return contents = JSON.parse(fs.readFileSync(file)); };

gulp.task('mustache', ['jade'], function() {
  for (var $i=0; $i<files.length; $i++) {
    console.log(files[$i])

    var dir = (files[$i] == "en-us.json" ? "" : files[$i].replace('.json', '') + '/');

    $json = requireJSON("./i18n/" + files[$i])
    $json.rootDir = dir

    gulp.src(['./templates/**/*.html'])
      .pipe(mustache($json))
      .pipe(gulp.dest('./public/' + dir))
  }
}) 
