# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Status#retrieve_all
    class StatusRetrieveAllParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute filter
      #   Filter on archived status, default is false
      #
      #   @return [String, nil]
      optional :filter, String

      # @!attribute limit
      #   Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Offset from start of dataset. Use with the limit query to iterate through
      #   dataset.
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!method initialize(filter: nil, limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::StatusRetrieveAllParams} for more details.
      #
      #   @param filter [String] Filter on archived status, default is false
      #
      #   @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
