require "rubygems"
require "active_record"

config = YAML.load_file('./database.yml')

ActiveRecord::Base.establish_connection(config["db"][ENV["RAILS_ENV"]])

# テーブルにアクセスするためのクラスを宣言
class User < ActiveRecord::Base
  # テーブル名が命名規則に沿わない場合、
  #self.table_name = 'users'
end

p User.all
