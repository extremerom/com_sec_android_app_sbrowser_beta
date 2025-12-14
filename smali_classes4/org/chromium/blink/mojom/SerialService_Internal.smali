.class Lorg/chromium/blink/mojom/SerialService_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceForgetPortResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceForgetPortResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceForgetPortResponseParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceForgetPortParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceOpenPortResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceOpenPortResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceOpenPortResponseParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceOpenPortParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceRequestPortResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceRequestPortResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceRequestPortResponseParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceRequestPortParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceGetPortsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceGetPortsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceGetPortsResponseParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceGetPortsParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$SerialServiceSetClientParams;,
        Lorg/chromium/blink/mojom/SerialService_Internal$Stub;,
        Lorg/chromium/blink/mojom/SerialService_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/SerialService;",
            "Lorg/chromium/blink/mojom/SerialService$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/SerialService_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/SerialService_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/SerialService_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
