# typed: strong

module LegalesignSDK
  module Resources
    class Pdf
      # Get the PDF for a signing document
      sig do
        params(
          doc_id: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def retrieve(doc_id, request_options: {})
      end

      # @api private
      sig { params(client: LegalesignSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
