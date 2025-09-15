# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Signer#retrieve
    class SignerRetrieveResponse < Legalesign::Internal::Type::BaseModel
      # @!attribute document
      #
      #   @return [String, nil]
      optional :document, String

      # @!attribute email
      #
      #   @return [String, nil]
      optional :email, String

      # @!attribute first_name
      #
      #   @return [String, nil]
      optional :first_name, String

      # @!attribute has_fields
      #
      #   @return [Boolean, nil]
      optional :has_fields, Legalesign::Internal::Type::Boolean

      # @!attribute last_name
      #
      #   @return [String, nil]
      optional :last_name, String

      # @!attribute order
      #
      #   @return [Integer, nil]
      optional :order, Integer

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

      # @!method initialize(document: nil, email: nil, first_name: nil, has_fields: nil, last_name: nil, order: nil, resource_uri: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::SignerRetrieveResponse} for more details.
      #
      #   @param document [String]
      #
      #   @param email [String]
      #
      #   @param first_name [String]
      #
      #   @param has_fields [Boolean]
      #
      #   @param last_name [String]
      #
      #   @param order [Integer]
      #
      #   @param resource_uri [String]
      #
      #   @param status [Integer, Legalesign::Models::SignerStatusEnum] Signer status options:
    end
  end
end
