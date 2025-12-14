.class interface abstract Lorg/chromium/media/VideoCapture$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract dCheckCurrentlyOnIncomingTaskRunner(JLorg/chromium/media/VideoCapture;)V
.end method

.method public abstract onError(JLorg/chromium/media/VideoCapture;ILjava/lang/String;)V
.end method

.method public abstract onFrameAvailable(JLorg/chromium/media/VideoCapture;[BII)V
.end method

.method public abstract onFrameDropped(JLorg/chromium/media/VideoCapture;I)V
.end method

.method public abstract onGetPhotoCapabilitiesReply(JLorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V
.end method

.method public abstract onI420FrameAvailable(JLorg/chromium/media/VideoCapture;Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIJ)V
.end method

.method public abstract onPhotoTaken(JLorg/chromium/media/VideoCapture;J[B)V
.end method

.method public abstract onStarted(JLorg/chromium/media/VideoCapture;)V
.end method
