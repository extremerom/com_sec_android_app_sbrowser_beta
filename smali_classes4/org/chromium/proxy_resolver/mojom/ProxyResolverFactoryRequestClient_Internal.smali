.class Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$ProxyResolverFactoryRequestClientResolveDnsParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$ProxyResolverFactoryRequestClientOnErrorParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$ProxyResolverFactoryRequestClientAlertParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$ProxyResolverFactoryRequestClientReportResultParams;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$Stub;,
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient;",
            "Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$1;

    invoke-direct {v0}, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverFactoryRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
