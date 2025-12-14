.class public interface abstract Lorg/chromium/blink/mojom/PeerConnectionTrackerHost;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/blink/mojom/PeerConnectionTrackerHost$Proxy;
    }
.end annotation


# virtual methods
.method public abstract addPeerConnection(Lorg/chromium/blink/mojom/PeerConnectionInfo;)V
.end method

.method public abstract addStandardStats(ILorg/chromium/mojo_base/mojom/ListValue;)V
.end method

.method public abstract getDisplayMedia(IZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDisplayMediaFailure(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getDisplayMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getUserMedia(IZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getUserMediaFailure(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getUserMediaSuccess(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPeerConnectionSessionIdSet(ILjava/lang/String;)V
.end method

.method public abstract removePeerConnection(I)V
.end method

.method public abstract updatePeerConnection(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract webRtcEventLogWrite(I[B)V
.end method
