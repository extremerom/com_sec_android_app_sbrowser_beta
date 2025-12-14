.class Lorg/chromium/network/mojom/HostResolver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenResponseParams;,
        Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverMdnsListenParams;,
        Lorg/chromium/network/mojom/HostResolver_Internal$HostResolverResolveHostParams;,
        Lorg/chromium/network/mojom/HostResolver_Internal$Stub;,
        Lorg/chromium/network/mojom/HostResolver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/HostResolver;",
            "Lorg/chromium/network/mojom/HostResolver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/HostResolver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/HostResolver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/HostResolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
