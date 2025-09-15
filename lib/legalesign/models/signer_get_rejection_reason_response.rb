# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Signer#get_rejection_reason
    class SignerGetRejectionReasonResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute reason
      #
      #   @return [String, nil]
      optional :reason, String

      # @!attribute status
      #
      #   @return [Integer, nil]
      optional :status, Integer

      # @!method initialize(reason: nil, status: nil)
      #   @param reason [String]
      #   @param status [Integer]
    end
  end
end
