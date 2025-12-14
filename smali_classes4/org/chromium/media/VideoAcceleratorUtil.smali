.class Lorg/chromium/media/VideoAcceleratorUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/media/VideoAcceleratorUtil$Resolution;,
        Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final SUPPORTED_DECODER_TYPES:[Ljava/lang/String;

.field private static final SUPPORTED_ENCODER_TYPES:[Ljava/lang/String;

.field private static final SUPPORTED_RESOLUTIONS:[Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

.field private static final TEMPORAL_SVC_SUPPORTING_ENCODERS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "video/avc"

    const-string v1, "video/hevc"

    const-string v2, "video/x-vnd.on2.vp8"

    const-string v3, "video/x-vnd.on2.vp9"

    const-string v4, "video/av01"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_ENCODER_TYPES:[Ljava/lang/String;

    const-string v5, "video/hevc"

    const-string v6, "video/dolby-vision"

    const-string v1, "video/x-vnd.on2.vp8"

    const-string v2, "video/x-vnd.on2.vp9"

    const-string v3, "video/av01"

    const-string v4, "video/avc"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_DECODER_TYPES:[Ljava/lang/String;

    const-string v0, "c2.qti.avc.encoder"

    const-string v1, "c2.exynos.h264.encoder"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "duplicate element: "

    invoke-static {v4, v1}, Lt/b;->g(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoAcceleratorUtil;->TEMPORAL_SVC_SUPPORTING_ENCODERS:Ljava/util/Set;

    new-instance v1, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x140

    const/16 v2, 0xb4

    invoke-direct {v1, v0, v2}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v2, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x280

    const/16 v3, 0x168

    invoke-direct {v2, v0, v3}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v3, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v3, v0, v4}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v4, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x780

    const/16 v5, 0x438

    invoke-direct {v4, v0, v5}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v5, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0xa00

    const/16 v6, 0x5a0

    invoke-direct {v5, v0, v6}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v6, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0xf00

    const/16 v7, 0x870

    invoke-direct {v6, v0, v7}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v7, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x1400

    const/16 v8, 0xb40

    invoke-direct {v7, v0, v8}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    new-instance v8, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    const/16 v0, 0x1e00

    const/16 v9, 0x10e0

    invoke-direct {v8, v0, v9}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    filled-new-array/range {v1 .. v8}, [Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    move-result-object v0

    sput-object v0, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_RESOLUTIONS:[Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    return-void
.end method

.method private static alignUp(II)I
    .locals 0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    add-int/lit8 p1, p1, -0x1

    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method private static getNumberOfTemporalLayers(Ljava/lang/String;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v0, Lorg/chromium/media/VideoAcceleratorUtil;->TEMPORAL_SVC_SUPPORTING_ENCODERS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    return v2
.end method

.method private static getSupportedDecoderProfiles()[Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;
    .locals 26
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v1, "VAUtil"

    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_DECODER_TYPES:[Ljava/lang/String;

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_12

    aget-object v8, v4, v7

    array-length v9, v0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_11

    aget-object v11, v0, v10

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v12

    if-eqz v12, :cond_1

    :catch_0
    :goto_2
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v23, v7

    move/from16 v22, v9

    move/from16 v25, v10

    :cond_0
    const/4 v10, 0x0

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lorg/chromium/media/VideoAcceleratorUtil;->isLowLatency(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v11, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v13, "tunneled-playback"

    invoke-virtual {v12, v13}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v13

    invoke-virtual {v13}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v14

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object v15

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0xf00

    if-lt v2, v6, :cond_5

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v6, 0x870

    if-ge v2, v6, :cond_6

    :cond_5
    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    mul-int/2addr v6, v2

    const v2, 0x7e9000

    if-lt v6, v2, :cond_6

    const/16 v2, 0x870

    const/16 v6, 0xf00

    invoke-virtual {v13, v6, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v17

    if-eqz v17, :cond_6

    new-instance v2, Landroid/util/Range;

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v14, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    new-instance v6, Landroid/util/Range;

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const/16 v15, 0x870

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object v14, v2

    move-object v15, v6

    :cond_6
    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v13, v2, v6}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8}, Lorg/chromium/media/CodecProfileLevelList;->getCodecFromMime(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v17, v0

    iget-object v0, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v18, v4

    array-length v4, v0

    move/from16 v19, v5

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_9

    move/from16 v20, v4

    aget-object v4, v0, v5

    move-object/from16 v21, v0

    :try_start_2
    iget v0, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v13, v0}, Lorg/chromium/media/CodecProfileLevelList;->mediaCodecProfileToChromiumMediaProfile(II)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    move/from16 v22, v9

    :try_start_3
    iget v9, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-static {v13, v9}, Lorg/chromium/media/CodecProfileLevelList;->mediaCodecLevelToChromiumMediaLevel(II)I

    move-result v9
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v23, v7

    goto :goto_5

    :catch_1
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v23, v7

    :try_start_5
    const-string v7, "Unknown level: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " for profile "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of codec "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v24, -0x1

    move/from16 v25, v10

    :try_start_6
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v7, v10}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v9, v7, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_8

    :catch_2
    :goto_6
    move/from16 v25, v10

    goto :goto_7

    :catch_3
    move/from16 v23, v7

    goto :goto_6

    :catch_4
    move/from16 v23, v7

    move/from16 v22, v9

    goto :goto_6

    :catch_5
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Unknown profile: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v4, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for codec "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v20

    move-object/from16 v0, v21

    move/from16 v9, v22

    move/from16 v7, v23

    move/from16 v10, v25

    goto/16 :goto_4

    :cond_9
    move/from16 v23, v7

    move/from16 v22, v9

    move/from16 v25, v10

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "CodecCapabilities.profileLevels is missing for codec "

    const-string v4, ". Assuming default support."

    invoke-static {v0, v8, v4}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v5}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    if-eq v13, v0, :cond_f

    const/16 v0, 0xa

    if-eq v13, v0, :cond_e

    const/4 v0, 0x6

    if-eq v13, v0, :cond_d

    const/4 v0, 0x7

    if-eq v13, v0, :cond_c

    const/16 v0, 0x8

    if-eq v13, v0, :cond_b

    :cond_a
    :goto_9
    const/4 v0, 0x1

    goto :goto_a

    :cond_b
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_c
    const/4 v4, 0x0

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    const/16 v0, 0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_e
    const/4 v4, 0x0

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    invoke-static {v11}, Lorg/chromium/media/MediaCodecUtil;->isSoftwareCodec(Landroid/media/MediaCodecInfo;)Z

    move-result v4

    const-string v5, "secure-playback"

    invoke-virtual {v12, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureSupported(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v12, v5}, Landroid/media/MediaCodecInfo$CodecCapabilities;->isFeatureRequired(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    new-instance v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;-><init>(I)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->level:I

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->name:Ljava/lang/String;

    iput-boolean v4, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    iput-boolean v7, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsSecurePlayback:Z

    iput-boolean v5, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->requiresSecurePlayback:Z

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Support: name="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", profile="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", level="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->level:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", min="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", max="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", is_sw="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supports_secure="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsSecurePlayback:Z

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", requires_secure="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v10, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->requiresSecurePlayback:Z

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v1, v0, v12}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_10

    new-instance v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    invoke-direct {v0, v10}, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;-><init>(I)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->level:I

    invoke-virtual {v15}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    invoke-virtual {v15}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->name:Ljava/lang/String;

    iput-boolean v4, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    iput-boolean v7, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsSecurePlayback:Z

    iput-boolean v5, v0, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->requiresSecurePlayback:Z

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_b

    :goto_c
    add-int/lit8 v0, v25, 0x1

    move v10, v0

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    move/from16 v9, v22

    move/from16 v7, v23

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_11
    move-object/from16 v17, v0

    move-object/from16 v18, v4

    move/from16 v19, v5

    move/from16 v23, v7

    const/4 v10, 0x0

    add-int/lit8 v7, v23, 0x1

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v0

    const-string v2, "Unable to retrieve MediaCodecInfo: "

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getSupportedEncoderProfiles()[Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;
    .locals 29
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v1, "VAUtil"

    :try_start_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_ENCODER_TYPES:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_f

    aget-object v8, v5, v7

    array-length v9, v0

    move v10, v2

    :goto_1
    if-ge v10, v9, :cond_e

    aget-object v11, v0, v10

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isAlias()Z

    move-result v12

    if-eqz v12, :cond_0

    :catch_0
    :goto_2
    move-object/from16 v18, v0

    move v15, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v17, v6

    move-object/from16 v26, v8

    move/from16 v21, v9

    move/from16 v16, v10

    goto/16 :goto_c

    :cond_0
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v8}, Lorg/chromium/media/VideoAcceleratorUtil;->requiresHardwareEncoder(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-virtual {v11, v8}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v13, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    invoke-static {v13}, Lorg/chromium/media/VideoAcceleratorUtil;->hasSupportedColorFormat([I)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getEncoderCapabilities()Landroid/media/MediaCodecInfo$EncoderCapabilities;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v14

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/media/MediaCodecInfo$EncoderCapabilities;->isBitrateModeSupported(I)Z

    move-result v13

    invoke-virtual {v12}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v15

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeightsFor(I)Landroid/util/Range;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move-object/from16 v19, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move/from16 v17, v6

    new-instance v6, Ljava/util/ArrayList;

    sget-object v20, Lorg/chromium/media/VideoAcceleratorUtil;->SUPPORTED_RESOLUTIONS:[Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    move/from16 v21, v9

    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v9, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    move-object/from16 v20, v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v9, v3, v2}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getWidthAlignment()I

    move-result v3

    invoke-virtual {v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getHeightAlignment()I

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    move-object/from16 v22, v6

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getWidth()I

    move-result v6

    invoke-static {v6, v3}, Lorg/chromium/media/VideoAcceleratorUtil;->alignUp(II)I

    move-result v6

    move/from16 v23, v3

    invoke-virtual/range {v16 .. v16}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getHeight()I

    move-result v3

    invoke-static {v3, v9}, Lorg/chromium/media/VideoAcceleratorUtil;->alignUp(II)I

    move-result v3

    invoke-virtual {v15, v6, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v6, v22

    move/from16 v3, v23

    goto :goto_3

    :cond_4
    invoke-virtual {v15, v6, v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedFrameRatesFor(II)Landroid/util/Range;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v16

    check-cast v16, Ljava/lang/Double;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    move/from16 v26, v9

    move/from16 v16, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v10, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    invoke-direct {v10, v6, v3}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    invoke-virtual {v2, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v24, v4

    goto :goto_4

    :cond_5
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    move-object/from16 v24, v4

    invoke-virtual {v10}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getWidth()I

    move-result v4

    if-lt v6, v4, :cond_6

    invoke-virtual {v10}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v9, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    invoke-direct {v9, v6, v3}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;-><init>(II)V

    invoke-virtual {v2, v4, v9}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_4
    move/from16 v10, v16

    move-object/from16 v6, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v9, v26

    goto/16 :goto_3

    :cond_7
    move-object/from16 v24, v4

    move/from16 v16, v10

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-static {v8}, Lorg/chromium/media/CodecProfileLevelList;->getCodecFromMime(Ljava/lang/String;)I

    move-result v4

    iget-object v6, v12, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v9, v6

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v9, :cond_8

    aget-object v12, v6, v10

    move-object/from16 v22, v6

    :try_start_2
    iget v6, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v4, v6}, Lorg/chromium/media/CodecProfileLevelList;->mediaCodecProfileToChromiumMediaProfile(II)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v23, v4

    goto :goto_6

    :catch_1
    new-instance v6, Ljava/lang/StringBuilder;

    move/from16 v23, v4

    const-string v4, "Unknown profile: "

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v12, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for codec "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v22

    move/from16 v4, v23

    goto :goto_5

    :cond_8
    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isSoftwareOnly()Z

    move-result v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/chromium/media/VideoAcceleratorUtil;->getNumberOfTemporalLayers(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11}, Landroid/media/MediaCodecInfo;->isHardwareAccelerated()Z

    move-result v10

    if-eqz v10, :cond_9

    move-object/from16 v10, v20

    goto :goto_7

    :cond_9
    move-object/from16 v10, v24

    :goto_7
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    move-object/from16 v23, v2

    invoke-virtual/range {v22 .. v22}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getWidth()I

    move-result v2

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;

    invoke-virtual {v11}, Lorg/chromium/media/VideoAcceleratorUtil$Resolution;->getHeight()I

    move-result v11

    if-eq v11, v2, :cond_a

    invoke-virtual {v15, v11, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->isSizeSupported(II)Z

    move-result v22

    if-eqz v22, :cond_a

    const/16 v22, 0x1

    goto :goto_9

    :cond_a
    const/16 v22, 0x0

    :goto_9
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    move-object/from16 v27, v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v26, v8

    new-instance v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    move-object/from16 v28, v15

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;-><init>(I)V

    iput v3, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    iput v0, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    iput v5, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    iput v2, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    iput v11, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    iput v12, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateNumerator:I

    const/4 v15, 0x1

    iput v15, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateDenominator:I

    iput-boolean v14, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsCbr:Z

    iput-boolean v13, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsVbr:Z

    iput-object v4, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->name:Ljava/lang/String;

    iput-boolean v6, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    iput v9, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxNumberOfTemporalLayers:I

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v22, :cond_b

    new-instance v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;-><init>(I)V

    iput v3, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->profile:I

    iput v5, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minWidth:I

    iput v0, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->minHeight:I

    iput v11, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxWidth:I

    iput v2, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxHeight:I

    iput v12, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateNumerator:I

    const/4 v3, 0x1

    iput v3, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxFramerateDenominator:I

    iput-boolean v14, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsCbr:Z

    iput-boolean v13, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->supportsVbr:Z

    iput-object v4, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->name:Ljava/lang/String;

    iput-boolean v6, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->isSoftwareCodec:Z

    iput v9, v8, Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;->maxNumberOfTemporalLayers:I

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_b
    const/4 v3, 0x1

    const/4 v15, 0x0

    :goto_b
    move-object/from16 v8, v26

    move-object/from16 v3, v27

    move-object/from16 v15, v28

    goto :goto_a

    :cond_c
    move-object/from16 v2, v23

    goto/16 :goto_8

    :cond_d
    move-object/from16 v26, v8

    const/4 v15, 0x0

    :goto_c
    add-int/lit8 v10, v16, 0x1

    move v2, v15

    move/from16 v6, v17

    move-object/from16 v0, v18

    move-object/from16 v5, v19

    move-object/from16 v3, v20

    move/from16 v9, v21

    move-object/from16 v4, v24

    move-object/from16 v8, v26

    goto/16 :goto_1

    :cond_e
    move-object/from16 v18, v0

    move v15, v2

    move-object/from16 v20, v3

    move-object/from16 v24, v4

    move-object/from16 v19, v5

    move/from16 v17, v6

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_f
    move-object v0, v3

    move-object v2, v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/chromium/media/VideoAcceleratorUtil$SupportedProfileAdapter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1

    :catchall_0
    move-exception v0

    const-string v2, "Unable to retrieve MediaCodecInfo: "

    invoke-static {v1, v2, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static hasSupportedColorFormat([I)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    const/16 v4, 0x15

    if-ne v3, v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isLowLatency(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ".low_latency"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static requiresHardwareEncoder(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "video/avc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
