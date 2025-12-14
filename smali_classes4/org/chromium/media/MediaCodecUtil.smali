.class Lorg/chromium/media/MediaCodecUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;,
        Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;,
        Lorg/chromium/media/MediaCodecUtil$Natives;,
        Lorg/chromium/media/MediaCodecUtil$MimeTypes;,
        Lorg/chromium/media/MediaCodecUtil$HWEncoder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method private static canDecode(Ljava/lang/String;Z)Z
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MediaCodecUtil"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "Decoder for type %s is not supported on this device"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v2

    :cond_0
    new-instance v0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    invoke-static {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->g(Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;)[Landroid/media/MediaCodecInfo;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {v1, p0}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const-string v3, "secure-playback"

    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {v1, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    return v4

    :cond_3
    if-nez p1, :cond_1

    invoke-virtual {v1, v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_1

    return v4

    :cond_4
    return v2

    :cond_5
    invoke-static {p0, p1}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;I)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object p0

    if-eqz p0, :cond_7

    iget-object p0, p0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Landroid/media/MediaCodec;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string p1, "Cannot release media codec"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return v4

    :cond_7
    :goto_2
    return v2
.end method

.method private static codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaCodec;->getCodecInfo()Landroid/media/MediaCodecInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p1, "adaptive-playback"

    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    return v0

    :goto_1
    const-string p1, "MediaCodecUtil"

    const-string v1, "Cannot retrieve codec information"

    invoke-static {p1, v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static createDecoder(Ljava/lang/String;I)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;ILandroid/media/MediaCrypto;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static createDecoder(Ljava/lang/String;ILandroid/media/MediaCrypto;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 6

    const-string v0, ".secure"

    new-instance v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "MediaCodecUtil"

    if-nez v2, :cond_0

    const-string p1, "Decoder for type %s is not supported on this device"

    invoke-static {v3, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    :try_start_0
    const-string v2, "video"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    if-eq p1, v4, :cond_2

    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2, p0}, Landroid/media/MediaCrypto;->requiresSecureDecoderComponent(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_2
    invoke-static {p0, v5, v5, v5}, Lorg/chromium/media/MediaCodecUtil;->getDefaultCodecName(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object v1

    :cond_3
    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :cond_4
    const/4 p2, 0x2

    if-ne p1, p2, :cond_5

    invoke-static {p0, v5, v4, v5}, Lorg/chromium/media/MediaCodecUtil;->getDefaultCodecName(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_5
    const-string p2, "audio/raw"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "OMX.google.raw.decoder"

    invoke-static {p2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    goto :goto_0

    :cond_6
    invoke-static {p0}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    :goto_0
    iget-object p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {p2, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Failed to create MediaCodec: %s, codecType: %d"

    invoke-static {v3, v0, p0, p1, p2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    iput-object p0, v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    :goto_2
    return-object v1
.end method

.method public static createDecoderByName(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 3

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    :try_start_0
    invoke-static {p1}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    invoke-static {v1, p0}, Lorg/chromium/media/MediaCodecUtil;->codecSupportsAdaptivePlayback(Landroid/media/MediaCodec;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "MediaCodecUtil"

    const-string v2, "Failed to create MediaCodec by decoder name %s"

    invoke-static {v1, v2, p1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    iput-object p0, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    :goto_0
    return-object v0
.end method

.method public static createEncoder(Ljava/lang/String;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;
    .locals 4

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->findHWEncoder(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    iput-object v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->getBitrateAdjusterTypeForHWEncoder(I)I

    move-result v1

    iput v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaCodecUtil"

    const-string v3, "Failed to create MediaCodec: %s"

    invoke-static {v2, v3, p0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private static findHWEncoder(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "MediaCodecUtil"

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->isSoftwareCodec(Landroid/media/MediaCodecInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v4, v7

    invoke-virtual {v8, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v1, v6

    :goto_3
    const/16 v4, 0x8

    if-ge v1, v4, :cond_0

    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->getMimeForHWEncoder(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->getPrefixForHWEncoder(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "omx."

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "c2."

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->getMinSDKForHWEncoder(I)I

    move-result v5

    if-ge v4, v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Codec "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is disabled due to SDK version "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "Found target encoder for mime "

    const-string v4, " : "

    invoke-static {v0, p0, v4, v2}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HW encoder for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not available on this device."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getBitrateAdjusterTypeForHWEncoder(I)I
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid HWEncoder decoder parameter."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static getDefaultCodecName(Ljava/lang/String;IZZ)Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/chromium/media/MediaCodecUtil;->isSoftwareCodec(Landroid/media/MediaCodecInfo;)Z

    move-result v2

    if-eqz p2, :cond_2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string p1, "Encoder"

    :goto_2
    move-object v2, p1

    goto :goto_3

    :cond_6
    const-string p1, "Decoder"

    goto :goto_2

    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v0, "MediaCodecUtil"

    const-string v1, "%s for type %s is not supported on this device [requireSoftware=%b, requireHardware=%b]."

    move-object v3, p0

    invoke-static/range {v0 .. v5}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0
.end method

.method private static getEncoderColorFormatsForMime(Ljava/lang/String;)[I
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodecInfo;

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    iget-object p0, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMimeForHWEncoder(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "video/x-vnd.on2.vp9"

    return-object p0

    :pswitch_1
    const-string p0, "video/avc"

    return-object p0

    :pswitch_2
    const-string p0, "video/x-vnd.on2.vp8"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getMinSDKForHWEncoder(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/16 p0, 0x1e

    return p0

    :pswitch_1
    const/16 p0, 0x1b

    return p0

    :pswitch_2
    const/16 p0, 0x18

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static getPrefixForHWEncoder(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "sprd"

    return-object p0

    :pswitch_1
    const-string p0, "hisi"

    return-object p0

    :pswitch_2
    const-string p0, "mtk"

    return-object p0

    :pswitch_3
    const-string p0, "exynos"

    return-object p0

    :pswitch_4
    const-string p0, "qcom"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSupportedCodecProfileLevels()[Ljava/lang/Object;
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/media/CodecProfileLevelList;

    invoke-direct {v0}, Lorg/chromium/media/CodecProfileLevelList;-><init>()V

    new-instance v1, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;-><init>()V

    invoke-virtual {v1}, Lorg/chromium/media/MediaCodecUtil$MediaCodecListHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaCodecInfo;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    invoke-static {v7}, Lorg/chromium/media/MediaCodecUtil;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "MediaCodecUtil"

    const-string v9, "Decoder for type %s disabled on this device"

    invoke-static {v8, v9, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v2, v7}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v8

    iget-object v8, v8, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v9, v8

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    invoke-virtual {v0, v7, v11}, Lorg/chromium/media/CodecProfileLevelList;->addCodecProfileLevel(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecProfileLevel;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/chromium/media/CodecProfileLevelList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isDecoderSupportedForDevice(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/media/MediaCodecUtilJni;->get()Lorg/chromium/media/MediaCodecUtil$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/media/MediaCodecUtil$Natives;->isDecoderSupportedForDevice(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isEncoderSupportedByDevice(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->findHWEncoder(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSetOutputSurfaceSupported()Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v1, "hi6210sft"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "hi6250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSoftwareCodec(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "omx.google."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "c2.android."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, ".sw.dec"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ".sw.enc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_0
    return v1
.end method
