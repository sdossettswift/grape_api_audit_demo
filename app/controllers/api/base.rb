module API
  class Base < Grape::API
      mount API::VI::Base
  end
end

