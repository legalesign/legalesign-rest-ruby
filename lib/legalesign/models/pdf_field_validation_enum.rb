# frozen_string_literal: true

module Legalesign
  module Models
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
    module PdfFieldValidationEnum
      extend Legalesign::Internal::Type::Enum

      PDF_FIELD_VALIDATION_ENUM_1 = 1
      PDF_FIELD_VALIDATION_ENUM_2 = 2
      PDF_FIELD_VALIDATION_ENUM_3 = 3
      PDF_FIELD_VALIDATION_ENUM_4 = 4
      PDF_FIELD_VALIDATION_ENUM_5 = 5
      PDF_FIELD_VALIDATION_ENUM_6 = 6
      PDF_FIELD_VALIDATION_ENUM_7 = 7
      PDF_FIELD_VALIDATION_ENUM_8 = 8
      PDF_FIELD_VALIDATION_ENUM_9 = 9
      PDF_FIELD_VALIDATION_ENUM_10 = 10
      PDF_FIELD_VALIDATION_ENUM_11 = 11
      PDF_FIELD_VALIDATION_ENUM_12 = 12
      PDF_FIELD_VALIDATION_ENUM_13 = 13
      PDF_FIELD_VALIDATION_ENUM_14 = 14
      PDF_FIELD_VALIDATION_ENUM_15 = 15
      PDF_FIELD_VALIDATION_ENUM_16 = 16
      PDF_FIELD_VALIDATION_ENUM_17 = 17
      PDF_FIELD_VALIDATION_ENUM_18 = 18
      PDF_FIELD_VALIDATION_ENUM_19 = 19
      PDF_FIELD_VALIDATION_ENUM_20 = 20
      PDF_FIELD_VALIDATION_ENUM_24 = 24
      PDF_FIELD_VALIDATION_ENUM_25 = 25
      PDF_FIELD_VALIDATION_ENUM_26 = 26
      PDF_FIELD_VALIDATION_ENUM_30 = 30
      PDF_FIELD_VALIDATION_ENUM_31 = 31
      PDF_FIELD_VALIDATION_ENUM_32 = 32
      PDF_FIELD_VALIDATION_ENUM_33 = 33
      PDF_FIELD_VALIDATION_ENUM_34 = 34
      PDF_FIELD_VALIDATION_ENUM_35 = 35
      PDF_FIELD_VALIDATION_ENUM_36 = 36
      PDF_FIELD_VALIDATION_ENUM_37 = 37
      PDF_FIELD_VALIDATION_ENUM_38 = 38
      PDF_FIELD_VALIDATION_ENUM_39 = 39
      PDF_FIELD_VALIDATION_ENUM_40 = 40
      PDF_FIELD_VALIDATION_ENUM_41 = 41
      PDF_FIELD_VALIDATION_ENUM_42 = 42
      PDF_FIELD_VALIDATION_ENUM_43 = 43
      PDF_FIELD_VALIDATION_ENUM_44 = 44
      PDF_FIELD_VALIDATION_ENUM_45 = 45
      PDF_FIELD_VALIDATION_ENUM_46 = 46
      PDF_FIELD_VALIDATION_ENUM_47 = 47
      PDF_FIELD_VALIDATION_ENUM_48 = 48
      PDF_FIELD_VALIDATION_ENUM_50 = 50
      PDF_FIELD_VALIDATION_ENUM_51 = 51
      PDF_FIELD_VALIDATION_ENUM_52 = 52
      PDF_FIELD_VALIDATION_ENUM_53 = 53
      PDF_FIELD_VALIDATION_ENUM_54 = 54
      PDF_FIELD_VALIDATION_ENUM_55 = 55
      PDF_FIELD_VALIDATION_ENUM_56 = 56
      PDF_FIELD_VALIDATION_ENUM_57 = 57
      PDF_FIELD_VALIDATION_ENUM_58 = 58
      PDF_FIELD_VALIDATION_ENUM_59 = 59
      PDF_FIELD_VALIDATION_ENUM_60 = 60
      PDF_FIELD_VALIDATION_ENUM_61 = 61
      PDF_FIELD_VALIDATION_ENUM_62 = 62
      PDF_FIELD_VALIDATION_ENUM_63 = 63
      PDF_FIELD_VALIDATION_ENUM_64 = 64
      PDF_FIELD_VALIDATION_ENUM_65 = 65
      PDF_FIELD_VALIDATION_ENUM_66 = 66
      PDF_FIELD_VALIDATION_ENUM_67 = 67
      PDF_FIELD_VALIDATION_ENUM_68 = 68
      PDF_FIELD_VALIDATION_ENUM_69 = 69
      PDF_FIELD_VALIDATION_ENUM_70 = 70
      PDF_FIELD_VALIDATION_ENUM_71 = 71
      PDF_FIELD_VALIDATION_ENUM_72 = 72
      PDF_FIELD_VALIDATION_ENUM_73 = 73
      PDF_FIELD_VALIDATION_ENUM_74 = 74
      PDF_FIELD_VALIDATION_ENUM_75 = 75
      PDF_FIELD_VALIDATION_ENUM_76 = 76
      PDF_FIELD_VALIDATION_ENUM_77 = 77
      PDF_FIELD_VALIDATION_ENUM_78 = 78
      PDF_FIELD_VALIDATION_ENUM_79 = 79
      PDF_FIELD_VALIDATION_ENUM_80 = 80
      PDF_FIELD_VALIDATION_ENUM_81 = 81
      PDF_FIELD_VALIDATION_ENUM_82 = 82
      PDF_FIELD_VALIDATION_ENUM_83 = 83
      PDF_FIELD_VALIDATION_ENUM_84 = 84
      PDF_FIELD_VALIDATION_ENUM_85 = 85
      PDF_FIELD_VALIDATION_ENUM_90 = 90
      PDF_FIELD_VALIDATION_ENUM_91 = 91
      PDF_FIELD_VALIDATION_ENUM_92 = 92

      # @!method self.values
      #   @return [Array<Integer>]
    end
  end
end
