# frozen_string_literal: true

require 'sqlite3'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

ActiveRecord::Schema.define(version: 1) do
  create_table :tests, force: true do |t|
    t.string   :value_strip
    t.string   :value
    t.integer  :number
  end
end

class Test < ActiveRecord::Base
  acts_as_strippable_on :value_strip, :number
end
