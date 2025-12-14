.class Lorg/chromium/device/mojom/Fingerprint_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestTypeResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestTypeResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestTypeResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestTypeParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintAddFingerprintObserverParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintDestroyAllRecordsResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintDestroyAllRecordsResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintDestroyAllRecordsResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintDestroyAllRecordsParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintEndCurrentAuthSessionResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintEndCurrentAuthSessionResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintEndCurrentAuthSessionResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintEndCurrentAuthSessionParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintStartAuthSessionParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRemoveRecordResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRemoveRecordResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRemoveRecordResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRemoveRecordParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintSetRecordLabelResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintSetRecordLabelResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintSetRecordLabelResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintSetRecordLabelParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestRecordLabelResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestRecordLabelResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestRecordLabelResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintRequestRecordLabelParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintCancelCurrentEnrollSessionResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintCancelCurrentEnrollSessionResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintCancelCurrentEnrollSessionResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintCancelCurrentEnrollSessionParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintStartEnrollSessionParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintGetRecordsForUserResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintGetRecordsForUserResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintGetRecordsForUserResponseParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$FingerprintGetRecordsForUserParams;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$Stub;,
        Lorg/chromium/device/mojom/Fingerprint_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/Fingerprint;",
            "Lorg/chromium/device/mojom/Fingerprint$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/Fingerprint_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/Fingerprint_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/Fingerprint_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
