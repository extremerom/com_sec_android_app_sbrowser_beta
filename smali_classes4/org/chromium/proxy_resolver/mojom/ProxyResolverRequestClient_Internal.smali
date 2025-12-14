.class Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientResolveDnsParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientOnErrorParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientAlertParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$ProxyResolverRequestClientReportResultParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$Stub;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;",
            "Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
