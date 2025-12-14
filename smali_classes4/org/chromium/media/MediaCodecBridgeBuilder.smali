.class Lorg/chromium/media/MediaCodecBridgeBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public static createAudioDecoder(Ljava/lang/String;Landroid/media/MediaCrypto;II[B[B[BZZ)Lorg/chromium/media/MediaCodecBridge;
    .locals 6
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "MediaCodecBridge"

    new-instance v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "create MediaCodec audio decoder, mime %s"

    invoke-static {v0, v2, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, p1}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;ILandroid/media/MediaCrypto;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v3

    iget-object v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v4, :cond_0

    return-object v1

    :cond_0
    new-instance v5, Lorg/chromium/media/MediaCodecBridge;

    iget v3, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    invoke-direct {v5, v4, v3, p8}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;IZ)V

    filled-new-array {p4, p5, p6}, [[B

    move-result-object p4

    invoke-static {p0, p2, p3, p4, p7}, Lorg/chromium/media/MediaFormatBuilder;->createAudioFormat(Ljava/lang/String;II[[BZ)Landroid/media/MediaFormat;

    move-result-object p2

    invoke-virtual {v5, p2, p1, v2}, Lorg/chromium/media/MediaCodecBridge;->configureAudio(Landroid/media/MediaFormat;Landroid/media/MediaCrypto;I)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v5}, Lorg/chromium/media/MediaCodecBridge;->start()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v5}, Lorg/chromium/media/MediaCodecBridge;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_2
    return-object v5

    :goto_0
    const-string p2, "Failed to create MediaCodec audio decoder: %s"

    invoke-static {v0, p2, p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static createVideoDecoder(Ljava/lang/String;ILandroid/media/MediaCrypto;IILandroid/view/Surface;[B[BLorg/chromium/media/HdrMetadata;ZZZLjava/lang/String;I)Lorg/chromium/media/MediaCodecBridge;
    .locals 13
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v8, p0

    move-object/from16 v0, p12

    const-string v9, "MediaCodecBridge"

    new-instance v1, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v1}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    const-string v1, "create MediaCodec video decoder, mime %s, decoder name %s, block_model=%b"

    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v9, v1, p0, v0, v2}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0, v0}, Lorg/chromium/media/MediaCodecUtil;->createDecoderByName(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/chromium/media/MediaCodecUtil;->createDecoder(Ljava/lang/String;ILandroid/media/MediaCrypto;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v0

    :goto_0
    iget-object v1, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    return-object v10

    :cond_1
    new-instance v11, Lorg/chromium/media/MediaCodecBridge;

    iget v2, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    move/from16 v3, p10

    invoke-direct {v11, v1, v2, v3}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;IZ)V

    filled-new-array/range {p6 .. p7}, [[B

    move-result-object v4

    iget-boolean v0, v0, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    if-eqz p9, :cond_2

    const/4 v0, 0x1

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v12

    :goto_1
    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v5, p8

    move/from16 v7, p13

    invoke-static/range {v1 .. v7}, Lorg/chromium/media/MediaFormatBuilder;->createVideoDecoderFormat(Ljava/lang/String;II[[BLorg/chromium/media/HdrMetadata;ZI)Landroid/media/MediaFormat;

    move-result-object v0

    if-eqz p11, :cond_3

    const/4 v12, 0x2

    :cond_3
    move-object v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v11, v0, v2, p2, v12}, Lorg/chromium/media/MediaCodecBridge;->configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z

    move-result v0

    if-nez v0, :cond_4

    return-object v10

    :cond_4
    invoke-virtual {v11}, Lorg/chromium/media/MediaCodecBridge;->start()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lorg/chromium/media/MediaCodecBridge;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v10

    :cond_5
    return-object v11

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Failed to create MediaCodec video decoder: %s, codecType: %d"

    invoke-static {v9, v2, p0, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object v10
.end method

.method public static createVideoEncoder(Ljava/lang/String;IIIIIII)Lorg/chromium/media/MediaCodecBridge;
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v1, p0

    const-string v2, "MediaCodecBridge"

    new-instance v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    invoke-direct {v3}, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;-><init>()V

    :try_start_0
    const-string v0, "create MediaCodec video encoder, mime %s"

    invoke-static {v2, v0, p0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lorg/chromium/media/MediaCodecUtil;->createEncoder(Ljava/lang/String;)Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "Failed to create MediaCodec video encoder: %s"

    invoke-static {v2, v4, p0, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return-object v10

    :cond_0
    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/chromium/media/MediaCodecEncoder;

    iget-object v2, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    iget v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    invoke-direct {v0, v2, v4}, Lorg/chromium/media/MediaCodecEncoder;-><init>(Landroid/media/MediaCodec;I)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/chromium/media/MediaCodecBridge;

    iget-object v2, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->mediaCodec:Landroid/media/MediaCodec;

    iget v4, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    const/4 v5, 0x0

    invoke-direct {v0, v2, v4, v5}, Lorg/chromium/media/MediaCodecBridge;-><init>(Landroid/media/MediaCodec;IZ)V

    :goto_1
    iget v2, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->bitrateAdjuster:I

    move/from16 v4, p5

    invoke-static {v2, v4}, Lorg/chromium/media/BitrateAdjuster;->getInitialFrameRate(II)I

    move-result v6

    iget-boolean v9, v3, Lorg/chromium/media/MediaCodecUtil$CodecCreationInfo;->supportsAdaptivePlayback:Z

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lorg/chromium/media/MediaFormatBuilder;->createVideoEncoderFormat(Ljava/lang/String;IIIIIIIZ)Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v10, v10, v2}, Lorg/chromium/media/MediaCodecBridge;->configureVideo(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v10

    :cond_2
    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecBridge;->start()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lorg/chromium/media/MediaCodecBridge;->release()V

    return-object v10

    :cond_3
    return-object v0
.end method
