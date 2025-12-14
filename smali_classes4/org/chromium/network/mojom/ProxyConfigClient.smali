.class public interface abstract Lorg/chromium/network/mojom/ProxyConfigClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/ProxyConfigClient$FlushProxyConfig_Response;,
        Lorg/chromium/network/mojom/ProxyConfigClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract flushProxyConfig(Lorg/chromium/network/mojom/ProxyConfigClient$FlushProxyConfig_Response;)V
.end method

.method public abstract onProxyConfigUpdated(Lorg/chromium/network/mojom/ProxyConfigWithAnnotation;)V
.end method
