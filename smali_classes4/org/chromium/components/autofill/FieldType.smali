.class public interface abstract annotation Lorg/chromium/components/autofill/FieldType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_CREATION_PASSWORD:I = 0x4c

.field public static final ADDRESS_HOME_ADDRESS:I = 0x72

.field public static final ADDRESS_HOME_ADDRESS_WITH_NAME:I = 0x73

.field public static final ADDRESS_HOME_ADMIN_LEVEL2:I = 0x8d

.field public static final ADDRESS_HOME_APT:I = 0x9c

.field public static final ADDRESS_HOME_APT_NUM:I = 0x20

.field public static final ADDRESS_HOME_APT_TYPE:I = 0x9d

.field public static final ADDRESS_HOME_BETWEEN_STREETS:I = 0x8f

.field public static final ADDRESS_HOME_BETWEEN_STREETS_1:I = 0x97

.field public static final ADDRESS_HOME_BETWEEN_STREETS_2:I = 0x98

.field public static final ADDRESS_HOME_BETWEEN_STREETS_OR_LANDMARK:I = 0x90

.field public static final ADDRESS_HOME_CITY:I = 0x21

.field public static final ADDRESS_HOME_COUNTRY:I = 0x24

.field public static final ADDRESS_HOME_DEPENDENT_LOCALITY:I = 0x51

.field public static final ADDRESS_HOME_DEPENDENT_LOCALITY_AND_LANDMARK:I = 0x96

.field public static final ADDRESS_HOME_FLOOR:I = 0x74

.field public static final ADDRESS_HOME_HOUSE_NUMBER:I = 0x68

.field public static final ADDRESS_HOME_HOUSE_NUMBER_AND_APT:I = 0x99

.field public static final ADDRESS_HOME_LANDMARK:I = 0x88

.field public static final ADDRESS_HOME_LINE1:I = 0x1e

.field public static final ADDRESS_HOME_LINE2:I = 0x1f

.field public static final ADDRESS_HOME_LINE3:I = 0x53

.field public static final ADDRESS_HOME_OTHER_SUBUNIT:I = 0x6a

.field public static final ADDRESS_HOME_OVERFLOW:I = 0x87

.field public static final ADDRESS_HOME_OVERFLOW_AND_LANDMARK:I = 0x8c

.field public static final ADDRESS_HOME_SORTING_CODE:I = 0x4f

.field public static final ADDRESS_HOME_STATE:I = 0x22

.field public static final ADDRESS_HOME_STREET_ADDRESS:I = 0x4d

.field public static final ADDRESS_HOME_STREET_LOCATION:I = 0x8e

.field public static final ADDRESS_HOME_STREET_LOCATION_AND_LANDMARK:I = 0x92

.field public static final ADDRESS_HOME_STREET_LOCATION_AND_LOCALITY:I = 0x91

.field public static final ADDRESS_HOME_STREET_NAME:I = 0x67

.field public static final ADDRESS_HOME_SUBPREMISE:I = 0x69

.field public static final ADDRESS_HOME_ZIP:I = 0x23

.field public static final ALTERNATIVE_FAMILY_NAME:I = 0xa5

.field public static final ALTERNATIVE_FULL_NAME:I = 0xa3

.field public static final ALTERNATIVE_GIVEN_NAME:I = 0xa4

.field public static final AMBIGUOUS_TYPE:I = 0x60

.field public static final COMPANY_NAME:I = 0x3c

.field public static final CONFIRMATION_PASSWORD:I = 0x5f

.field public static final CREDIT_CARD_EXP_2_DIGIT_YEAR:I = 0x36

.field public static final CREDIT_CARD_EXP_4_DIGIT_YEAR:I = 0x37

.field public static final CREDIT_CARD_EXP_DATE_2_DIGIT_YEAR:I = 0x38

.field public static final CREDIT_CARD_EXP_DATE_4_DIGIT_YEAR:I = 0x39

.field public static final CREDIT_CARD_EXP_MONTH:I = 0x35

.field public static final CREDIT_CARD_NAME_FIRST:I = 0x5b

.field public static final CREDIT_CARD_NAME_FULL:I = 0x33

.field public static final CREDIT_CARD_NAME_LAST:I = 0x5c

.field public static final CREDIT_CARD_NUMBER:I = 0x34

.field public static final CREDIT_CARD_STANDALONE_VERIFICATION_CODE:I = 0x7e

.field public static final CREDIT_CARD_TYPE:I = 0x3a

.field public static final CREDIT_CARD_VERIFICATION_CODE:I = 0x3b

.field public static final DELIVERY_INSTRUCTIONS:I = 0x85

.field public static final DRIVERS_LICENSE_EXPIRATION_DATE:I = 0xb7

.field public static final DRIVERS_LICENSE_ISSUE_DATE:I = 0xb8

