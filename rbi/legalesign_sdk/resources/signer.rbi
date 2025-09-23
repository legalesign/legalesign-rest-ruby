# typed: strong

module LegalesignSDK
  module Resources
    class Signer
      # Get status and details of an individual signer
      sig do
        params(
          signer_id: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(LegalesignSDK::Models::SignerRetrieveResponse)
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
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).void
      end
      def get_access_link(
        # ID of signer
        signer_id,
        request_options: {}
      )
      end

      # Get signer form fields
      sig do
        params(
          signer_id: String,
          request_options: LegalesignSDK::RequestOptions::OrHash
        ).returns(
          T::Array[LegalesignSDK::Models::SignerRetrieveFieldsResponseItem]
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
          request_options: LegalesignSDK::RequestOptions::OrHash
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
      sig { params(client: LegalesignSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
