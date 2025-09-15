# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Document#preview
    class DocumentPreviewParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #
      #   @return [String, nil]
      optional :group, String

      # @!attribute signee_count
      #
      #   @return [Integer, nil]
      optional :signee_count, Integer

      # @!attribute text
      #
      #   @return [String, nil]
      optional :text, String

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(group: nil, signee_count: nil, text: nil, title: nil, request_options: {})
      #   @param group [String]
      #   @param signee_count [Integer]
      #   @param text [String]
      #   @param title [String]
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
