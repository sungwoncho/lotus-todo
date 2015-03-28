require 'lotus/model'
require "lotus/model/adapter/sql_adapter"

Dir["#{ __dir__ }/lotus-todo/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do

  adapter type: :sql, uri: ENV['LOTUS_TODO_DATABASE_URL']

  mapping "#{__dir__}/config/mapping"

end.load!
