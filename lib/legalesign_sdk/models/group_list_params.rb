# frozen_string_literal: true

module LegalesignSDK
  module Models
    # @see LegalesignSDK::Resources::Group#list
    class GroupListParams < LegalesignSDK::Internal::Type::BaseModel
      extend LegalesignSDK::Internal::Type::RequestParameters::Converter
      include LegalesignSDK::Internal::Type::RequestParameters

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
      #   {LegalesignSDK::Models::GroupListParams} for more details.
      #
      #   @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      #   @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      #   @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
