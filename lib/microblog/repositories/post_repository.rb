require 'lotus/repository'

class PostRepository
  include Lotus::Repository

  def self.ordered_by_created_at
    query do
      desc(:created_at)
    end
  end
end
