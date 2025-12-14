.class public interface abstract Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient$Proxy;
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

    sget-object v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/proxy_resolver/mojom/ProxyResolverRequestClient;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract alert(Ljava/lang/String;)V
.end method

.method public abstract onError(ILjava/lang/String;)V
.end method

.method public abstract reportResult(ILorg/chromium/proxy_resolver/mojom/ProxyInfo;)V
.end method

.method public abstract resolveDns(Ljava/lang/String;ILorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/proxy_resolver/mojom/HostResolverRequestClient;)V
.end method
