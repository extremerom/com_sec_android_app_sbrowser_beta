.class public interface abstract Lorg/chromium/network/mojom/WebTransportClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/network/mojom/WebTransportClient$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onClosed(Lorg/chromium/network/mojom/WebTransportCloseInfo;Lorg/chromium/network/mojom/WebTransportStats;)V
.end method

.method public abstract onDatagramReceived(Lorg/chromium/mojo_base/mojom/ReadOnlyBuffer;)V
.end method

.method public abstract onIncomingStreamClosed(IZ)V
.end method

.method public abstract onOutgoingStreamClosed(I)V
.end method

.method public abstract onReceivedResetStream(II)V
.end method

.method public abstract onReceivedStopSending(II)V
.end method
