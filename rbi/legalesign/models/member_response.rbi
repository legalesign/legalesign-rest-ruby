# typed: strong

module Legalesign
  module Models
    class MemberResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Legalesign::MemberResponse, Legalesign::Internal::AnyHash)
        end

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(Time)) }
      attr_reader :modified

      sig { params(modified: Time).void }
      attr_writer :modified

      # Permissions options:
      #
      # - 1 - administrator
      # - 2 - team docs visible, create & send
      # - 3 - team docs visible, send only
      # - 4 - no team sent docs visible, send only
      # - 5 - no team docs visible, create & send
      # - 6 - team docs visible, read only
      sig { returns(T.nilable(Legalesign::PermissionsEnum::TaggedInteger)) }
      attr_reader :permission

      sig { params(permission: Legalesign::PermissionsEnum::OrInteger).void }
      attr_writer :permission

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          created: Time,
          group: String,
          modified: Time,
          permission: Legalesign::PermissionsEnum::OrInteger,
          resource_uri: String,
          user: String
        ).returns(T.attached_class)
      end
      def self.new(
        created: nil,
        group: nil,
        modified: nil,
        # Permissions options:
        #
        # - 1 - administrator
        # - 2 - team docs visible, create & send
        # - 3 - team docs visible, send only
        # - 4 - no team sent docs visible, send only
        # - 5 - no team docs visible, create & send
        # - 6 - team docs visible, read only
        permission: nil,
        resource_uri: nil,
        user: nil
      )
      end

      sig do
        override.returns(
          {
            created: Time,
            group: String,
            modified: Time,
            permission: Legalesign::PermissionsEnum::TaggedInteger,
            resource_uri: String,
            user: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
