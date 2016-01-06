source 'https://rubygems.org'
ruby '2.1.5'


gem 'rails', '4.1.8'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'bootstrap-sass'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'devise'
gem 'paperclip', '~> 3.5.1'
gem 'aws-sdk', '< 2.0'
gem 'masonry-rails', '~> 0.2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin]

group :development, :test do |variable|
	gem 'sqlite3'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end