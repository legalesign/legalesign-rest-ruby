# typed: strong

module Legalesign
  module Resources
    class Status
      # Faster short query for a document status
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::StatusResponse)
      end
      def retrieve(
        # ID of document
        doc_id,
        request_options: {}
      )
      end

      # Shortened faster query for status of signing documents
      sig do
        params(
          filter: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::StatusRetrieveAllResponse)
      end
      def retrieve_all(
        # Filter on archived status, default is false
        filter: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
