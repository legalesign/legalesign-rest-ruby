# frozen_string_literal: true

module Legalesign
  module Resources
    class Invited
      # Invitations to people to join the group are listed by email
      #
      # @overload list(group: nil, request_options: {})
      #
      # @param group [String] filter list by a given group
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::InvitedListResponse]
      #
      # @see Legalesign::Models::InvitedListParams
      def list(params = {})
        parsed, options = Legalesign::InvitedListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "invited/",
          query: parsed,
          model: Legalesign::Models::InvitedListResponse,
          options: options
        )
      end

      # Delete invitation
      #
      # @overload delete(invited_id, request_options: {})
      #
      # @param invited_id [String]
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::InvitedDeleteParams
      def delete(invited_id, params = {})
        @client.request(
          method: :delete,
          path: ["invited/%1$s/", invited_id],
          model: NilClass,
          options: params[:request_options]
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
