.class public interface abstract Lorg/chromium/network/mojom/P2pSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/P2pSocket$Proxy;
    }
.end annotation


# virtual methods
.method public abstract send(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;Lorg/chromium/network/mojom/P2pPacketInfo;)V
.end method

.method public abstract sendBatch([Lorg/chromium/network/mojom/P2pSendPacket;)V
.end method

.method public abstract setOption(II)V
.end method
