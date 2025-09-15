# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Status#retrieve
    class StatusResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute archived
      #
      #   @return [Boolean, nil]
      optional :archived, Legalesign::Internal::Type::Boolean

      # @!attribute download_final
      #
      #   @return [Boolean, nil]
      optional :download_final, Legalesign::Internal::Type::Boolean

      # @!attribute resource_uri
      #
      #   @return [String, nil]
      optional :resource_uri, String

      # @!attribute status
      #   Signer status options:
      #
      #   - 4 - unsent
      #   - 5 - scheduled to be sent
      #   - 10 - sent
      #   - 15 - email opened
      #   - 20 - visited
      #   - 30 - fields complete
      #   - 35 - fields complete ex signature
      #   - 39 - waiting for witness to complete
      #   - 40 - signed
      #   - 50 - downloaded
      #   - 60 - rejected
      #
      #   @return [Integer, Legalesign::Models::SignerStatusEnum, nil]
      optional :status, enum: -> { Legalesign::SignerStatusEnum }

      # @!attribute tag
      #
      #   @return [String, nil]
      optional :tag, String

      # @!attribute tag1
      #
      #   @return [String, nil]
      optional :tag1, String

      # @!attribute tag2
      #
      #   @return [String, nil]
      optional :tag2, String

      # @!method initialize(archived: nil, download_final: nil, resource_uri: nil, status: nil, tag: nil, tag1: nil, tag2: nil)
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::StatusResponse} for more details.
      #
      #   @param archived [Boolean]
      #
      #   @param download_final [Boolean]
      #
      #   @param resource_uri [String]
      #
      #   @param status [Integer, Legalesign::Models::SignerStatusEnum] Signer status options:
      #
      #   @param tag [String]
      #
      #   @param tag1 [String]
      #
      #   @param tag2 [String]
    end
  end
end
