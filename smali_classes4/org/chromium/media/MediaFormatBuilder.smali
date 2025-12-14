.class Lorg/chromium/media/MediaFormatBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method private static addInputSizeInfoToFormat(Landroid/media/MediaFormat;Z)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const-string v3, "height"

    const-string v4, "width"

    const-string v5, "max-height"

    const-string v6, "max-width"

    if-eqz p1, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lorg/chromium/media/DisplayCompat;->isTv(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator;->getScreenResolution(Landroid/media/MediaFormat;)Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;

    move-result-object v7

    invoke-virtual {v7}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->getWidth()I

    move-result v8

    invoke-virtual {p0, v6, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {v7}, Lorg/chromium/media/MaxAnticipatedResolutionEstimator$Resolution;->getHeight()I

    move-result v7

    invoke-virtual {p0, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v6, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v5, v7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    const-string v7, "max-input-size"

    invoke-virtual {p0, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    const/16 v8, 0x80

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-eqz p1, :cond_3

    invoke-virtual {p0, v5}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    invoke-virtual {p0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz p1, :cond_4

    invoke-virtual {p0, v6}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_4
    const-string p1, "mime"

    invoke-virtual {p0, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "video/x-vnd.on2.vp9"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v5, 0x5

    goto :goto_1

    :sswitch_1
    const-string v6, "video/x-vnd.on2.vp8"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v5, v0

    goto :goto_1

    :sswitch_2
    const-string v6, "video/avc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    goto :goto_1

    :sswitch_3
    const-string v6, "video/hevc"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    move v5, v2

    goto :goto_1

    :sswitch_4
    const-string v6, "video/av01"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_5
    const-string v6, "video/dolby-vision"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    return-void

    :pswitch_0
    mul-int/2addr v4, v3

    :goto_2
    move v0, v2

    goto :goto_3

    :pswitch_1
    const-string p1, "BRAVIA 4K 2015"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    :cond_b
    add-int/lit8 v4, v4, 0xf

    div-int/lit8 v4, v4, 0x10

    add-int/lit8 v3, v3, 0xf

    div-int/lit8 v3, v3, 0x10

    mul-int/2addr v3, v4

    mul-int/lit16 v4, v3, 0x100

    goto :goto_2

    :pswitch_2
    mul-int/2addr v4, v3

    :goto_3
    mul-int/2addr v4, v1

    mul-int/2addr v0, v2

    div-int/2addr v4, v0

    invoke-virtual {p0, v7, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6e5534ef -> :sswitch_5
        -0x631b55f6 -> :sswitch_4
        -0x63185e82 -> :sswitch_3
        0x4f62373a -> :sswitch_2
        0x5f50bed8 -> :sswitch_1
        0x5f50bed9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static addProfileInfoToFormat(Landroid/media/MediaFormat;I)V
    .locals 2

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/dolby-vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x15

    const-string v1, "profile"

    if-ne p1, v0, :cond_0

    const/16 p1, 0x20

    invoke-virtual {p0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_1

    const/16 p1, 0x100

    invoke-virtual {p0, v1, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static createAudioFormat(Ljava/lang/String;II[[BZ)Landroid/media/MediaFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    invoke-static {p0, p3}, Lorg/chromium/media/MediaFormatBuilder;->setCodecSpecificData(Landroid/media/MediaFormat;[[B)V

    if-eqz p4, :cond_0

    const-string p1, "is-adts"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_0
    return-object p0
.end method

.method public static createVideoDecoderFormat(Ljava/lang/String;II[[BLorg/chromium/media/HdrMetadata;ZI)Landroid/media/MediaFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0, p3}, Lorg/chromium/media/MediaFormatBuilder;->setCodecSpecificData(Landroid/media/MediaFormat;[[B)V

    if-eqz p4, :cond_1

    invoke-virtual {p4, p0}, Lorg/chromium/media/HdrMetadata;->addMetadataToFormat(Landroid/media/MediaFormat;)V

    :cond_1
    invoke-static {p0, p5}, Lorg/chromium/media/MediaFormatBuilder;->addInputSizeInfoToFormat(Landroid/media/MediaFormat;Z)V

    invoke-static {p0, p6}, Lorg/chromium/media/MediaFormatBuilder;->addProfileInfoToFormat(Landroid/media/MediaFormat;I)V

    return-object p0
.end method

.method public static createVideoEncoderFormat(Ljava/lang/String;IIIIIIIZ)Landroid/media/MediaFormat;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p0

    const-string p1, "bitrate"

    invoke-virtual {p0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "frame-rate"

    invoke-virtual {p0, p1, p5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "i-frame-interval"

    invoke-virtual {p0, p1, p6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "color-format"

    invoke-virtual {p0, p1, p7}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "bitrate-mode"

    invoke-virtual {p0, p1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    invoke-static {p0, p8}, Lorg/chromium/media/MediaFormatBuilder;->addInputSizeInfoToFormat(Landroid/media/MediaFormat;Z)V

    return-object p0
.end method

.method private static setCodecSpecificData(Landroid/media/MediaFormat;[[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    array-length v1, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "csd-"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
