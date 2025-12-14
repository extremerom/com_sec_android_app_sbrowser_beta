.class Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObtainBlockResult"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mBlock:Landroid/media/MediaCodec$LinearBlock;

.field private mBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec$LinearBlock;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object p2, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaCodec$LinearBlock;Ljava/nio/ByteBuffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;-><init>(Landroid/media/MediaCodec$LinearBlock;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private block()Landroid/media/MediaCodec$LinearBlock;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBlock:Landroid/media/MediaCodec$LinearBlock;

    return-object p0
.end method

.method private buffer()Ljava/nio/ByteBuffer;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private recycle()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBlock:Landroid/media/MediaCodec$LinearBlock;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Lf1/y0;->s(Landroid/media/MediaCodec$LinearBlock;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecBridge"

    const-string v2, "Failed to recyle LinearBlock: "

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBlock:Landroid/media/MediaCodec$LinearBlock;

    iput-object v0, p0, Lorg/chromium/media/MediaCodecBridge$ObtainBlockResult;->mBuffer:Ljava/nio/ByteBuffer;

    :cond_0
    return-void
.end method
