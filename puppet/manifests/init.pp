exec { 'apt_update':
  command => 'apt-get update',
  path    => '/usr/bin'
}

class { 'git::install': }
#class { 'subversion::install': }
class { 'apache2::install': }
class { 'php5::install': }
class { 'mysql::install': }
#class { 'wordpress::install': }
#class { 'phpmyadmin::install': }
#class { 'phpqa::install': }

class { 'nodejs':
  version      => 'stable',
}

#package { ['gulp', 'gulp-ruby-sass', 'gulp-autoprefixer', 'gulp-minify-css', 'gulp-concat', 'gulp-uglify', 'gulp-rename', 'gulp-plumber' ]:
package { 'gulp':
	ensure => present,
	provider => 'npm',
}

package { 'sass':
	ensure => present,
	provider => 'gem',
}