.class Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaCodecBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaFormatWrapper"
.end annotation


# instance fields
.field private final mFormat:Landroid/media/MediaFormat;


# direct methods
.method private constructor <init>(Landroid/media/MediaFormat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/MediaFormat;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;-><init>(Landroid/media/MediaFormat;)V

    return-void
.end method

.method private channelCount()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "channel-count"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private colorRange()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "color-range"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private colorStandard()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "color-standard"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private colorTransfer()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "color-transfer"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private formatHasCropValues()Z
    .locals 2

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-left"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "crop-top"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private height()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->formatHasCropValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-bottom"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-top"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "height"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private sampleRate()I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "sample-rate"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private stride()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "stride"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->width()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private width()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->formatHasCropValues()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "crop-left"

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v0, "width"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private yPlaneHeight()I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    const-string v1, "slice-height"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->height()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/media/MediaCodecBridge$MediaFormatWrapper;->mFormat:Landroid/media/MediaFormat;

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
