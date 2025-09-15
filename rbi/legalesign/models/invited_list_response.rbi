# typed: strong

module Legalesign
  module Models
    class InvitedListResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::InvitedListResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Legalesign::ListMeta)) }
      attr_reader :meta

      sig { params(meta: Legalesign::ListMeta::OrHash).void }
      attr_writer :meta

      sig do
        returns(
          T.nilable(T::Array[Legalesign::Models::InvitedListResponse::Object])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects:
            T::Array[Legalesign::Models::InvitedListResponse::Object::OrHash]
        ).void
      end
      attr_writer :objects

      sig do
        params(
          meta: Legalesign::ListMeta::OrHash,
          objects:
            T::Array[Legalesign::Models::InvitedListResponse::Object::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(meta: nil, objects: nil)
      end

      sig do
        override.returns(
          {
            meta: Legalesign::ListMeta,
            objects: T::Array[Legalesign::Models::InvitedListResponse::Object]
          }
        )
      end
      def to_hash
      end

      class Object < Legalesign::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Legalesign::Models::InvitedListResponse::Object,
              Legalesign::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :group

        sig { params(group: String).void }
        attr_writer :group

        sig { returns(T.nilable(String)) }
        attr_reader :resource_uri

        sig { params(resource_uri: String).void }
        attr_writer :resource_uri

        sig do
          params(
            created: Time,
            email: String,
            group: String,
            resource_uri: String
          ).returns(T.attached_class)
        end
        def self.new(created: nil, email: nil, group: nil, resource_uri: nil)
        end

        sig do
          override.returns(
            {
              created: Time,
              email: String,
              group: String,
              resource_uri: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
