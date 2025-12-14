.class Lorg/chromium/blink/mojom/HidService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceForgetResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceForgetResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceForgetResponseParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceForgetParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceConnectResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceConnectResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceConnectResponseParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceConnectParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceRequestDeviceResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceRequestDeviceResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceRequestDeviceResponseParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceRequestDeviceParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceGetDevicesResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceGetDevicesResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceGetDevicesResponseParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceGetDevicesParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$HidServiceRegisterClientParams;,
        Lorg/chromium/blink/mojom/HidService_Internal$Stub;,
        Lorg/chromium/blink/mojom/HidService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/HidService;",
            "Lorg/chromium/blink/mojom/HidService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/HidService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/HidService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/HidService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
