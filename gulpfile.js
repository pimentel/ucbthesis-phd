var gulp = require('gulp');
var exec = require('child_process').exec;

var buildCommand = 'make'

gulp.task('watch', function() {
  gulp.watch('src/*.tex', ['build']);
  gulp.watch('src/*.bib', ['build']);
  gulp.watch('src/*.cls', ['build']);
});

gulp.task('build', ['watch'], function() {
  exec(buildCommand, function(error, standardOutput, standardError) {
    if (error) {
      console.error('There was an error: ' + error);
    }
    console.log(standardOutput);
    console.log(standardError);
  });
});

gulp.task('default', ['build', 'watch'], function() {});
