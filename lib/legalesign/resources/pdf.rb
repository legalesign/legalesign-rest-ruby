# frozen_string_literal: true

module Legalesign
  module Resources
    class Pdf
      # Get the PDF for a signing document
      #
      # @overload retrieve(doc_id, request_options: {})
      #
      # @param doc_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Legalesign::Models::PdfRetrieveParams
      def retrieve(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["pdf/%1$s/", doc_id],
          headers: {"accept" => "application/pdf"},
          model: StringIO,
          options: params[:request_options]
        )
      end

      # text/html document as pdf preview
      #
      # @overload create_preview(group:, is_signature_per_page:, signature_type:, signee_count:, text:, footer: nil, footer_height: nil, header: nil, header_height: nil, pdfheader: nil, title: nil, request_options: {})
      #
      # @param group [String]
      #
      # @param is_signature_per_page [Integer]
      #
      # @param signature_type [Integer]
      #
      # @param signee_count [Integer] number of signers
      #
      # @param text [String] raw html
      #
      # @param footer [String]
      #
      # @param footer_height [Integer]
      #
      # @param header [String]
      #
      # @param header_height [Integer]
      #
      # @param pdfheader [Boolean] Set to true to use group default
      #
      # @param title [String]
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see Legalesign::Models::PdfCreatePreviewParams
      def create_preview(params)
        parsed, options = Legalesign::PdfCreatePreviewParams.dump_request(params)
        @client.request(
          method: :post,
          path: "pdf/preview/",
          headers: {"accept" => "application/pdf"},
          body: parsed,
          model: StringIO,
          options: options
        )
      end

      # @api private
      #
      # @param client [Legalesign::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
