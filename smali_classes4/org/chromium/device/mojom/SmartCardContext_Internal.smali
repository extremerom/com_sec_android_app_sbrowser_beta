.class Lorg/chromium/device/mojom/SmartCardContext_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectResponseParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextConnectParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelResponseParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextCancelParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeResponseParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextGetStatusChangeParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersResponseParamsProxyToResponder;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersResponseParamsForwardToCallback;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersResponseParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$SmartCardContextListReadersParams;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$Stub;,
        Lorg/chromium/device/mojom/SmartCardContext_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/device/mojom/SmartCardContext;",
            "Lorg/chromium/device/mojom/SmartCardContext$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/device/mojom/SmartCardContext_Internal$1;

    invoke-direct {v0}, Lorg/chromium/device/mojom/SmartCardContext_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/device/mojom/SmartCardContext_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
