# frozen_string_literal: true

module Legalesign
  module Resources
    class Member
      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::MemberCreateParams} for more details.
      #
      # If the email is a registered user then access to group will be immediate,
      # otherise an invitation will be created and emailed.
      #
      # @overload create(email:, group:, do_email: nil, permission: nil, request_options: {})
      #
      # @param email [String]
      #
      # @param group [String]
      #
      # @param do_email [Boolean] use legalesign to send email notification to new user
      #
      # @param permission [Integer, Legalesign::Models::PermissionsEnum] Permissions options:
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::MemberCreateParams
      def create(params)
        parsed, options = Legalesign::MemberCreateParams.dump_request(params)
        @client.request(method: :post, path: "member/", body: parsed, model: NilClass, options: options)
      end

      # Get group member
      #
      # @overload retrieve(member_id, request_options: {})
      #
      # @param member_id [String] member of group id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::MemberResponse]
      #
      # @see Legalesign::Models::MemberRetrieveParams
      def retrieve(member_id, params = {})
        @client.request(
          method: :get,
          path: ["member/%1$s/", member_id],
          model: Legalesign::MemberResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Legalesign::Models::MemberListParams} for more details.
      #
      # List members of groups, one user may be in one or more groups
      #
      # @overload list(group: nil, limit: nil, offset: nil, request_options: {})
      #
      # @param group [String] filter list by a given group
      #
      # @param limit [Integer] Length of dataset to return. Use with offset query to iterate through results.
      #
      # @param offset [Integer] Offset from start of dataset. Use with the limit query to iterate through datase
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Legalesign::Models::MemberListResponse]
      #
      # @see Legalesign::Models::MemberListParams
      def list(params = {})
        parsed, options = Legalesign::MemberListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "member/",
          query: parsed,
          model: Legalesign::Models::MemberListResponse,
          options: options
        )
      end

      # Remove member from group
      #
      # @overload delete(member_id, request_options: {})
      #
      # @param member_id [String] member of group id
      #
      # @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Legalesign::Models::MemberDeleteParams
      def delete(member_id, params = {})
        @client.request(
          method: :delete,
          path: ["member/%1$s/", member_id],
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
