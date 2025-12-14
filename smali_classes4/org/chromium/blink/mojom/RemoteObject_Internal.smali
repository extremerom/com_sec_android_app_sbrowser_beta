.class Lorg/chromium/blink/mojom/RemoteObject_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectNotifyReleasedObjectParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectInvokeMethodResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectInvokeMethodResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectInvokeMethodResponseParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectInvokeMethodParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectGetMethodsResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectGetMethodsResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectGetMethodsResponseParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectGetMethodsParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectHasMethodResponseParamsProxyToResponder;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectHasMethodResponseParamsForwardToCallback;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectHasMethodResponseParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$RemoteObjectHasMethodParams;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$Stub;,
        Lorg/chromium/blink/mojom/RemoteObject_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/blink/mojom/RemoteObject;",
            "Lorg/chromium/blink/mojom/RemoteObject$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/blink/mojom/RemoteObject_Internal$1;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/RemoteObject_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/blink/mojom/RemoteObject_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
