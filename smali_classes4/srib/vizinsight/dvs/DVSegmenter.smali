.class public Lsrib/vizinsight/dvs/DVSegmenter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "DVSegmenter"

.field public static cancellationFinished:Ljava/util/concurrent/CountDownLatch; = null

.field public static needTOchangeModel:Z = false

.field private static segmenter:Lsrib/vizinsight/dvs/DVS; = null

.field protected static final versionString:Ljava/lang/String; = "VideoClipperInterface_v2.0_Beta12.11"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static abortSegmenter()V
    .locals 2

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVS;->DVSTaskStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Cancelling task."

    const-string v1, "DVSegmenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVS;->DVSAbort()V

    :try_start_0
    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->cancellationFinished:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "Done cancelling task."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->releaseSegmenter()V

    :cond_1
    return-void
.end method

.method private static getConfigMode()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "DVSegmenter"

    const-string v2, ""

    if-nez v0, :cond_0

    const-string v0, "SemFloatingFeature null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v3, "SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Model type from floating feature SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v2, v0, v1

    :cond_1
    return-object v2
.end method

.method public static getSegmenter(Lsrib/vizinsight/dvs/DVSConfig;)Lsrib/vizinsight/dvs/DVS;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-nez v1, :cond_2

    const-string v1, "Need to change the Model"

    const-string v2, "DVSegmenter"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lsrib/vizinsight/dvs/DVS;

    invoke-direct {v1}, Lsrib/vizinsight/dvs/DVS;-><init>()V

    sput-object v1, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "odModelPath : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "segmenterModelPath : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "refinerModelPath : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "detectThreshold : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->detectThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " qualityThreshold : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->qualityThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " segmentThreshold : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->segmentThreshold:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "maxPass : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lsrib/vizinsight/dvs/DVSConfig;->maxPass:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Initialize Video Clipper Interface version : VideoClipperInterface_v2.0_Beta12.11"

    const-string v2, "DVS"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->getConfigMode()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "configMode : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "unifiedclipper"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v2, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getSegmenterModelPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getOdModelPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getRefinerModelPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getDetectThreshold()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getQualityThreshold()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getSegmentThreshold()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getMaxPass()I

    move-result v9

    invoke-virtual/range {v2 .. v9}, Lsrib/vizinsight/dvs/DVS;->DVSInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    goto :goto_0

    :cond_0
    sget-object v10, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getSegmenterModelPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getOdModelPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getDetectThreshold()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getQualityThreshold()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getSegmentThreshold()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lsrib/vizinsight/dvs/DVSConfig;->getMaxPass()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lsrib/vizinsight/dvs/DVS;->DVSInit(Ljava/lang/String;Ljava/lang/String;IIII)Z

    :goto_0
    iget-object v0, v0, Lsrib/vizinsight/dvs/DVSConfig;->isPamir:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lsrib/vizinsight/dvs/DVS;->isPamir:Ljava/lang/Boolean;

    :cond_1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->cancellationFinished:Ljava/util/concurrent/CountDownLatch;

    :cond_2
    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    return-object v0
.end method

.method public static getSegmenterState()Z
    .locals 3

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "getSegmenterState - "

    const-string v2, "DVSegmenter"

    invoke-static {v1, v2, v0}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static releaseSegmenter()V
    .locals 1

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVS;->release()V

    const/4 v0, 0x0

    sput-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    :cond_0
    return-void
.end method

.method public static releaseUnifiedSegmenter()V
    .locals 1

    sget-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lsrib/vizinsight/dvs/DVSegmenter;->segmenter:Lsrib/vizinsight/dvs/DVS;

    :cond_0
    return-void
.end method
