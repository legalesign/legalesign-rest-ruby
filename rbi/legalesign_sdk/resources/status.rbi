# typed: strong

module LegalesignSDK
  module Resources
    class Status
      # Faster short query for a document status
      sig do
        params(
          doc_id: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(LegalesignSDK::Models::StatusRetrieveResponse)
      end
      def retrieve(
        # ID of document
        doc_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: LegalesignSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
