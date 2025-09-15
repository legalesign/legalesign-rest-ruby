# frozen_string_literal: true

module Legalesign
  module Models
    module Templatepdf
      # @see Legalesign::Resources::Templatepdf::Fields#list
      class FieldListParams < Legalesign::Internal::Type::BaseModel
        extend Legalesign::Internal::Type::RequestParameters::Converter
        include Legalesign::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
