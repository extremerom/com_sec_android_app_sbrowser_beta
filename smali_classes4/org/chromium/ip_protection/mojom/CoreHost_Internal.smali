.class Lorg/chromium/ip_protection/mojom/CoreHost_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetProbabilisticRevealTokensResponseParamsProxyToResponder;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetProbabilisticRevealTokensResponseParamsForwardToCallback;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetProbabilisticRevealTokensResponseParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetProbabilisticRevealTokensParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParamsProxyToResponder;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParamsForwardToCallback;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigResponseParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostGetProxyConfigParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetAuthTokensResponseParamsProxyToResponder;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetAuthTokensResponseParamsForwardToCallback;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetAuthTokensResponseParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$CoreHostTryGetAuthTokensParams;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$Stub;,
        Lorg/chromium/ip_protection/mojom/CoreHost_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/ip_protection/mojom/CoreHost;",
            "Lorg/chromium/ip_protection/mojom/CoreHost$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$1;

    invoke-direct {v0}, Lorg/chromium/ip_protection/mojom/CoreHost_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/ip_protection/mojom/CoreHost_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
