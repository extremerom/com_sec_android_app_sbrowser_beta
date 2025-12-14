.class public Lsrib/vizinsight/dvs/DVS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isPamir:Ljava/lang/Boolean;

.field private segmentAsyncTask:Lsrib/vizinsight/dvs/SegmentAsyncTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "/system/lib64/libdvs.camera.samsung.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DVS"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVS;->isPamir:Ljava/lang/Boolean;

    return-void
.end method

.method private native checkLinkJni()Z
.end method

.method private native deInitJni()Z
.end method

.method private native detectCheckJni(Landroid/graphics/Bitmap;II)Z
.end method

.method private native detectJni(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsrib/vizinsight/dvs/BoxInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native detectSegmentJni(Landroid/graphics/Bitmap;II[I[I)[B
.end method

.method private native detectSegmentJni(Landroid/graphics/Bitmap;II[I[II)[B
.end method

.method private native generateGIFJni(Ljava/lang/String;I)Z
.end method

.method private native getSegmentInfoJni(Landroid/graphics/Bitmap;)Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;
.end method

.method private native initJni(Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method private native initJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z
.end method

.method private native resetFrameCounterJni(Z)Z
.end method

.method private native segmentJni(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Z
.end method

.method private native setMaxGIFResolutionJni(I)Z
.end method

.method private native setThresholdsJni(IIII)Z
.end method


# virtual methods
.method public DVSAPKGetSegment(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lsrib/vizinsight/dvs/DVS;->segmentJni(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public DVSAbort()V
    .locals 1

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVS;->segmentAsyncTask:Lsrib/vizinsight/dvs/SegmentAsyncTask;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const-string p0, "DVS"

    const-string v0, "DVSAbort: Task cancelled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public DVSCheckConfig(Lsrib/vizinsight/dvs/DVSConfig;)Z
    .locals 4

    const-string v0, "DVS"

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lsrib/vizinsight/dvs/DVS;->checkLinkJni()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DVSCheckConfig UnsatisfiedLinkError, Failed to link library at /system/lib64/libdvs.camera.samsung.so"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "DVSCheckConfig OD model not readable at: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    invoke-static {p0, v2, v0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->isReadable(Ljava/nio/file/Path;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "DVSCheckConfig Segmenter model not readable at: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, p0

    :goto_1
    return v1
.end method

.method public DVSDeInit()Z
    .locals 0

    invoke-direct {p0}, Lsrib/vizinsight/dvs/DVS;->deInitJni()Z

    move-result p0

    return p0
.end method

.method public DVSDetect(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/ArrayList<",
            "Lsrib/vizinsight/dvs/BoxInfo;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lsrib/vizinsight/dvs/DVS;->detectJni(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public DVSDetectCheck(Landroid/graphics/Bitmap;IIII)Z
    .locals 1

    int-to-float v0, p2

    int-to-float p4, p4

    div-float/2addr v0, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr v0, p4

    float-to-int p4, v0

    int-to-float v0, p3

    int-to-float p5, p5

    div-float/2addr v0, p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr v0, p5

    float-to-int p5, v0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    move p4, v0

    move p5, p4

    :cond_0
    invoke-direct {p0, p1, p4, p5}, Lsrib/vizinsight/dvs/DVS;->detectCheckJni(Landroid/graphics/Bitmap;II)Z

    move-result p0

    return p0
.end method

.method public DVSDetectSegment(Landroid/graphics/Bitmap;IIII[II)[B
    .locals 14

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-float v4, v0

    move/from16 v5, p4

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v5, v1

    move/from16 v6, p5

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    if-ne v1, v6, :cond_0

    move v9, v6

    move v10, v9

    goto :goto_0

    :cond_0
    move v9, v4

    move v10, v5

    :goto_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    move-object v7, p0

    move-object v8, p1

    move-object v11, v0

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-direct/range {v7 .. v13}, Lsrib/vizinsight/dvs/DVS;->detectSegmentJni(Landroid/graphics/Bitmap;II[I[II)[B

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DVSDetectSegment Length of byte array = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", H, W = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget v0, v0, v5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mode:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DVS"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "DVSDetectSegment time : "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public DVSDetectSegment(Landroid/graphics/Bitmap;IIII[I)[I
    .locals 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    int-to-float v2, p2

    int-to-float p4, p4

    div-float/2addr v2, p4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr v2, p4

    float-to-int p4, v2

    int-to-float v2, p3

    int-to-float p5, p5

    div-float/2addr v2, p5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p5

    int-to-float p5, p5

    mul-float/2addr v2, p5

    float-to-int p5, v2

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    if-ne p3, v2, :cond_0

    move v5, v2

    move v6, v5

    goto :goto_0

    :cond_0
    move v5, p4

    move v6, p5

    :goto_0
    const/4 p2, 0x2

    new-array p2, p2, [I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    mul-int/2addr p4, p3

    new-array p3, p4, [I

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p6

    invoke-direct/range {v3 .. v8}, Lsrib/vizinsight/dvs/DVS;->detectSegmentJni(Landroid/graphics/Bitmap;II[I[I)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p5, "DVSDetectSegment Length of byte array = "

    invoke-direct {p1, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p5, p0

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", H, W = "

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p5, 0x1

    aget p6, p2, p5

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p6, ", "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p6, 0x0

    aget v3, p2, p6

    const-string v4, "DVS"

    invoke-static {p1, v3, v4}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    array-length p1, p0

    if-eqz p1, :cond_3

    aget p1, p2, p6

    if-eq p1, v2, :cond_3

    aget p1, p2, p5

    if-ne p1, v2, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    if-ge p6, p4, :cond_2

    aget-byte p1, p0, p6

    aput p1, p3, p6

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "DVSDetectSegment time : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3

    :cond_3
    :goto_2
    const-string p0, "DVSDetectSegment No segmentation mask for touch point"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p3
.end method

.method public DVSGenerateGIF(Landroid/content/Context;Landroid/net/Uri;IIILsrib/vizinsight/dvs/SegmentResultFileCreared;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DVSGenerateGIF URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " touchX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " touchY :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentFrameIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DVS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lsrib/vizinsight/dvs/SegmentAsyncTask;

    new-instance v8, Lsrib/vizinsight/dvs/DVSGIFConfig;

    const/4 v2, -0x1

    const/16 v3, 0xf

    move-object v1, v8

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lsrib/vizinsight/dvs/DVSGIFConfig;-><init>(IIIIILandroid/net/Uri;)V

    iget-object p2, p0, Lsrib/vizinsight/dvs/DVS;->isPamir:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v8, p2, p6}, Lsrib/vizinsight/dvs/SegmentAsyncTask;-><init>(Landroid/content/Context;Lsrib/vizinsight/dvs/DVSGIFConfig;Ljava/lang/Boolean;Lsrib/vizinsight/dvs/SegmentResultFileCreared;)V

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVS;->segmentAsyncTask:Lsrib/vizinsight/dvs/SegmentAsyncTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public DVSGenerateGIF(Landroid/content/Context;Lsrib/vizinsight/dvs/DVSGIFConfig;Lsrib/vizinsight/dvs/SegmentResultFileCreared;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DVSGenerateGIF URL : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " touchX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " touchY :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getTouchY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentFrameIndex : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lsrib/vizinsight/dvs/DVSGIFConfig;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DVS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lsrib/vizinsight/dvs/SegmentAsyncTask;

    iget-object v1, p0, Lsrib/vizinsight/dvs/DVS;->isPamir:Ljava/lang/Boolean;

    invoke-direct {v0, p1, p2, v1, p3}, Lsrib/vizinsight/dvs/SegmentAsyncTask;-><init>(Landroid/content/Context;Lsrib/vizinsight/dvs/DVSGIFConfig;Ljava/lang/Boolean;Lsrib/vizinsight/dvs/SegmentResultFileCreared;)V

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVS;->segmentAsyncTask:Lsrib/vizinsight/dvs/SegmentAsyncTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public DVSGetSegment(Landroid/graphics/Bitmap;IIZ)Z
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lsrib/vizinsight/dvs/DVS;->segmentJni(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IIZ)Z

    move-result p0

    return p0
.end method

.method public DVSInit(Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "segmentationModelPath : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detectionModelPath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DVS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p6}, Lsrib/vizinsight/dvs/DVS;->initJni(Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result p0

    return p0
.end method

.method public DVSInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z
    .locals 3

    const-string v0, "segmentationModelPath : "

    const-string v1, " detectionModelPath : "

    const-string v2, " refinerModelPath : "

    invoke-static {v0, p1, v1, p2, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DVS"

    invoke-static {v0, p3, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p7}, Lsrib/vizinsight/dvs/DVS;->initJni(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)Z

    move-result p0

    return p0
.end method

.method public DVSQuramGenerateGIF(Ljava/lang/String;I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lsrib/vizinsight/dvs/DVS;->generateGIFJni(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public DVSSetMaxResolution(I)V
    .locals 0

    invoke-direct {p0, p1}, Lsrib/vizinsight/dvs/DVS;->setMaxGIFResolutionJni(I)Z

    return-void
.end method

.method public DVSSetThresholds(IIII)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lsrib/vizinsight/dvs/DVS;->setThresholdsJni(IIII)Z

    move-result p0

    return p0
.end method

.method public DVSTaskStatus()Z
    .locals 2

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVS;->segmentAsyncTask:Lsrib/vizinsight/dvs/SegmentAsyncTask;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object p0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public release()V
    .locals 0

    invoke-direct {p0}, Lsrib/vizinsight/dvs/DVS;->deInitJni()Z

    return-void
.end method

.method public reset_frame_counter()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsrib/vizinsight/dvs/DVS;->resetFrameCounterJni(Z)Z

    move-result p0

    return p0
.end method

.method public reset_frame_counter(Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lsrib/vizinsight/dvs/DVS;->resetFrameCounterJni(Z)Z

    move-result p0

    return p0
.end method

.method public segmentInfoJNI(Landroid/graphics/Bitmap;)Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;
    .locals 0

    invoke-direct {p0, p1}, Lsrib/vizinsight/dvs/DVS;->getSegmentInfoJni(Landroid/graphics/Bitmap;)Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;

    move-result-object p0

    return-object p0
.end method
