.class Lorg/chromium/on_device_model/mojom/Session_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionCloneParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreResponseParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionScoreParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsProxyToResponder;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParamsForwardToCallback;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensResponseParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGetSizeInTokensParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionGenerateParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$SessionAppendParams;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$Stub;,
        Lorg/chromium/on_device_model/mojom/Session_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/on_device_model/mojom/Session;",
            "Lorg/chromium/on_device_model/mojom/Session$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/on_device_model/mojom/Session_Internal$1;

    invoke-direct {v0}, Lorg/chromium/on_device_model/mojom/Session_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/on_device_model/mojom/Session_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
