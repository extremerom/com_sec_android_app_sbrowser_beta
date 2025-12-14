.class public Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TerraceImageDownloadCallback;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static sFileExtentionScores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static sMIMETypeScores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;

.field private final mIdealSize:I

.field private mLastImageSrc:Ljava/lang/String;

.field private final mMinimumSize:I

.field private mRequestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 15

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide v5, 0x3fd999999999999aL    # 0.4

    const-wide v7, 0x3fd3333333333333L    # 0.3

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide v11, 0x3fe6666666666666L    # 0.7

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "bmp"

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "gif"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "icon"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "jpeg"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "jpg"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    const-string v13, "png"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    const-string v13, "image/bmp"

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v2, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    const-string v9, "image/gif"

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v2, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    const-string v7, "image/jpeg"

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    const-string v7, "image/png"

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    const-string v3, "image/x-icon"

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v1, p1

    iput v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mMinimumSize:I

    move/from16 v1, p2

    iput v1, v0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mIdealSize:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->clearRequests()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private clearRequests()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mRequestId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mCallback:Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;

    return-void
.end method

.method private getImageAspectRatioScore(II)D
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v0, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method private getImageDominantSizeScore(II)D
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    iget p2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mMinimumSize:I

    if-ge p1, p2, :cond_1

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_1
    iget p0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mIdealSize:I

    if-gt p1, p0, :cond_2

    sub-int/2addr p1, p2

    int-to-double v2, p1

    mul-double/2addr v2, v0

    sub-int/2addr p0, p2

    int-to-double p0, p0

    div-double/2addr v2, p0

    const-wide p0, 0x3fc999999999999aL    # 0.2

    add-double/2addr v2, p0

    return-wide v2

    :cond_2
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double p0, p1

    div-double/2addr v2, p0

    return-wide v2
.end method

.method private getImageScore(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide p0, 0x3fd999999999999aL    # 0.4

    return-wide p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSizes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageSizeScore(Landroid/graphics/Rect;)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageTypeScore(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private getImageSizeScore(Landroid/graphics/Rect;)D
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageDominantSizeScore(II)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageAspectRatioScore(II)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private getImageTypeScore(Ljava/lang/String;Ljava/lang/String;)D
    .locals 1

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sFileExtentionScores:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->sMIMETypeScores:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0

    :cond_2
    const-wide p0, 0x3fe3333333333333L    # 0.6

    return-wide p0
.end method

.method private selectImage(Ljava/util/List;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;)",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageScore(Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;)D

    move-result-wide v4

    cmpl-double v6, v4, v1

    if-lez v6, :cond_1

    move-object v0, v3

    move-wide v1, v4

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public downloadImage(Lcom/sec/terrace/Terrace;Ljava/util/List;Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/Terrace;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;",
            "Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;",
            ")V"
        }
    .end annotation

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mCallback:Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->selectImage(Ljava/util/List;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mLastImageSrc:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mCallback:Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;->onImageDownloaded(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->clearRequests()V

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mLastImageSrc:Ljava/lang/String;

    invoke-static {p3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mLastImageSrc:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x800

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/terrace/Terrace;->downloadImage(Ljava/lang/String;ZIZLcom/sec/terrace/content/browser/TerraceImageDownloadCallback;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mRequestId:I

    :cond_2
    return-void
.end method

.method public getSelectedImageUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->selectImage(Ljava/util/List;)Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/media/TerraceMediaMetadata$TerraceMediaImage;->getSrc()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public onFinishDownloadImage(IILjava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget p2, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mRequestId:I

    if-eq p1, p2, :cond_0

    return-void

    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    const-wide/16 p4, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->getImageSizeScore(Landroid/graphics/Rect;)D

    move-result-wide v1

    cmpg-double v3, p4, v1

    if-gez v3, :cond_1

    move-object p3, v0

    move-wide p4, v1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->mCallback:Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageCallback;->onImageDownloaded(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/ui/MediaImageManager;->clearRequests()V

    return-void
.end method
