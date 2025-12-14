.class Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;
.super Landroid/media/MediaCodec$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaCodecCallback"
.end annotation


# instance fields
.field private mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaCodecBridge;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/MediaCodec$Callback;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    return-void
.end method


# virtual methods
.method public onCryptoError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CryptoException;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecBridge"

    const-string v1, "MediaCodec.onCryptoError: %s"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    invoke-static {p2}, Lorg/chromium/media/MediaCodecBridge;->b(Landroid/media/MediaCodec$CryptoException;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaCodecBridge;->onError(I)V

    return-void
.end method

.method public onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V
    .locals 2

    invoke-virtual {p2}, Landroid/media/MediaCodec$CodecException;->getDiagnosticInfo()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaCodecBridge"

    const-string v1, "MediaCodec.onError: %s"

    invoke-static {v0, v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    invoke-static {p2}, Lorg/chromium/media/MediaCodecBridge;->a(Landroid/media/MediaCodec$CodecException;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/chromium/media/MediaCodecBridge;->onError(I)V

    return-void
.end method

.method public onInputBufferAvailable(Landroid/media/MediaCodec;I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaCodecBridge;->onInputBufferAvailable(I)V

    return-void
.end method

.method public onOutputBufferAvailable(Landroid/media/MediaCodec;ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p0, p2, p3}, Lorg/chromium/media/MediaCodecBridge;->onOutputBufferAvailable(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaCodecCallback;->mMediaCodecBridge:Lorg/chromium/media/MediaCodecBridge;

    invoke-virtual {p0, p2}, Lorg/chromium/media/MediaCodecBridge;->onOutputFormatChanged(Landroid/media/MediaFormat;)V

    return-void
.end method
