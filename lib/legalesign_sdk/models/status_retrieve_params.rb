# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Status#retrieve
    class StatusRetrieveParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
