.class interface abstract Lorg/chromium/media/AudioTrackOutputStream$Callback;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/AudioTrackOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract createAudioTrack(IIIIII)Landroid/media/AudioTrack;
.end method

.method public abstract getAddress(Ljava/nio/ByteBuffer;)J
.end method

.method public abstract getMinBufferSize(III)I
.end method

.method public abstract onError()V
.end method

.method public abstract onMoreData(Ljava/nio/ByteBuffer;J)Lorg/chromium/media/AudioTrackOutputStream$AudioBufferInfo;
.end method
