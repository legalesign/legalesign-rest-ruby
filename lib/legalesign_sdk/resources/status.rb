# frozen_string_literal: true

module LegalesignSDK
  module Resources
    class Status
      # Faster short query for a document status
      #
      # @overload retrieve(doc_id, request_options: {})
      #
      # @param doc_id [String] ID of document
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [LegalesignSDK::Models::StatusRetrieveResponse]
      #
      # @see LegalesignSDK::Models::StatusRetrieveParams
      def retrieve(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["status/%1$s/", doc_id],
          model: LegalesignSDK::Models::StatusRetrieveResponse,
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
