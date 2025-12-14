.class public abstract Lorg/chromium/components/payments/ErrorStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVITY_NOT_FOUND:Ljava/lang/String; = "Unable to find Chrome activity."

.field public static final ANOTHER_UI_SHOWING:Ljava/lang/String; = "Another PaymentRequest UI is already showing in a different tab or window."

.field public static final APP_STORE_METHOD_ONLY_SUPPORTED_IN_TWA:Ljava/lang/String; = "Payment method https://play.google.com/billing is only supported in Trusted Web Activity."

.field public static final ATTEMPTED_INITIALIZATION_TWICE:Ljava/lang/String; = "Attempted initialization twice."

.field public static final CANNOT_SHOW_IN_BACKGROUND_TAB:Ljava/lang/String; = "Cannot show PaymentRequest UI in a preview page or a background tab."

.field public static final CANNOT_SHOW_TWICE:Ljava/lang/String; = "Attempted show twice."

.field public static final CANNOT_SHOW_WITHOUT_INIT:Ljava/lang/String; = "Attempted show without initialization."

.field public static final CANNOT_SHOW_WITHOUT_USER_ACTIVATION:Ljava/lang/String; = "PaymentRequest.show() calls after the first (per page load) require either transient user activation or delegated payment request capability."

.field public static final CANNOT_UPDATE_WITHOUT_INIT:Ljava/lang/String; = "Attempted updateWith without initialization."

.field public static final CANNOT_UPDATE_WITHOUT_SHOW:Ljava/lang/String; = "Attempted updateWith without show."

.field public static final CONTEXT_NOT_FOUND:Ljava/lang/String; = "Unable to find Chrome context."

.field public static final FAIL_TO_SHOW_PAYMENT_REQUEST_UI:Ljava/lang/String; = "Fails to show payment request UI. Please try again."

.field public static final INVALID_PAYMENT_DETAILS:Ljava/lang/String; = "Invalid payment details."

.field public static final INVALID_PAYMENT_METHODS_OR_DATA:Ljava/lang/String; = "Invalid payment methods or data."

.field public static final INVALID_PAYMENT_OPTIONS:Ljava/lang/String; = "Invalid payment options."

.field public static final INVALID_STATE:Ljava/lang/String; = "Invalid state."

.field public static final INVALID_VALIDATION_ERRORS:Ljava/lang/String; = "Invalid payment validation errors."

.field public static final METHOD_DATA_REQUIRED:Ljava/lang/String; = "Method data required."

.field public static final METHOD_NAME_REQUIRED:Ljava/lang/String; = "Method name required."

.field public static final MISSING_DETAILS_FROM_PAYMENT_APP:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"details\"."

.field public static final MISSING_INTENT_DATA:Ljava/lang/String; = "Payment app returned an invalid result. Missing intent data."

.field public static final MISSING_INTENT_EXTRAS:Ljava/lang/String; = "Payment app returned an invalid result. Missing intent extras."

.field public static final MISSING_METHOD_NAME_FROM_PAYMENT_APP:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"methodName\"."

.field public static final NOT_IN_A_SECURE_ORIGIN:Ljava/lang/String; = "Not in a secure origin."

.field public static final NO_FRAME:Ljava/lang/String; = "The frame that initiated payment is gone."

.field public static final NO_WEB_CONTENTS:Ljava/lang/String; = "The frame that initiated payment is not associated with any web page."

.field public static final PAYER_EMAIL_EMPTY:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"payerEmail\"."

.field public static final PAYER_NAME_EMPTY:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"payerName\"."

.field public static final PAYER_PHONE_EMPTY:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"payerPhone\"."

.field public static final PAYMENT_APP_INVALID_RESPONSE:Ljava/lang/String; = "Payment app response is not valid."

.field public static final PAYMENT_APP_LAUNCH_FAIL:Ljava/lang/String; = "Unable to invoke the payment app."

.field public static final PAYMENT_APP_PRIVATE_ACTIVITY:Ljava/lang/String; = "Payment app does not have android:exported=\"true\" on the PAY activity."

.field public static final PAYMENT_REQUEST_IS_ABORTING:Ljava/lang/String; = "Payment request is aborting."

.field public static final PROHIBITED_ORIGIN:Ljava/lang/String; = "Only localhost, file://, and cryptographic scheme origins allowed."

.field public static final PROHIBITED_ORIGIN_OR_INVALID_SSL_EXPLANATION:Ljava/lang/String; = "No UI will be shown. CanMakePayment and hasEnrolledInstrument will always return false. Show will be rejected with NotSupportedError."

.field public static final RESULT_CANCELED:Ljava/lang/String; = "Payment app returned RESULT_CANCELED code. This is how payment apps can close their activity programmatically."

.field public static final SHIPPING_ADDRESS_INVALID:Ljava/lang/String; = "Payment app returned invalid shipping address in response."

.field public static final SHIPPING_OPTION_EMPTY:Ljava/lang/String; = "Payment app returned invalid response. Missing field \"shipping option\"."

.field public static final SHIPPING_OPTION_ID_REQUIRED:Ljava/lang/String; = "Shipping option identifier required."

.field public static final SKIP_APP_FOR_PARTIAL_DELEGATION:Ljava/lang/String; = "Skipping $ for not providing all of the requested PaymentOptions."

.field public static final SPC_AUTHN_UI_SUPPRESSED:Ljava/lang/String; = "Secure Payment Confirmation Authn UI suppressed."

.field public static final SPC_USER_OPTED_OUT:Ljava/lang/String; = "User opted out of the process."

.field public static final STRICT_BASIC_CARD_SHOW_REJECT:Ljava/lang/String; = "User does not have valid information on file."

.field public static final TAB_NOT_FOUND:Ljava/lang/String; = "Unable to find Chrome tab."

.field public static final TAB_OVERVIEW_MODE:Ljava/lang/String; = "Tab overview mode dismissed Payment Request UI."

.field public static final TAB_SWITCH:Ljava/lang/String; = "Tab switch dismissed Payment Request UI."

.field public static final TOTAL_REQUIRED:Ljava/lang/String; = "Total required."

.field public static final UNATHORIZED_SERVICE_REQUEST:Ljava/lang/String; = "Caller\'s signature or package name does not match invoked app\'s."

.field public static final UNRECOGNIZED_ACTIVITY_RESULT:Ljava/lang/String; = "Payment app returned unrecognized activity result %d."

.field public static final USER_CANCELLED:Ljava/lang/String; = "User closed the Payment Request UI."

.field public static final WEB_AUTHN_OPERATION_TIMED_OUT_OR_NOT_ALLOWED:Ljava/lang/String; = "The operation either timed out or was not allowed. See: https://www.w3.org/TR/webauthn-2/#sctn-privacy-considerations-client."

.field public static final WEB_PAYMENT_API_DISABLED:Ljava/lang/String; = "Web Payments API is disabled."

.field public static final WINDOW_NOT_FOUND:Ljava/lang/String; = "Unable to find Chrome window."
