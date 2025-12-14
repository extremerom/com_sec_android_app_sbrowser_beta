.class public final Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0000\u0018\u0000 &2\u00020\u0001:\u0001&B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\r\u0010\u0017\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0017\u0010\u0003R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010$\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008$\u0010\u001c\u001a\u0004\u0008$\u0010\u0006\"\u0004\u0008%\u0010\u000e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;",
        "",
        "<init>",
        "()V",
        "",
        "supportVideoClipper",
        "()Z",
        "Lsrib/vizinsight/dvs/DVS;",
        "segment",
        "isDetectedBoxes",
        "(Lsrib/vizinsight/dvs/DVS;)Z",
        "isAnimated",
        "Ldb/r;",
        "updateAnimatedBitmapInfo",
        "(Z)V",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "",
        "x",
        "y",
        "updateClippedImageInformation",
        "(Landroid/graphics/Bitmap;FF)V",
        "abort",
        "finish",
        "Lsrib/vizinsight/dvs/DVSConfig;",
        "dvsConfig",
        "Lsrib/vizinsight/dvs/DVSConfig;",
        "isAnimatedBitmap",
        "Z",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;",
        "videoData",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;",
        "getVideoData",
        "()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;",
        "setVideoData",
        "(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;)V",
        "isSupportedPoint",
        "setSupportedPoint",
        "Companion",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final NOT_SUPPORTED_MODEL:Ljava/lang/String; = ""
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final SELECT_ALL_POSITION:I = -0x1

.field public static final TAG:Ljava/lang/String; = "VideoClipper"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final dvsConfig:Lsrib/vizinsight/dvs/DVSConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAnimatedBitmap:Z

.field private isSupportedPoint:Z

.field private videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->Companion:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsrib/vizinsight/dvs/DVSConfig;

    invoke-direct {v0}, Lsrib/vizinsight/dvs/DVSConfig;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->dvsConfig:Lsrib/vizinsight/dvs/DVSConfig;

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVSConfig;->getDetectThreshold()I

    move-result p0

    invoke-virtual {v0, p0}, Lsrib/vizinsight/dvs/DVSConfig;->setDetectThreshold(I)V

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVSConfig;->getQualityThreshold()I

    move-result p0

    invoke-virtual {v0, p0}, Lsrib/vizinsight/dvs/DVSConfig;->setQualityThreshold(I)V

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVSConfig;->getSegmentThreshold()I

    move-result p0

    invoke-virtual {v0, p0}, Lsrib/vizinsight/dvs/DVSConfig;->setSegmentThreshold(I)V

    invoke-virtual {v0}, Lsrib/vizinsight/dvs/DVSConfig;->getMaxPass()I

    move-result p0

    invoke-virtual {v0, p0}, Lsrib/vizinsight/dvs/DVSConfig;->setMaxPass(I)V

    return-void
.end method

.method private final isDetectedBoxes(Lsrib/vizinsight/dvs/DVS;)Z
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getPoint()Landroid/graphics/PointF;

    move-result-object p0

    if-eqz p0, :cond_0

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iget v1, p0, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    const-string v3, "isDetectedBoxes : ["

    const-string v4, " , "

    const-string v5, "]"

    invoke-static {v0, v1, v3, v4, v5}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoClipper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/graphics/PointF;->x:F

    float-to-int v3, v0

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int v4, p0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lsrib/vizinsight/dvs/DVS;->DVSDetectCheck(Landroid/graphics/Bitmap;IIII)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final supportVideoClipper()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isAnimatedBitmap:Z

    const/4 v1, 0x0

    const-string v2, "VideoClipper"

    if-nez v0, :cond_0

    const-string p0, "this bitmap is not animated bitmap."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->getSUPPORT_VIDEO_CLIPPER()Z

    move-result v3

    if-nez v3, :cond_1

    const-string p0, "videoClipper not support native AI feature"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/common/Rune;->getSUPPORT_DETECT_VIDEO_CLIPPER()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "videoClipper Model is not supported"

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    new-instance v0, Lsrib/vizinsight/dvs/DVS;

    invoke-direct {v0}, Lsrib/vizinsight/dvs/DVS;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->dvsConfig:Lsrib/vizinsight/dvs/DVSConfig;

    invoke-virtual {v0, v3}, Lsrib/vizinsight/dvs/DVS;->DVSCheckConfig(Lsrib/vizinsight/dvs/DVSConfig;)Z

    move-result v0

    const-string v3, "supportVideoClipper : "

    invoke-static {v3, v2, v0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->dvsConfig:Lsrib/vizinsight/dvs/DVSConfig;

    invoke-static {v0}, Lsrib/vizinsight/dvs/DVSegmenter;->getSegmenter(Lsrib/vizinsight/dvs/DVSConfig;)Lsrib/vizinsight/dvs/DVS;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isDetectedBoxes(Lsrib/vizinsight/dvs/DVS;)Z

    move-result v1

    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->releaseSegmenter()V

    :cond_3
    const-string p0, "shouldContainRectArea : "

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method


# virtual methods
.method public final abort()V
    .locals 0

    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->abortSegmenter()V

    return-void
.end method

.method public final finish()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isAnimatedBitmap:Z

    return-void
.end method

.method public final getVideoData()Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    return-object p0
.end method

.method public final isSupportedPoint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isSupportedPoint:Z

    return p0
.end method

.method public final setSupportedPoint(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isSupportedPoint:Z

    return-void
.end method

.method public final setVideoData(Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    return-void
.end method

.method public final updateAnimatedBitmapInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isAnimatedBitmap:Z

    return-void
.end method

.method public final updateClippedImageInformation(Landroid/graphics/Bitmap;FF)V
    .locals 2
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->videoData:Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoData;

    invoke-direct {p0}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->supportVideoClipper()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/video/VideoClipper;->isSupportedPoint:Z

    return-void
.end method
