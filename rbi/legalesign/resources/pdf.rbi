# typed: strong

module Legalesign
  module Resources
    class Pdf
      # Get the PDF for a signing document
      sig do
        params(
          doc_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def retrieve(doc_id, request_options: {})
      end

      # text/html document as pdf preview
      sig do
        params(
          group: String,
          is_signature_per_page: Integer,
          signature_type: Integer,
          signee_count: Integer,
          text: String,
          footer: String,
          footer_height: Integer,
          header: String,
          header_height: Integer,
          pdfheader: T::Boolean,
          title: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def create_preview(
        group:,
        is_signature_per_page:,
        signature_type:,
        # number of signers
        signee_count:,
        # raw html
        text:,
        footer: nil,
        footer_height: nil,
        header: nil,
        header_height: nil,
        # Set to true to use group default
        pdfheader: nil,
        title: nil,
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
