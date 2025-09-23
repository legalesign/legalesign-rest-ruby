# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Template#update
    class TemplateUpdateParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      # @!attribute body
      #   json with any fields to update
      #
      #   @return [String]
      required :body, String

      # @!method initialize(body:, request_options: {})
      #   @param body [String] json with any fields to update
      #
      #   @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
