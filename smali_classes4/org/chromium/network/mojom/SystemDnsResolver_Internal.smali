.class Lorg/chromium/network/mojom/SystemDnsResolver_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$SystemDnsResolverResolveResponseParamsProxyToResponder;,
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$SystemDnsResolverResolveResponseParamsForwardToCallback;,
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$SystemDnsResolverResolveResponseParams;,
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$SystemDnsResolverResolveParams;,
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$Stub;,
        Lorg/chromium/network/mojom/SystemDnsResolver_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/network/mojom/SystemDnsResolver;",
            "Lorg/chromium/network/mojom/SystemDnsResolver$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/network/mojom/SystemDnsResolver_Internal$1;

    invoke-direct {v0}, Lorg/chromium/network/mojom/SystemDnsResolver_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/network/mojom/SystemDnsResolver_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
