# frozen_string_literal: true

module LegalesignSDK
  module Models
    class SignerRetrieveFieldsResponseItem < LegalesignSDK::Internal::Type::BaseModel
      # @!attribute fieldorder
      #
      #   @return [Integer, nil]
      optional :fieldorder, Integer, nil?: true

      # @!attribute label
      #
      #   @return [String, nil]
      optional :label, String

      # @!attribute label_extra
      #
      #   @return [String, nil]
      optional :label_extra, String

      # @!attribute state
      #
      #   @return [Boolean, nil]
      optional :state, LegalesignSDK::Internal::Type::Boolean

      # @!attribute value
      #   If the field is a signer file this value will be a short lived download URL
      #
      #   @return [String, nil]
      optional :value, String, nil?: true

      # @!method initialize(fieldorder: nil, label: nil, label_extra: nil, state: nil, value: nil)
      #   @param fieldorder [Integer, nil]
      #
      #   @param label [String]
      #
      #   @param label_extra [String]
      #
      #   @param state [Boolean]
      #
      #   @param value [String, nil] If the field is a signer file this value will be a short lived download URL
    end

    # @type [LegalesignSDK::Internal::Type::Converter]
    SignerRetrieveFieldsResponse =
      LegalesignSDK::Internal::Type::ArrayOf[-> { LegalesignSDK::Models::SignerRetrieveFieldsResponseItem }]
  end
end
