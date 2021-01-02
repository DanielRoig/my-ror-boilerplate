module API
    module V1
        module Entities
            class Author < Grape::Entity
                expose :first_name, documentation: { type: :string }
                expose :second_name, documentation: { type: :string }
                expose :birth, documentation: { type: :string }
                expose :born_country, documentation: { type: :string }
                expose :biography, documentation: { type: :string }
            end
        end
    end
end    