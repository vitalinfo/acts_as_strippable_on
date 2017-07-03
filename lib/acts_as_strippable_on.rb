require 'active_record'
require 'acts_as_strippable_on/version'
require 'acts_as_strippable_on/core'

module ActsAsStrippableOn
  include ActsAsStrippableOn::Core
end

# Extend ActiveRecord's functionality
ActiveRecord::Base.send :extend, ActsAsStrippableOn
