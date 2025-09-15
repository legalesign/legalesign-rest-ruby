# frozen_string_literal: true

module Legalesign
  module Models
    class ListMeta < Legalesign::Internal::Type::BaseModel
      # @!attribute limit
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute next_
      #
      #   @return [String, nil]
      optional :next_, String, api_name: :next, nil?: true

      # @!attribute offset
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute previous
      #
      #   @return [String, nil]
      optional :previous, String, nil?: true

      # @!attribute total_count
      #   total number of objects
      #
      #   @return [Integer, nil]
      optional :total_count, Integer

      # @!method initialize(limit: nil, next_: nil, offset: nil, previous: nil, total_count: nil)
      #   @param limit [Integer]
      #
      #   @param next_ [String, nil]
      #
      #   @param offset [Integer]
      #
      #   @param previous [String, nil]
      #
      #   @param total_count [Integer] total number of objects
    end
  end
end
