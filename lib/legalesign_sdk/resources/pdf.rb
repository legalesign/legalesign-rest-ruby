# frozen_string_literal: true

module LegalesignSDK
  module Resources
    class Pdf
      # Get the PDF for a signing document
      #
      # @overload retrieve(doc_id, request_options: {})
      #
      # @param doc_id [String]
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see LegalesignSDK::Models::PdfRetrieveParams
      def retrieve(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["pdf/%1$s/", doc_id],
          headers: {"accept" => "application/pdf"},
          model: StringIO,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [LegalesignSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
