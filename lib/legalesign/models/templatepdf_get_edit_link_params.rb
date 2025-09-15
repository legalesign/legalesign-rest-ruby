# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Templatepdf#get_edit_link
    class TemplatepdfGetEditLinkParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
