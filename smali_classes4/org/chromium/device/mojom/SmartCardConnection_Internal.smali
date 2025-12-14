.class Lorg/chromium/device/mojom/SmartCardConnection_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionBeginTransactionResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionBeginTransactionResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionBeginTransactionResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionBeginTransactionParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionStatusResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionStatusResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionStatusResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionStatusParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionSetAttribResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionSetAttribResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionSetAttribResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionSetAttribParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionGetAttribResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionGetAttribResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionGetAttribResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionGetAttribParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionControlResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionControlResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionControlResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionControlParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionTransmitResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionTransmitResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionTransmitResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionTransmitParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionDisconnectResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionDisconnectResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionDisconnectResponseParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$SmartCardConnectionDisconnectParams;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$Stub;,
        Lorg/chromium/device/mojom/SmartCardConnection_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SmartCardConnection;",
            "Lorg/chromium/device/mojom/SmartCardConnection$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/SmartCardConnection_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardConnection_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/SmartCardConnection_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
