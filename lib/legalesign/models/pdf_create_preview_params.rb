# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Pdf#create_preview
    class PdfCreatePreviewParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute group
      #
      #   @return [String]
      required :group, String

      # @!attribute is_signature_per_page
      #
      #   @return [Integer]
      required :is_signature_per_page, Integer

      # @!attribute signature_type
      #
      #   @return [Integer]
      required :signature_type, Integer

      # @!attribute signee_count
      #   number of signers
      #
      #   @return [Integer]
      required :signee_count, Integer

      # @!attribute text
      #   raw html
      #
      #   @return [String]
      required :text, String

      # @!attribute footer
      #
      #   @return [String, nil]
      optional :footer, String

      # @!attribute footer_height
      #
      #   @return [Integer, nil]
      optional :footer_height, Integer

      # @!attribute header
      #
      #   @return [String, nil]
      optional :header, String

      # @!attribute header_height
      #
      #   @return [Integer, nil]
      optional :header_height, Integer

      # @!attribute pdfheader
      #   Set to true to use group default
      #
      #   @return [Boolean, nil]
      optional :pdfheader, Legalesign::Internal::Type::Boolean

      # @!attribute title
      #
      #   @return [String, nil]
      optional :title, String

      # @!method initialize(group:, is_signature_per_page:, signature_type:, signee_count:, text:, footer: nil, footer_height: nil, header: nil, header_height: nil, pdfheader: nil, title: nil, request_options: {})
      #   @param group [String]
      #
      #   @param is_signature_per_page [Integer]
      #
      #   @param signature_type [Integer]
      #
      #   @param signee_count [Integer] number of signers
      #
      #   @param text [String] raw html
      #
      #   @param footer [String]
      #
      #   @param footer_height [Integer]
      #
      #   @param header [String]
      #
      #   @param header_height [Integer]
      #
      #   @param pdfheader [Boolean] Set to true to use group default
      #
      #   @param title [String]
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
