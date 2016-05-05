require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource

  has n, :tags, through: Resource  #does not have tags property?

  property :id,       Serial
  property :title,    String
  property :url,      String

end
