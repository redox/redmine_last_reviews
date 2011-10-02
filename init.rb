require 'redmine'
require 'last_reviews_hooks'

Redmine::Plugin.register :last_reviews do
  name 'Redmine Last Reviews plugin'
  author 'Sylvain Utard'
  description 'Display a home-page box of the your 10 last reviewed changesets (cross project).'
  version '0.0.1'
  url 'https://github.com/redox/redmine_last_reviews'
  author_url 'http://sylvain.utard.info'
end
