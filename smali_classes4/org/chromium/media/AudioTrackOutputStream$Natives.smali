.class interface abstract Lorg/chromium/media/AudioTrackOutputStream$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/AudioTrackOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract getAddress(JLorg/chromium/media/AudioTrackOutputStream;Ljava/nio/ByteBuffer;)J
.end method

.method public abstract onError(JLorg/chromium/media/AudioTrackOutputStream;)V
.end method

.method public abstract onMoreData(JLorg/chromium/media/AudioTrackOutputStream;Ljava/nio/ByteBuffer;J)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;
.end method
