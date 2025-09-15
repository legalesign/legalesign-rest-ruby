# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Template#update
    class TemplateUpdateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute body
      #   json with any fields to update
      #
      #   @return [String]
      required :body, String

      # @!method initialize(body:, request_options: {})
      #   @param body [String] json with any fields to update
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
