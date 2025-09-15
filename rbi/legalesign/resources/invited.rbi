# typed: strong

module Legalesign
  module Resources
    class Invited
      # Invitations to people to join the group are listed by email
      sig do
        params(
          group: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::InvitedListResponse)
      end
      def list(
        # filter list by a given group
        group: nil,
        request_options: {}
      )
      end

      # Delete invitation
      sig do
        params(
          invited_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def delete(invited_id, request_options: {})
      end

      # @api private
      sig { params(client: Legalesign::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
