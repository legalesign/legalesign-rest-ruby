# frozen_string_literal: true

module Legalesign
  module Resources
    class Status
      # Faster short query for a document status
      #
      # @overload retrieve(doc_id, request_options: {})
      #
      # @param doc_id [String] ID of document
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::StatusResponse]
      #
      # @see Legalesign::Models::StatusRetrieveParams
      def retrieve(doc_id, params = {})
        @client.request(
          method: :get,
          path: ["status/%1$s/", doc_id],
          model: Legalesign::StatusResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::StatusRetrieveAllParams} for more details.
      #
      # Shortened faster query for status of signing documents
      #
      # @overload retrieve_all(filter: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param filter [String] Filter on archived status, default is false
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::StatusRetrieveAllResponse]
      #
      # @see Legalesign::Models::StatusRetrieveAllParams
      def retrieve_all(params = {})
        parsed, options = Legalesign::StatusRetrieveAllParams.dump_request(params)
        @client.request(
          method: :get,
          path: "status/",
          query: parsed,
          model: Legalesign::Models::StatusRetrieveAllResponse,
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
