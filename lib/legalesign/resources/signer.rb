# frozen_string_literal: true

module Legalesign
  module Resources
    class Signer
      # Get status and details of an individual signer
      #
      # @overload retrieve(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::SignerRetrieveResponse]
      #
      # @see Legalesign::Models::SignerRetrieveParams
      def retrieve(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/", signer_id],
          model: Legalesign::Models::SignerRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns 1-use link for signer in Location header.
      #
      # @overload get_access_link(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::SignerGetAccessLinkParams
      def get_access_link(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/new-link/", signer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Returns reason signer gave for rejecting a document, if given
      #
      # @overload get_rejection_reason(signer_id, request_options: {})
      #
      # @param signer_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::SignerGetRejectionReasonResponse]
      #
      # @see Legalesign::Models::SignerGetRejectionReasonParams
      def get_rejection_reason(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/rejection/", signer_id],
          model: Legalesign::Models::SignerGetRejectionReasonResponse,
          options: params[:request_options]
        )
      end

      # Reset to an earlier signer if forwarded
      #
      # @overload reset(signer_id, email:, notify: nil, request_options: {})
      #
      # @param signer_id [String]
      #
      # @param email [String] Email of signer to revert to.
      #
      # @param notify [Boolean] Email notify current signer access is being withdrawn
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::SignerResetParams
      def reset(signer_id, params)
        parsed, options = Legalesign::SignerResetParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["signer/%1$s/reset/", signer_id],
          body: parsed,
          model: NilClass,
          options: options
        )
      end

      # Get signer form fields
      #
      # @overload retrieve_fields(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Legalesign::Models::SignerRetrieveFieldsResponseItem>]
      #
      # @see Legalesign::Models::SignerRetrieveFieldsParams
      def retrieve_fields(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/fields1/", signer_id],
          model: Legalesign::Internal::Type::ArrayOf[Legalesign::Models::SignerRetrieveFieldsResponseItem],
          options: params[:request_options]
        )
      end

      # Send signer reminder email
      #
      # @overload send_reminder(signer_id, text: nil, request_options: {})
      #
      # @param signer_id [String]
      #
      # @param text [String] custom message text, html will be stripped
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::SignerSendReminderParams
      def send_reminder(signer_id, params = {})
        parsed, options = Legalesign::SignerSendReminderParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["signer/%1$s/send-reminder/", signer_id],
          body: parsed,
          model: NilClass,
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
