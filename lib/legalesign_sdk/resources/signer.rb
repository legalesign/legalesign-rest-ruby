# frozen_string_literal: true

module LegalesignSDK
  module Resources
    class Signer
      # Get status and details of an individual signer
      #
      # @overload retrieve(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [LegalesignSDK::Models::SignerRetrieveResponse]
      #
      # @see LegalesignSDK::Models::SignerRetrieveParams
      def retrieve(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/", signer_id],
          model: LegalesignSDK::Models::SignerRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Returns 1-use link for signer in Location header.
      #
      # @overload get_access_link(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see LegalesignSDK::Models::SignerGetAccessLinkParams
      def get_access_link(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/new-link/", signer_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Get signer form fields
      #
      # @overload retrieve_fields(signer_id, request_options: {})
      #
      # @param signer_id [String] ID of signer
      #
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<LegalesignSDK::Models::SignerRetrieveFieldsResponseItem>]
      #
      # @see LegalesignSDK::Models::SignerRetrieveFieldsParams
      def retrieve_fields(signer_id, params = {})
        @client.request(
          method: :get,
          path: ["signer/%1$s/fields1/", signer_id],
          model: LegalesignSDK::Internal::Type::ArrayOf[LegalesignSDK::Models::SignerRetrieveFieldsResponseItem],
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
      # @param request_options [LegalesignSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see LegalesignSDK::Models::SignerSendReminderParams
      def send_reminder(signer_id, params = {})
        parsed, options = LegalesignSDK::SignerSendReminderParams.dump_request(params)
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
      # @param client [LegalesignSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
