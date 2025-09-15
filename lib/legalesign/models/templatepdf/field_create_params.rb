# frozen_string_literal: true

module Legalesign
  module Models
    module Templatepdf
      # @see Legalesign::Resources::Templatepdf::Fields#create
      class FieldCreateParams < Legalesign::Internal::Type::BaseModel
        extend Legalesign::Internal::Type::RequestParameters::Converter
        include Legalesign::Internal::Type::RequestParameters

        # @!attribute body
        #
        #   @return [Array<Legalesign::Models::Templatepdf::FieldCreateParams::Body>]
        required :body,
                 -> { Legalesign::Internal::Type::ArrayOf[Legalesign::Templatepdf::FieldCreateParams::Body] }

        # @!method initialize(body:, request_options: {})
        #   @param body [Array<Legalesign::Models::Templatepdf::FieldCreateParams::Body>]
        #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]

        class Body < Legalesign::Internal::Type::BaseModel
          # @!attribute ax
          #   % of page width - left vertical: 0 = left page edge, 1 = right page edge
          #
          #   @return [Float]
          required :ax, Float

          # @!attribute ay
          #   % of page height - upper horizontal: 0 = top page edge, 1 = bottom page edge
          #
          #   @return [Float]
          required :ay, Float

          # @!attribute bx
          #   % of page width - right vertical, 0 = left page edge, 1 = right page edge
          #
          #   @return [Float]
          required :bx, Float

          # @!attribute by
          #   % of page height lower horizontal. 0 = top page edge, 1 = bottom page edge
          #
          #   @return [Float]
          required :by, Float

          # @!attribute element_type
          #   Must be one of the following: _ signature - signature field _ initials -
          #   initials field _ text - signer field (field for signer to complete) _ admin -
          #   sender field (field to complete by admin user when sending, use pdftext)
          #
          #   @return [Symbol, Legalesign::Models::Templatepdf::FieldCreateParams::Body::ElementType]
          required :element_type, enum: -> { Legalesign::Templatepdf::FieldCreateParams::Body::ElementType }

          # @!attribute page
          #   which page to place field on
          #
          #   @return [Integer]
          required :page, Integer

          # @!attribute signer
          #   1-indexed number of signer (witness+100) (approver+200)
          #
          #   @return [Integer]
          required :signer, Integer

          # @!attribute align
          #   one of the following:
          #
          #   - 1 - left
          #   - 2 - middle
          #   - 3 - right
          #
          #   @return [Integer, Legalesign::Models::Templatepdf::FieldCreateParams::Body::Align, nil]
          optional :align, enum: -> { Legalesign::Templatepdf::FieldCreateParams::Body::Align }, nil?: true

          # @!attribute fieldorder
          #   Ordering of fields as the signer progresses (top-down by if left blank)
          #
          #   @return [Integer, nil]
          optional :fieldorder, Integer, nil?: true

          # @!attribute font_name
          #
          #   @return [Symbol, Legalesign::Models::Templatepdf::FieldCreateParams::Body::FontName, nil]
          optional :font_name, enum: -> { Legalesign::Templatepdf::FieldCreateParams::Body::FontName }

          # @!attribute font_size
          #
          #   @return [Integer, nil]
          optional :font_size, Integer

          # @!attribute hide_border
          #
          #   @return [Boolean, nil]
          optional :hide_border, Legalesign::Internal::Type::Boolean

          # @!attribute label
          #   Help a signer/sender understand what to do with the form field
          #
          #   @return [String, nil]
          optional :label, String

          # @!attribute label_extra
          #   @deprecated
          #
          #   unused. more label if required
          #
          #   @return [String, nil]
          optional :label_extra, String

          # @!attribute logic_action
          #   offers options for more advanced forms 1 = One of a set of field - radio group 2
          #   = Sum a set of fields 3 = Conditional upon another field
          #
          #   @return [Integer, Legalesign::Models::Templatepdf::FieldCreateParams::Body::LogicAction, nil]
          optional :logic_action, enum: -> { Legalesign::Templatepdf::FieldCreateParams::Body::LogicAction }

          # @!attribute logic_group
          #   values to enable a given logic_action in the form
          #
          #   @return [String, nil]
          optional :logic_group, String

          # @!attribute map_to
          #   custom data for form integrations
          #
          #   @return [String, nil]
          optional :map_to, String

          # @!attribute optional
          #   Set true to allow field to be ignored
          #
          #   @return [Boolean, nil]
          optional :optional, Legalesign::Internal::Type::Boolean

          # @!attribute options
          #   Additional values for certain validation types.
          #
          #   @return [String, nil]
          optional :options, String

          # @!attribute substantive
          #   Set if field substantive to contract terms, if so will not let other sign till
          #   this field completed
          #
          #   @return [Boolean, nil]
          optional :substantive, Legalesign::Internal::Type::Boolean

          # @!attribute validation
          #   fields types and validations:
          #
          #   - 1 - Email
          #   - 2 - yyyy/mm/dd
          #   - 3 - yy/mm/dd
          #   - 4 - dd/mm/yyyy
          #   - 5 - dd/mm/yy
          #   - 6 - mm/dd/yy
          #   - 7 - mm/dd/yy
          #   - 8 - yyyy.mm.dd
          #   - 9 - yy.mm.dd
          #   - 10 - dd.mm.yyyy
          #   - 11 - dd.mm.yy
          #   - 12 - mm.dd.yyyy
          #   - 13 - mm.dd.yy
          #   - 14 - yyyy-mm-dd
          #   - 15 - yy-mm-dd
          #   - 16 - dd-mm-yyyy
          #   - 17 - dd-mm-yy
          #   - 18 - mm-dd-yyyy
          #   - 19 - mm-dd-yy
          #   - 20 - Dropdown list, use options attribute for items
          #   - 24 - Checkbox tick/cross
          #   - 25 - Checkbox tick/blank
          #   - 26 - Checkbox cross/blank
          #   - 30 - yyyy/mm/dd (automatic)
          #   - 31 - yy/mm/dd (automatic)
          #   - 32 - dd/yy/yyyy (automatic)
          #   - 33 - dd/mm/yy (automatic)
          #   - 34 - mm/dd/yyyy (automatic)
          #   - 35 - mm/dd/yy (automatic)
          #   - 36 - yyyy.mm.dd (automatic)
          #   - 37 - yy.mm.dd (automatic)
          #   - 38 - dd.mm.yyyy (automatic)
          #   - 39 - dd.mm.yy (automatic)
          #   - 40 - mm.dd.yyyy (automatic)
          #   - 41 - mm.dd.yy (automatic)
          #   - 42 - yyyy-mm-dd (automatic)
          #   - 43 - yy-mm-dd (automatic)
          #   - 44 - dd-mm-yyyy (automatic)
          #   - 45 - dd-mm-yy (automatic)
          #   - 46 - mm-dd-yyyy (automatic)
          #   - 47 - mm-dd-yy (automatic)
          #   - 48 - d mmmmm yyyy (automatic)
          #   - 50 - Whole number
          #   - 51 - Number
          #   - 52 - Currency (2 decimals)
          #   - 53 - 1 number
          #   - 54 - 2 numbers
          #   - 55 - 3 numbers
          #   - 56 - 4 numbers
          #   - 57 - 5 numbers
          #   - 58 - 6 numbers
          #   - 59 - 7 numbers
          #   - 60 - 8 numbers
          #   - 61 - 9 numbers
          #   - 62 - 10 numbers
          #   - 63 - 11 numbers
          #   - 64 - 12 numbers
          #   - 65 - 1 characters (any text)
          #   - 66 - 2 characters (any text)
          #   - 67 - 3 characters (any text)
          #   - 68 - 4 characters (any text)
          #   - 69 - 5 characters (any text)
          #   - 70 - 6 characters (any text)
          #   - 71 - 7 characters (any text)
          #   - 72 - 8 characters (any text)
          #   - 73 - secret code, add code in options
          #   - 74 - file attach, append to email to signer
          #   - 75 - file attach, append to final PDF
          #   - 76 - file attach, zip with final PDF for internal use, but not signer
          #   - 77 - force to title caps
          #   - 78 - force to uppercase
          #   - 79 - force to lowercase
          #   - 80 - mm/yy
          #   - 81 - mm/yyyy
          #   - 82 - mm.yy
          #   - 83 - mm.yyyy
          #   - 84 - mm-yy
          #   - 85 - mm-yyyy
          #   - 90 - drawn field
          #   - 91 - countries list
          #   - 92 - honorifics list
          #
          #   @return [Integer, Legalesign::Models::PdfFieldValidationEnum, nil]
          optional :validation, enum: -> { Legalesign::PdfFieldValidationEnum }, nil?: true

          # @!attribute value
          #
          #   @return [String, nil]
          optional :value, String

          # @!method initialize(ax:, ay:, bx:, by:, element_type:, page:, signer:, align: nil, fieldorder: nil, font_name: nil, font_size: nil, hide_border: nil, label: nil, label_extra: nil, logic_action: nil, logic_group: nil, map_to: nil, optional: nil, options: nil, substantive: nil, validation: nil, value: nil)
          #   Some parameter documentations has been truncated, see
          #   {Legalesign::Models::Templatepdf::FieldCreateParams::Body} for more details.
          #
          #   @param ax [Float] % of page width - left vertical: 0 = left page edge, 1 = right page edge
          #
          #   @param ay [Float] % of page height - upper horizontal: 0 = top page edge, 1 = bottom page edge
          #
          #   @param bx [Float] % of page width - right vertical, 0 = left page edge, 1 = right page edge
          #
          #   @param by [Float] % of page height lower horizontal. 0 = top page edge, 1 = bottom page edge
          #
          #   @param element_type [Symbol, Legalesign::Models::Templatepdf::FieldCreateParams::Body::ElementType] Must be one of the following: _ signature - signature field _ initials - initial
          #
          #   @param page [Integer] which page to place field on
          #
          #   @param signer [Integer] 1-indexed number of signer (witness+100) (approver+200)
          #
          #   @param align [Integer, Legalesign::Models::Templatepdf::FieldCreateParams::Body::Align, nil] one of the following:
          #
          #   @param fieldorder [Integer, nil] Ordering of fields as the signer progresses (top-down by if left blank)
          #
          #   @param font_name [Symbol, Legalesign::Models::Templatepdf::FieldCreateParams::Body::FontName]
          #
          #   @param font_size [Integer]
          #
          #   @param hide_border [Boolean]
          #
          #   @param label [String] Help a signer/sender understand what to do with the form field
          #
          #   @param label_extra [String] unused. more label if required
          #
          #   @param logic_action [Integer, Legalesign::Models::Templatepdf::FieldCreateParams::Body::LogicAction] offers options for more advanced forms
          #
          #   @param logic_group [String] values to enable a given logic_action in the form
          #
          #   @param map_to [String] custom data for form integrations
          #
          #   @param optional [Boolean] Set true to allow field to be ignored
          #
          #   @param options [String] Additional values for certain validation types.
          #
          #   @param substantive [Boolean] Set if field substantive to contract terms, if so will not let other sign till t
          #
          #   @param validation [Integer, Legalesign::Models::PdfFieldValidationEnum, nil] fields types and validations:
          #
          #   @param value [String]

          # Must be one of the following: _ signature - signature field _ initials -
          # initials field _ text - signer field (field for signer to complete) _ admin -
          # sender field (field to complete by admin user when sending, use pdftext)
          #
          # @see Legalesign::Models::Templatepdf::FieldCreateParams::Body#element_type
          module ElementType
            extend Legalesign::Internal::Type::Enum

            SIGNATURE = :signature
            INITIALS = :initials
            TEXT = :text
            ADMIN = :admin

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # one of the following:
          #
          # - 1 - left
          # - 2 - middle
          # - 3 - right
          #
          # @see Legalesign::Models::Templatepdf::FieldCreateParams::Body#align
          module Align
            extend Legalesign::Internal::Type::Enum

            ALIGN_1 = 1
            ALIGN_2 = 2
            ALIGN_3 = 3

            # @!method self.values
            #   @return [Array<Integer>]
          end

          # @see Legalesign::Models::Templatepdf::FieldCreateParams::Body#font_name
          module FontName
            extend Legalesign::Internal::Type::Enum

            EMPTY = :""
            ARIAL = :arial
            COURIER = :courier
            HELVETICA = :helvetica
            LIBERATION = :liberation
            VERDANA = :verdana

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # offers options for more advanced forms 1 = One of a set of field - radio group 2
          # = Sum a set of fields 3 = Conditional upon another field
          #
          # @see Legalesign::Models::Templatepdf::FieldCreateParams::Body#logic_action
          module LogicAction
            extend Legalesign::Internal::Type::Enum

            LOGIC_ACTION_1 = 1
            LOGIC_ACTION_2 = 2
            LOGIC_ACTION_3 = 3

            # @!method self.values
            #   @return [Array<Integer>]
          end
        end
      end
    end
  end
end
