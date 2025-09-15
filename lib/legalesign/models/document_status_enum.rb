# frozen_string_literal: true

module Legalesign
  module Models
    # Document status options:
    #
    # - 10 - Initial state, check signer status for sent/unsent
    # - 20 - Fields completed
    # - 30 - Signed
    # - 40 - Removed (before signing)
    # - 50 - Rejected
    module DocumentStatusEnum
      extend Legalesign::Internal::Type::Enum

      # Created
      DOCUMENT_STATUS_ENUM_10 = 10

      # Fields completed
      DOCUMENT_STATUS_ENUM_20 = 20

      # Signed
      DOCUMENT_STATUS_ENUM_30 = 30

      # Removed
      DOCUMENT_STATUS_ENUM_40 = 40

      # Rejected
      DOCUMENT_STATUS_ENUM_50 = 50

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
