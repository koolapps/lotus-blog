require 'lotus/repository'

class PostRepository
  include Lotus::Repository

  def self.ordered_by_created_at
    query do
      order(:created_at)
    end
  end
end
