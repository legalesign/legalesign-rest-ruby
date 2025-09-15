# typed: strong

module Legalesign
  module Models
    class MemberCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::MemberCreateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :group

      # use legalesign to send email notification to new user
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :do_email

      sig { params(do_email: T::Boolean).void }
      attr_writer :do_email

      # Permissions options:
      #
      # - 1 - administrator
      # - 2 - team docs visible, create & send
      # - 3 - team docs visible, send only
      # - 4 - no team sent docs visible, send only
      # - 5 - no team docs visible, create & send
      # - 6 - team docs visible, read only
      sig { returns(T.nilable(Legalesign::PermissionsEnum::OrInteger)) }
      attr_reader :permission

      sig { params(permission: Legalesign::PermissionsEnum::OrInteger).void }
      attr_writer :permission

      sig do
        params(
          email: String,
          group: String,
          do_email: T::Boolean,
          permission: Legalesign::PermissionsEnum::OrInteger,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            email: String,
            group: String,
            do_email: T::Boolean,
            permission: Legalesign::PermissionsEnum::OrInteger,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
