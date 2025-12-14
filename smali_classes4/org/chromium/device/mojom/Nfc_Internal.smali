.class Lorg/chromium/device/mojom/Nfc_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/Nfc_Internal$NfcCancelWatchParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcWatchResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcWatchResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcWatchResponseParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcWatchParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcCancelMakeReadOnlyParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcMakeReadOnlyResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcMakeReadOnlyResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcMakeReadOnlyResponseParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcMakeReadOnlyParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcCancelPushParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcPushResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcPushResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcPushResponseParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcPushParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$NfcSetClientParams;,
        Lorg/chromium/device/mojom/Nfc_Internal$Stub;,
        Lorg/chromium/device/mojom/Nfc_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/Nfc;",
            "Lorg/chromium/device/mojom/Nfc$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/Nfc_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/Nfc_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/Nfc_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
