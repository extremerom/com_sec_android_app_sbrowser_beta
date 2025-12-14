.class public interface abstract Lorg/chromium/network/mojom/HostResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/HostResolver$MdnsListen_Response;,
        Lorg/chromium/network/mojom/HostResolver$Proxy;
    }
.end annotation


# virtual methods
.method public abstract mdnsListen(Lorg/chromium/network/mojom/HostPortPair;ILorg/chromium/network/mojom/MdnsListenClient;Lorg/chromium/network/mojom/HostResolver$MdnsListen_Response;)V
.end method

.method public abstract resolveHost(Lorg/chromium/network/mojom/HostResolverHost;Lorg/chromium/network/mojom/NetworkAnonymizationKey;Lorg/chromium/network/mojom/ResolveHostParameters;Lorg/chromium/network/mojom/ResolveHostClient;)V
.end method
