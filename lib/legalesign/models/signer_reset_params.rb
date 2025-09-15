# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Signer#reset
    class SignerResetParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute email
      #   Email of signer to revert to.
      #
      #   @return [String]
      required :email, String

      # @!attribute notify
      #   Email notify current signer access is being withdrawn
      #
      #   @return [Boolean, nil]
      optional :notify, Legalesign::Internal::Type::Boolean

      # @!method initialize(email:, notify: nil, request_options: {})
      #   @param email [String] Email of signer to revert to.
      #
      #   @param notify [Boolean] Email notify current signer access is being withdrawn
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
