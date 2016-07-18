class Project < ActiveRecord::Base
  def self.create_sharded!(attributes = {})
    shard = Switchman::Shard.create
    shard.activate { Project.create!(attributes) }
  end
end
