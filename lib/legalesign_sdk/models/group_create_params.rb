# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Group#create
    class GroupCreateParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute xframe_allow
      #   Set to true if you want to embed your signing page.
      #
      #   @return [Boolean, nil]
      optional :xframe_allow, LegalesignSDK::Internal::Type::Boolean

      # @!method initialize(name:, xframe_allow: nil, request_options: {})
      #   @param name [String]
      #
      #   @param xframe_allow [Boolean] Set to true if you want to embed your signing page.
      #
      #   @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
