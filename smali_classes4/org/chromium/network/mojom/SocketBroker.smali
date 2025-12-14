.class public interface abstract Lorg/chromium/network/mojom/SocketBroker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/SocketBroker$CreateUdpSocket_Response;,
        Lorg/chromium/network/mojom/SocketBroker$CreateTcpSocket_Response;,
        Lorg/chromium/network/mojom/SocketBroker$Proxy;
    }
.end annotation


# virtual methods
.method public abstract createTcpSocket(ILorg/chromium/network/mojom/SocketBroker$CreateTcpSocket_Response;)V
.end method

.method public abstract createUdpSocket(ILorg/chromium/network/mojom/SocketBroker$CreateUdpSocket_Response;)V
.end method
