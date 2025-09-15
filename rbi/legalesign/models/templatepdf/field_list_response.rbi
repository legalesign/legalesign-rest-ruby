# typed: strong

module Legalesign
  module Models
    module Templatepdf
      class FieldListResponse < Legalesign::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Legalesign::Models::Templatepdf::FieldListResponse,
              Legalesign::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(Legalesign::ListMeta)) }
        attr_reader :meta

        sig { params(meta: Legalesign::ListMeta::OrHash).void }
        attr_writer :meta

        sig do
          returns(
            T.nilable(
              T::Array[
                Legalesign::Models::Templatepdf::FieldListResponse::Object
              ]
            )
          )
        end
        attr_reader :objects

        sig do
          params(
            objects:
              T::Array[
                Legalesign::Models::Templatepdf::FieldListResponse::Object::OrHash
              ]
          ).void
        end
        attr_writer :objects

        sig do
          params(
            meta: Legalesign::ListMeta::OrHash,
            objects:
              T::Array[
                Legalesign::Models::Templatepdf::FieldListResponse::Object::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(meta: nil, objects: nil)
        end

        sig do
          override.returns(
            {
              meta: Legalesign::ListMeta,
              objects:
                T::Array[
                  Legalesign::Models::Templatepdf::FieldListResponse::Object
                ]
            }
          )
        end
        def to_hash
        end

        class Object < Legalesign::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Legalesign::Models::Templatepdf::FieldListResponse::Object,
                Legalesign::Internal::AnyHash
              )
            end

          # left vertical, 0 = left page edge, 1 = right page edge
          sig { returns(Float) }
          attr_accessor :ax

          # upper horizontal, 0 = top page edge, 1 = bottom page edge
          sig { returns(Float) }
          attr_accessor :ay

          # right vertical, 0 = left page edge, 1 = right page edge
          sig { returns(Float) }
          attr_accessor :bx

          # lower horizontal. 0 = top page edge, 1 = bottom page edge
          sig { returns(Float) }
          attr_accessor :by

          # Must be one of the following: _ signature - signature field _ initials -
          # initials field _ text - signer field (field for signer to complete) _ admin -
          # sender field (field to complete by admin user when sending)
          sig do
            returns(
              Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
            )
          end
          attr_accessor :element_type

          # which page to place field on
          sig { returns(Integer) }
          attr_accessor :page

          # 1-Index number for signer (witness+100) (approver+200). Null if sender field.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :signer

          # one of the following:
          #
          # - 1 - left
          # - 2 - middle
          # - 3 - right
          sig do
            returns(
              T.nilable(
                Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
              )
            )
          end
          attr_accessor :align

          # order signer progresses through fields, top-down if blank
          sig { returns(T.nilable(Integer)) }
          attr_reader :fieldorder

          sig { params(fieldorder: Integer).void }
          attr_writer :fieldorder

          sig do
            returns(
              T.nilable(
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            )
          end
          attr_reader :font_name

          sig do
            params(
              font_name:
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::OrSymbol
            ).void
          end
          attr_writer :font_name

          sig { returns(T.nilable(Integer)) }
          attr_reader :font_size

          sig { params(font_size: Integer).void }
          attr_writer :font_size

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :hide_border

          sig { params(hide_border: T::Boolean).void }
          attr_writer :hide_border

          # help signer/sender understand what to do
          sig { returns(T.nilable(String)) }
          attr_reader :label

          sig { params(label: String).void }
          attr_writer :label

          # not in use
          sig { returns(T.nilable(String)) }
          attr_reader :label_extra

          sig { params(label_extra: String).void }
          attr_writer :label_extra

          # offers options for more advanced forms 1 = One of a set of field (radio group),
          # 2 = Sum a set of fields, 3 = Conditional upon another field
          sig do
            returns(
              T.nilable(
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger
              )
            )
          end
          attr_reader :logic_action

          sig do
            params(
              logic_action:
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::OrInteger
            ).void
          end
          attr_writer :logic_action

          # values to enable a given logic_action in the form
          sig { returns(T.nilable(String)) }
          attr_reader :logic_group

          sig { params(logic_group: String).void }
          attr_writer :logic_group

          # custom data for form integrations
          sig { returns(T.nilable(String)) }
          attr_reader :map_to

          sig { params(map_to: String).void }
          attr_writer :map_to

          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :optional

          sig { params(optional: T::Boolean).void }
          attr_writer :optional

          # user for certain validation types
          sig { returns(T.nilable(String)) }
          attr_reader :options

          sig { params(options: String).void }
          attr_writer :options

          # Set if field substantive to contract terms, if so will not let others sign till
          # this field completed
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :substantive

          sig { params(substantive: T::Boolean).void }
          attr_writer :substantive

          # fields types and validations:
          #
          # - 1 - Email
          # - 2 - yyyy/mm/dd
          # - 3 - yy/mm/dd
          # - 4 - dd/mm/yyyy
          # - 5 - dd/mm/yy
          # - 6 - mm/dd/yy
          # - 7 - mm/dd/yy
          # - 8 - yyyy.mm.dd
          # - 9 - yy.mm.dd
          # - 10 - dd.mm.yyyy
          # - 11 - dd.mm.yy
          # - 12 - mm.dd.yyyy
          # - 13 - mm.dd.yy
          # - 14 - yyyy-mm-dd
          # - 15 - yy-mm-dd
          # - 16 - dd-mm-yyyy
          # - 17 - dd-mm-yy
          # - 18 - mm-dd-yyyy
          # - 19 - mm-dd-yy
          # - 20 - Dropdown list, use options attribute for items
          # - 24 - Checkbox tick/cross
          # - 25 - Checkbox tick/blank
          # - 26 - Checkbox cross/blank
          # - 30 - yyyy/mm/dd (automatic)
          # - 31 - yy/mm/dd (automatic)
          # - 32 - dd/yy/yyyy (automatic)
          # - 33 - dd/mm/yy (automatic)
          # - 34 - mm/dd/yyyy (automatic)
          # - 35 - mm/dd/yy (automatic)
          # - 36 - yyyy.mm.dd (automatic)
          # - 37 - yy.mm.dd (automatic)
          # - 38 - dd.mm.yyyy (automatic)
          # - 39 - dd.mm.yy (automatic)
          # - 40 - mm.dd.yyyy (automatic)
          # - 41 - mm.dd.yy (automatic)
          # - 42 - yyyy-mm-dd (automatic)
          # - 43 - yy-mm-dd (automatic)
          # - 44 - dd-mm-yyyy (automatic)
          # - 45 - dd-mm-yy (automatic)
          # - 46 - mm-dd-yyyy (automatic)
          # - 47 - mm-dd-yy (automatic)
          # - 48 - d mmmmm yyyy (automatic)
          # - 50 - Whole number
          # - 51 - Number
          # - 52 - Currency (2 decimals)
          # - 53 - 1 number
          # - 54 - 2 numbers
          # - 55 - 3 numbers
          # - 56 - 4 numbers
          # - 57 - 5 numbers
          # - 58 - 6 numbers
          # - 59 - 7 numbers
          # - 60 - 8 numbers
          # - 61 - 9 numbers
          # - 62 - 10 numbers
          # - 63 - 11 numbers
          # - 64 - 12 numbers
          # - 65 - 1 characters (any text)
          # - 66 - 2 characters (any text)
          # - 67 - 3 characters (any text)
          # - 68 - 4 characters (any text)
          # - 69 - 5 characters (any text)
          # - 70 - 6 characters (any text)
          # - 71 - 7 characters (any text)
          # - 72 - 8 characters (any text)
          # - 73 - secret code, add code in options
          # - 74 - file attach, append to email to signer
          # - 75 - file attach, append to final PDF
          # - 76 - file attach, zip with final PDF for internal use, but not signer
          # - 77 - force to title caps
          # - 78 - force to uppercase
          # - 79 - force to lowercase
          # - 80 - mm/yy
          # - 81 - mm/yyyy
          # - 82 - mm.yy
          # - 83 - mm.yyyy
          # - 84 - mm-yy
          # - 85 - mm-yyyy
          # - 90 - drawn field
          # - 91 - countries list
          # - 92 - honorifics list
          sig do
            returns(
              T.nilable(Legalesign::PdfFieldValidationEnum::TaggedInteger)
            )
          end
          attr_accessor :validation

          sig { returns(T.nilable(String)) }
          attr_reader :value

          sig { params(value: String).void }
          attr_writer :value

          sig do
            params(
              ax: Float,
              ay: Float,
              bx: Float,
              by: Float,
              element_type:
                Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::OrSymbol,
              page: Integer,
              signer: T.nilable(Integer),
              align:
                T.nilable(
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::OrInteger
                ),
              fieldorder: Integer,
              font_name:
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::OrSymbol,
              font_size: Integer,
              hide_border: T::Boolean,
              label: String,
              label_extra: String,
              logic_action:
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::OrInteger,
              logic_group: String,
              map_to: String,
              optional: T::Boolean,
              options: String,
              substantive: T::Boolean,
              validation:
                T.nilable(Legalesign::PdfFieldValidationEnum::OrInteger),
              value: String
            ).returns(T.attached_class)
          end
          def self.new(
            # left vertical, 0 = left page edge, 1 = right page edge
            ax:,
            # upper horizontal, 0 = top page edge, 1 = bottom page edge
            ay:,
            # right vertical, 0 = left page edge, 1 = right page edge
            bx:,
            # lower horizontal. 0 = top page edge, 1 = bottom page edge
            by:,
            # Must be one of the following: _ signature - signature field _ initials -
            # initials field _ text - signer field (field for signer to complete) _ admin -
            # sender field (field to complete by admin user when sending)
            element_type:,
            # which page to place field on
            page:,
            # 1-Index number for signer (witness+100) (approver+200). Null if sender field.
            signer:,
            # one of the following:
            #
            # - 1 - left
            # - 2 - middle
            # - 3 - right
            align: nil,
            # order signer progresses through fields, top-down if blank
            fieldorder: nil,
            font_name: nil,
            font_size: nil,
            hide_border: nil,
            # help signer/sender understand what to do
            label: nil,
            # not in use
            label_extra: nil,
            # offers options for more advanced forms 1 = One of a set of field (radio group),
            # 2 = Sum a set of fields, 3 = Conditional upon another field
            logic_action: nil,
            # values to enable a given logic_action in the form
            logic_group: nil,
            # custom data for form integrations
            map_to: nil,
            optional: nil,
            # user for certain validation types
            options: nil,
            # Set if field substantive to contract terms, if so will not let others sign till
            # this field completed
            substantive: nil,
            # fields types and validations:
            #
            # - 1 - Email
            # - 2 - yyyy/mm/dd
            # - 3 - yy/mm/dd
            # - 4 - dd/mm/yyyy
            # - 5 - dd/mm/yy
            # - 6 - mm/dd/yy
            # - 7 - mm/dd/yy
            # - 8 - yyyy.mm.dd
            # - 9 - yy.mm.dd
            # - 10 - dd.mm.yyyy
            # - 11 - dd.mm.yy
            # - 12 - mm.dd.yyyy
            # - 13 - mm.dd.yy
            # - 14 - yyyy-mm-dd
            # - 15 - yy-mm-dd
            # - 16 - dd-mm-yyyy
            # - 17 - dd-mm-yy
            # - 18 - mm-dd-yyyy
            # - 19 - mm-dd-yy
            # - 20 - Dropdown list, use options attribute for items
            # - 24 - Checkbox tick/cross
            # - 25 - Checkbox tick/blank
            # - 26 - Checkbox cross/blank
            # - 30 - yyyy/mm/dd (automatic)
            # - 31 - yy/mm/dd (automatic)
            # - 32 - dd/yy/yyyy (automatic)
            # - 33 - dd/mm/yy (automatic)
            # - 34 - mm/dd/yyyy (automatic)
            # - 35 - mm/dd/yy (automatic)
            # - 36 - yyyy.mm.dd (automatic)
            # - 37 - yy.mm.dd (automatic)
            # - 38 - dd.mm.yyyy (automatic)
            # - 39 - dd.mm.yy (automatic)
            # - 40 - mm.dd.yyyy (automatic)
            # - 41 - mm.dd.yy (automatic)
            # - 42 - yyyy-mm-dd (automatic)
            # - 43 - yy-mm-dd (automatic)
            # - 44 - dd-mm-yyyy (automatic)
            # - 45 - dd-mm-yy (automatic)
            # - 46 - mm-dd-yyyy (automatic)
            # - 47 - mm-dd-yy (automatic)
            # - 48 - d mmmmm yyyy (automatic)
            # - 50 - Whole number
            # - 51 - Number
            # - 52 - Currency (2 decimals)
            # - 53 - 1 number
            # - 54 - 2 numbers
            # - 55 - 3 numbers
            # - 56 - 4 numbers
            # - 57 - 5 numbers
            # - 58 - 6 numbers
            # - 59 - 7 numbers
            # - 60 - 8 numbers
            # - 61 - 9 numbers
            # - 62 - 10 numbers
            # - 63 - 11 numbers
            # - 64 - 12 numbers
            # - 65 - 1 characters (any text)
            # - 66 - 2 characters (any text)
            # - 67 - 3 characters (any text)
            # - 68 - 4 characters (any text)
            # - 69 - 5 characters (any text)
            # - 70 - 6 characters (any text)
            # - 71 - 7 characters (any text)
            # - 72 - 8 characters (any text)
            # - 73 - secret code, add code in options
            # - 74 - file attach, append to email to signer
            # - 75 - file attach, append to final PDF
            # - 76 - file attach, zip with final PDF for internal use, but not signer
            # - 77 - force to title caps
            # - 78 - force to uppercase
            # - 79 - force to lowercase
            # - 80 - mm/yy
            # - 81 - mm/yyyy
            # - 82 - mm.yy
            # - 83 - mm.yyyy
            # - 84 - mm-yy
            # - 85 - mm-yyyy
            # - 90 - drawn field
            # - 91 - countries list
            # - 92 - honorifics list
            validation: nil,
            value: nil
          )
          end

          sig do
            override.returns(
              {
                ax: Float,
                ay: Float,
                bx: Float,
                by: Float,
                element_type:
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol,
                page: Integer,
                signer: T.nilable(Integer),
                align:
                  T.nilable(
                    Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
                  ),
                fieldorder: Integer,
                font_name:
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol,
                font_size: Integer,
                hide_border: T::Boolean,
                label: String,
                label_extra: String,
                logic_action:
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger,
                logic_group: String,
                map_to: String,
                optional: T::Boolean,
                options: String,
                substantive: T::Boolean,
                validation:
                  T.nilable(Legalesign::PdfFieldValidationEnum::TaggedInteger),
                value: String
              }
            )
          end
          def to_hash
          end

          # Must be one of the following: _ signature - signature field _ initials -
          # initials field _ text - signer field (field for signer to complete) _ admin -
          # sender field (field to complete by admin user when sending)
          module ElementType
            extend Legalesign::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SIGNATURE =
              T.let(
                :signature,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
              )
            INITIALS =
              T.let(
                :initials,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
              )
            TEXT =
              T.let(
                :text,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
              )
            ADMIN =
              T.let(
                :admin,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::ElementType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # one of the following:
          #
          # - 1 - left
          # - 2 - middle
          # - 3 - right
          module Align
            extend Legalesign::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::Align
                )
              end
            OrInteger = T.type_alias { Integer }

            ALIGN_1 =
              T.let(
                1,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
              )
            ALIGN_2 =
              T.let(
                2,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
              )
            ALIGN_3 =
              T.let(
                3,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::Align::TaggedInteger
                ]
              )
            end
            def self.values
            end
          end

          module FontName
            extend Legalesign::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMPTY =
              T.let(
                :"",
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            ARIAL =
              T.let(
                :arial,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            COURIER =
              T.let(
                :courier,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            HELVETICA =
              T.let(
                :helvetica,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            LIBERATION =
              T.let(
                :liberation,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )
            VERDANA =
              T.let(
                :verdana,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::FontName::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # offers options for more advanced forms 1 = One of a set of field (radio group),
          # 2 = Sum a set of fields, 3 = Conditional upon another field
          module LogicAction
            extend Legalesign::Internal::Type::Enum

            TaggedInteger =
              T.type_alias do
                T.all(
                  Integer,
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction
                )
              end
            OrInteger = T.type_alias { Integer }

            LOGIC_ACTION_1 =
              T.let(
                1,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger
              )
            LOGIC_ACTION_2 =
              T.let(
                2,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger
              )
            LOGIC_ACTION_3 =
              T.let(
                3,
                Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger
              )

            sig do
              override.returns(
                T::Array[
                  Legalesign::Models::Templatepdf::FieldListResponse::Object::LogicAction::TaggedInteger
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
