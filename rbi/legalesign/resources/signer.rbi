# typed: strong

module Legalesign
  module Resources
    class Signer
      # Get status and details of an individual signer
      sig do
        params(
          signer_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::SignerRetrieveResponse)
      end
      def retrieve(
        # ID of signer
        signer_id,
        request_options: {}
      )
      end

      # Returns 1-use link for signer in Location header.
      sig do
        params(
          signer_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def get_access_link(
        # ID of signer
        signer_id,
        request_options: {}
      )
      end

      # Returns reason signer gave for rejecting a document, if given
      sig do
        params(
          signer_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::SignerGetRejectionReasonResponse)
      end
      def get_rejection_reason(signer_id, request_options: {})
      end

      # Reset to an earlier signer if forwarded
      sig do
        params(
          signer_id: String,
          email: String,
          notify: T::Boolean,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def reset(
        signer_id,
        # Email of signer to revert to.
        email:,
        # Email notify current signer access is being withdrawn
        notify: nil,
        request_options: {}
      )
      end

      # Get signer form fields
      sig do
        params(
          signer_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(
          T::Array[Legalesign::Models::SignerRetrieveFieldsResponseItem]
        )
      end
      def retrieve_fields(
        # ID of signer
        signer_id,
        request_options: {}
      )
      end

      # Send signer reminder email
      sig do
        params(
          signer_id: String,
          text: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def send_reminder(
        signer_id,
        # custom message text, html will be stripped
        text: nil,
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
