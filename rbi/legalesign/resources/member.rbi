# typed: strong

module Legalesign
  module Resources
    class Member
      # If the email is a registered user then access to group will be immediate,
      # otherise an invitation will be created and emailed.
      sig do
        params(
          email: String,
          group: String,
          do_email: T::Boolean,
          permission: Legalesign::PermissionsEnum::OrInteger,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def create(
        email:,
        group:,
        # use legalesign to send email notification to new user
        do_email: nil,
        # Permissions options:
        #
        # - 1 - administrator
        # - 2 - team docs visible, create & send
        # - 3 - team docs visible, send only
        # - 4 - no team sent docs visible, send only
        # - 5 - no team docs visible, create & send
        # - 6 - team docs visible, read only
        permission: nil,
        request_options: {}
      )
      end

      # Get group member
      sig do
        params(
          member_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::MemberResponse)
      end
      def retrieve(
        # member of group id
        member_id,
        request_options: {}
      )
      end

      # List members of groups, one user may be in one or more groups
      sig do
        params(
          group: String,
          limit: Integer,
          offset: Integer,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(Legalesign::Models::MemberListResponse)
      end
      def list(
        # filter list by a given group
        group: nil,
        # Length of dataset to return. Use with offset query to iterate through results.
        limit: nil,
        # Offset from start of dataset. Use with the limit query to iterate through
        # dataset.
        offset: nil,
        request_options: {}
      )
      end

      # Remove member from group
      sig do
        params(
          member_id: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).void
      end
      def delete(
        # member of group id
        member_id,
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
