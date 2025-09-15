# frozen_string_literal: true

module Legalesign
  module Models
    class SignerRetrieveFieldsResponseItem < Legalesign::Internal::Type::BaseModel
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
      optional :state, Legalesign::Internal::Type::Boolean

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

    # @type [Legalesign::Internal::Type::Converter]
    SignerRetrieveFieldsResponse =
      Legalesign::Internal::Type::ArrayOf[-> { Legalesign::Models::SignerRetrieveFieldsResponseItem }]
  end
end
