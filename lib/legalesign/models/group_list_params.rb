# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Group#list
    class GroupListParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

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

      # @!method initialize(limit: nil, offset: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::GroupListParams} for more details.
      #
      #   @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