.field public static final DRIVERS_LICENSE_NAME_TAG:I = 0xb4

.field public static final DRIVERS_LICENSE_NUMBER:I = 0xb6

.field public static final DRIVERS_LICENSE_REGION:I = 0xb5

.field public static final EMAIL_ADDRESS:I = 0x9

.field public static final EMPTY_TYPE:I = 0x2

.field public static final FIELD_WITH_DEFAULT_VALUE:I = 0x3d

.field public static final IBAN_VALUE:I = 0x7d

.field public static final IMPROVED_PREDICTION:I = 0xa2

.field public static final LOYALTY_MEMBERSHIP_ID:I = 0x9e

.field public static final LOYALTY_MEMBERSHIP_PROGRAM:I = 0xad

.field public static final LOYALTY_MEMBERSHIP_PROVIDER:I = 0xae

.field public static final MAX_VALID_FIELD_TYPE:I = 0xbb

.field public static final MERCHANT_EMAIL_SIGNUP:I = 0x49

.field public static final MERCHANT_PROMO_CODE:I = 0x4a

.field public static final NAME_FIRST:I = 0x3

.field public static final NAME_FULL:I = 0x7

.field public static final NAME_HONORIFIC_PREFIX:I = 0x6e

.field public static final NAME_LAST:I = 0x5

.field public static final NAME_LAST_CONJUNCTION:I = 0x6c

.field public static final NAME_LAST_CORE:I = 0xa7

.field public static final NAME_LAST_FIRST:I = 0x6b

.field public static final NAME_LAST_PREFIX:I = 0xa6

.field public static final NAME_LAST_SECOND:I = 0x6d

.field public static final NAME_MIDDLE:I = 0x4

.field public static final NAME_MIDDLE_INITIAL:I = 0x6

.field public static final NAME_SUFFIX:I = 0x8

.field public static final NEW_PASSWORD:I = 0x58

.field public static final NOT_ACCOUNT_CREATION_PASSWORD:I = 0x55

.field public static final NOT_NEW_PASSWORD:I = 0x5a

.field public static final NOT_PASSWORD:I = 0x63

.field public static final NOT_USERNAME:I = 0x65

.field public static final NO_SERVER_DATA:I = 0x0

.field public static final NUMERIC_QUANTITY:I = 0x80

.field public static final ONE_TIME_CODE:I = 0x81

.field public static final PASSPORT_EXPIRATION_DATE:I = 0xab

.field public static final PASSPORT_ISSUE_DATE:I = 0xac

.field public static final PASSPORT_ISSUING_COUNTRY:I = 0xaa

.field public static final PASSPORT_NAME_TAG:I = 0xa8

.field public static final PASSPORT_NUMBER:I = 0xa9

.field public static final PASSWORD:I = 0x4b

.field public static final PHONE_HOME_CITY_AND_NUMBER:I = 0xd

.field public static final PHONE_HOME_CITY_AND_NUMBER_WITHOUT_TRUNK_PREFIX:I = 0x7a

.field public static final PHONE_HOME_CITY_CODE:I = 0xb

.field public static final PHONE_HOME_CITY_CODE_WITH_TRUNK_PREFIX:I = 0x79

.field public static final PHONE_HOME_COUNTRY_CODE:I = 0xc

.field public static final PHONE_HOME_EXTENSION:I = 0x5d

.field public static final PHONE_HOME_NUMBER:I = 0xa

.field public static final PHONE_HOME_NUMBER_PREFIX:I = 0x7b

.field public static final PHONE_HOME_NUMBER_SUFFIX:I = 0x7c

.field public static final PHONE_HOME_WHOLE_NUMBER:I = 0xe

.field public static final PRICE:I = 0x62

.field public static final PROBABLY_NEW_PASSWORD:I = 0x59

.field public static final SEARCH_TERM:I = 0x61

.field public static final SINGLE_USERNAME:I = 0x64

.field public static final SINGLE_USERNAME_FORGOT_PASSWORD:I = 0x9a

.field public static final SINGLE_USERNAME_WITH_INTERMEDIATE_VALUES:I = 0xa0

.field public static final UNKNOWN_TYPE:I = 0x1

.field public static final USERNAME:I = 0x56

.field public static final USERNAME_AND_EMAIL_ADDRESS:I = 0x57

.field public static final VEHICLE_LICENSE_PLATE:I = 0xb0

.field public static final VEHICLE_MAKE:I = 0xb2

.field public static final VEHICLE_MODEL:I = 0xb3

.field public static final VEHICLE_OWNER_TAG:I = 0xaf

.field public static final VEHICLE_PLATE_STATE:I = 0xba

.field public static final VEHICLE_VIN:I = 0xb1

.field public static final VEHICLE_YEAR:I = 0xb9
