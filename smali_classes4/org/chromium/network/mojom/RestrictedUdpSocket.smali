.class public interface abstract Lorg/chromium/network/mojom/RestrictedUdpSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/RestrictedUdpSocket$SendTo_Response;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket$Send_Response;,
        Lorg/chromium/network/mojom/RestrictedUdpSocket$Proxy;
    }
.end annotation


# virtual methods
.method public abstract receiveMore(I)V
.end method

.method public abstract send(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/RestrictedUdpSocket$Send_Response;)V
.end method

.method public abstract sendTo(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/HostPortPair;ILorg/chromium/network/mojom/RestrictedUdpSocket$SendTo_Response;)V
.end method
