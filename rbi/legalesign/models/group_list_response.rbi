# typed: strong

module Legalesign
  module Models
    class GroupListResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::GroupListResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Legalesign::ListMeta)) }
      attr_reader :meta

      sig { params(meta: Legalesign::ListMeta::OrHash).void }
      attr_writer :meta

      sig do
        returns(
          T.nilable(T::Array[Legalesign::Models::GroupListResponse::Object])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects:
            T::Array[Legalesign::Models::GroupListResponse::Object::OrHash]
        ).void
      end
      attr_writer :objects

      sig do
        params(
          meta: Legalesign::ListMeta::OrHash,
          objects:
            T::Array[Legalesign::Models::GroupListResponse::Object::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(meta: nil, objects: nil)
      end

      sig do
        override.returns(
          {
            meta: Legalesign::ListMeta,
            objects: T::Array[Legalesign::Models::GroupListResponse::Object]
          }
        )
      end
      def to_hash
      end

      class Object < Legalesign::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Legalesign::Models::GroupListResponse::Object,
              Legalesign::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_active

        sig { params(is_active: T::Boolean).void }
        attr_writer :is_active

        sig { returns(T.nilable(Time)) }
        attr_reader :modified

        sig { params(modified: Time).void }
        attr_writer :modified

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :public_name

        sig { params(public_name: String).void }
        attr_writer :public_name

        sig { returns(T.nilable(String)) }
        attr_reader :resource_uri

        sig { params(resource_uri: String).void }
        attr_writer :resource_uri

        sig { returns(T.nilable(String)) }
        attr_reader :slug

        sig { params(slug: String).void }
        attr_writer :slug

        sig { returns(T.nilable(String)) }
        attr_reader :user

        sig { params(user: String).void }
        attr_writer :user

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :xframe_allow

        sig { params(xframe_allow: T::Boolean).void }
        attr_writer :xframe_allow

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :xframe_allow_pdf_edit

        sig { params(xframe_allow_pdf_edit: T::Boolean).void }
        attr_writer :xframe_allow_pdf_edit

        sig do
          params(
            created: Time,
            is_active: T::Boolean,
            modified: Time,
            name: String,
            public_name: String,
            resource_uri: String,
            slug: String,
            user: String,
            xframe_allow: T::Boolean,
            xframe_allow_pdf_edit: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          created: nil,
          is_active: nil,
          modified: nil,
          name: nil,
          public_name: nil,
          resource_uri: nil,
          slug: nil,
          user: nil,
          xframe_allow: nil,
          xframe_allow_pdf_edit: nil
        )
        end

        sig do
          override.returns(
            {
              created: Time,
              is_active: T::Boolean,
              modified: Time,
              name: String,
              public_name: String,
              resource_uri: String,
              slug: String,
              user: String,
              xframe_allow: T::Boolean,
              xframe_allow_pdf_edit: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
