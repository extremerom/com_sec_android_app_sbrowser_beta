.class public abstract Lorg/chromium/components/payments/PaymentFeatureList;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field public static final ANDROID_PAYMENT_INTENTS_OMIT_DEPRECATED_PARAMETERS:Ljava/lang/String; = "AndroidPaymentIntentsOmitDeprecatedParameters"

.field public static final ENFORCE_FULL_DELEGATION:Ljava/lang/String; = "EnforceFullDelegation"

.field public static final GOOGLE_PAY_VIA_ANDROID_INTENTS:Ljava/lang/String; = "GooglePayViaAndroidIntents"

.field public static final OMIT_PARAMETERS_IN_READY_TO_PAY:Ljava/lang/String; = "OmitParametersInReadyToPay"

.field public static final SERVICE_WORKER_PAYMENT_APPS:Ljava/lang/String; = "ServiceWorkerPaymentApps"

.field public static final SHOW_READY_TO_PAY_DEBUG_INFO:Ljava/lang/String; = "ShowReadyToPayDebugInfo"

.field public static final UPDATE_PAYMENT_DETAILS_INTENT_FILTER_IN_PAYMENT_APP:Ljava/lang/String; = "UpdatePaymentDetailsIntentFilterInPaymentApp"

.field public static final WEB_PAYMENTS:Ljava/lang/String; = "WebPayments"

.field public static final WEB_PAYMENTS_APP_STORE_BILLING:Ljava/lang/String; = "AppStoreBilling"

.field public static final WEB_PAYMENTS_APP_STORE_BILLING_DEBUG:Ljava/lang/String; = "AppStoreBillingDebug"

.field public static final WEB_PAYMENTS_EXPERIMENTAL_FEATURES:Ljava/lang/String; = "WebPaymentsExperimentalFeatures"

.field public static final WEB_PAYMENTS_SINGLE_APP_UI_SKIP:Ljava/lang/String; = "WebPaymentsSingleAppUiSkip"


# direct methods
.method public static isEnabled(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/chromium/components/payments/PaymentFeatureMap;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
