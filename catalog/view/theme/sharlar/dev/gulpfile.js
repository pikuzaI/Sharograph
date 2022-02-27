const proxyURL = 'http://reco.fun:8080/sharlar-shop';

// Load Gulp...of course
const { src, dest, task, watch, series, parallel } = require('gulp');

let version = require('gulp-version-number');


// CSS related plugins
var sass = require('gulp-sass');
var concatCss = require('gulp-concat-css');
let cleanCSS = require('gulp-clean-css');

// JS related plugins
var uglify = require('gulp-uglify');
var babelify = require('babelify');
var browserify = require('browserify');
var source = require('vinyl-source-stream');
var buffer = require('vinyl-buffer');
var stripDebug = require('gulp-strip-debug');

// Utility plugins
var rename = require('gulp-rename');
var sourcemaps = require('gulp-sourcemaps');
var notify = require('gulp-notify');
var plumber = require('gulp-plumber');
var options = require('gulp-options');
var gulpif = require('gulp-if');

// Browers related plugins
var browserSync = require('browser-sync').create();

// Project related variables
var styleSRC = './scss/*.scss';
var styleURL = './../dist/styles/';
var mapURL = './';

var jsSRC = './js/';
var jsFront = 'custom.js';
var jsFiles = [
	"test.js",
	"animation.js",
	"globalAnimations.js",
	"googlemap.js",
	"homeAnimation.js",
	"parallax.js",
	"preloader.js",
	"shopLogics.js",
	"slider.js"
];

var jsURL = './../dist/js/';

var imgSRC = './image/**/*';
var imgURL = './../dist/image/';

var fontsSRC = './fonts/**/*';
var fontsURL = './../dist/fonts/';

var styleWatch = './scss/**/*.scss';
var jsWatch = './js/**/*.js';
var imgWatch = './image/**/*.*';
var fontsWatch = './fonts/**/*.*';
var twigWatch = '../template/**/*.twig';
const versionConfig = {
  'value': '%MDS%',
  'append': {
    'key': 'v',
    'to': [{
			type:'css',
			cover:1,
			files:[/wishlist.css/, 
				/product.css/,
				/stylesheet.css/,
				/stylesheet2.css/
			]
		}, 
		{
			type:'js',
			key:'v',
			cover:1,
			files:[ /common.js/, 
				/animation.min.js/, 
				/globalAnimations.min.js/,
				/googlemap.min.js/,
				/homeAnimation.min.js/,
				/preloader.min.js/,
				/shopLogics.min.js/,
				/slider.min.js/,
			]
		}],
  },
};
// Tasks
function browser_sync() {
  browserSync.init({
    proxy: proxyURL
  });
}

function reload(done) {
  browserSync.reload();
  done();
}

function css(done) {
  src([styleSRC])
    .pipe(sourcemaps.init())
    .pipe(
      sass({
        errLogToConsole: true,
        outputStyle: 'compressed',
				includePaths:['./scss/*.scss', "scss/*.scss"]
      })
    )
    .pipe(concatCss("../" + styleURL + 'stylesheet.css', {rebaseUrls:false}))
    .pipe(cleanCSS({ compatibility: 'ie8', processImport: false }))
    .on('error', console.error.bind(console))
    //.pipe(rename({ suffix: '.min' }))
    .pipe(sourcemaps.write(mapURL))
    .pipe(dest(styleURL))
    .pipe(browserSync.stream());
  done();
}

function js(done) {
  jsFiles.map(function(entry) {
    return browserify({
      entries: [jsSRC + entry]
    })
       .transform(babelify, { presets: ['@babel/preset-env'] })
      .bundle()
      .pipe(source(entry))
      .pipe(
        rename({
          extname: '.min.js'
        })
      )
      .pipe(buffer())
      .pipe(gulpif(options.has('production'), stripDebug()))
      .pipe(sourcemaps.init({ loadMaps: true }))
      .pipe(uglify({
					compress: {
						unused: false
					}
			}))
      .pipe(sourcemaps.write('.'))
      .pipe(dest(jsURL))
      .pipe(browserSync.stream());
  });
  done();
}

function versioning() {
	return src('./twig/*.twig')
		.pipe(version(versionConfig))
		.pipe(dest('../template/common/'))
}

function triggerPlumber(src_file, dest_file) {
  return src(src_file)
    .pipe(plumber())
    .pipe(dest(dest_file));
}

function image() {
  return triggerPlumber(imgSRC, imgURL);
}

function fonts() {
  return triggerPlumber(fontsSRC, fontsURL);
}

function watch_files() {
  watch(styleWatch, series(css,versioning, reload));
  watch(jsWatch, series(js, versioning, reload));
  watch(imgWatch, series(image, reload));
  watch(fontsWatch, series(fonts, reload));
  watch(twigWatch, series(reload));
  src(jsURL + 'custom.min.js').pipe(
    notify({ message: 'Gulp is Watching, Happy Coding!' })
  );
}

task('css', css);
task('js', js);
task('image', image);
task('fonts', fonts);
task('default', parallel(css, js, image, fonts));
task('watch', parallel(browser_sync, watch_files));
