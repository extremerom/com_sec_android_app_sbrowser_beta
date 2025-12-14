.class public Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "UNF_Image_Clipper_Interface"

.field public static UNF_ERR_DE_INIT_FAILED:I = 0x2

.field public static UNF_ERR_INIT_CONFIG_FAILED:I = 0x1

.field public static UNF_ERR_NONE:I = 0x0

.field public static UNF_ERR_NO_OUTPUT:I = 0x3


# instance fields
.field segmenter:Lsrib/vizinsight/dvs/DVS;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Is_Support_Unified_Image_Clipper()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE"

    invoke-virtual {v0, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sec config mode data :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    goto :goto_0

    :cond_0
    const-string v1, ""

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    const-string v3, "unifiedclipper"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isModeSupported:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " modelType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    return v1
.end method


# virtual methods
.method public Unified_Image_Clipper_DeInit()I
    .locals 2

    iget-object p0, p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual {p0}, Lsrib/vizinsight/dvs/DVS;->DVSDeInit()Z

    move-result p0

    invoke-static {}, Lsrib/vizinsight/dvs/DVSegmenter;->releaseUnifiedSegmenter()V

    sget-object v0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    const-string v1, "De-init called:"

    invoke-static {v1, v0, p0}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->UNF_ERR_DE_INIT_FAILED:I

    :goto_0
    return p0
.end method

.method public Unified_Image_Clipper_Execute(Landroid/graphics/Bitmap;Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;)I
    .locals 11

    sget-object v0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unified_Image_Clipper_Execute called: inputBitmap W="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " H="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lsrib/vizinsight/dvs/Utils;->getDownSizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Time for downsizing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v3, v1

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual {p0, p1}, Lsrib/vizinsight/dvs/DVS;->segmentInfoJNI(Landroid/graphics/Bitmap;)Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;

    move-result-object p0

    iget-object p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->solutionInfo:Ljava/lang/String;

    iput-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->solutionInfo:Ljava/lang/String;

    iget p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->errorCode:I

    iput p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->errorCode:I

    iget-object p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    iput-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    iget-object p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    iput-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    iget p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSalientNum:I

    iput p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSalientNum:I

    iget-object p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iput-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget-object p1, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iput-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSingleBitmap Width:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Height:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lsrib/vizinsight/dvs/Utils;->getScaleFactor()I

    move-result p1

    int-to-double v3, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-int p1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Utils.getScaleFactor():"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lsrib/vizinsight/dvs/Utils;->getScaleFactor()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actualScaleFactor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lsrib/vizinsight/dvs/Utils;->getScaleFactor()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v3, p1

    iget-object v4, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v4, p1

    const-string v5, "SingleRect scaled newWidth :"

    const-string v6, "scaled newHeight:"

    invoke-static {v3, v4, v5, v6, v0}, Lt/b;->w(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget-object v6, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget v7, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    int-to-float v8, p1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    iget v7, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    iget v7, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    iget v6, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    mul-float/2addr v6, v8

    float-to-int v6, v6

    int-to-float v6, v6

    iput v6, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " clipped_result.mSingleRect values   mSingleRect.x1:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget v6, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  mSingleRect.y1:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget v6, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  mSingleRect.x2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget v6, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, "  mSingleRect.y2:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleRect:Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    iget v6, v6, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    invoke-static {v5, v3, v4, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSingleBitmap:Landroid/graphics/Bitmap;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Utils newWidth:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " newHeight:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Utils mObjectsBitmap.length:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    array-length v5, v5

    invoke-static {v4, v5, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    array-length v0, v0

    if-le v0, v6, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    array-length v5, v4

    if-ge v0, v5, :cond_0

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/2addr v4, p1

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v5, p1

    iget-object v7, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v7, v7, v0

    iget-object v9, p0, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v9, v9, v0

    iget v10, v9, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    mul-float/2addr v10, v8

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v7, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    iget v10, v9, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    mul-float/2addr v10, v8

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v7, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    iget v10, v9, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    mul-float/2addr v10, v8

    float-to-int v10, v10

    int-to-float v10, v10

    iput v10, v7, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    iget v9, v9, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    mul-float/2addr v9, v8

    float-to-int v9, v9

    int-to-float v9, v9

    iput v9, v7, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    iget-object v7, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsBitmap:[Landroid/graphics/Bitmap;

    aget-object v9, v7, v0

    invoke-static {v9, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    aput-object v9, v7, v0

    sget-object v7, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    const-string v9, "ObjectsRect newWidth: "

    const-string v10, " object->"

    invoke-static {v4, v5, v9, v3, v10}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clipped_result.mObjectsRect[i] values   mObjectsRect[i].x1:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v5, v5, v0

    iget v5, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "  mObjectsRect[i].y1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v5, v5, v0

    iget v5, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y1:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "  mObjectsRect[i].x2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v5, v5, v0

    iget v5, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->x2:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "  mObjectsRect[i].y2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mObjectsRect:[Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;

    aget-object v5, v5, v0

    iget v5, v5, Lsrib/vizinsight/dvs/UNF_Object_RoI_Info;->y2:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sget-object v0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Time for upsizing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr p0, v1

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "errorCode:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->errorCode:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " solutionInfo:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->solutionInfo:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " mSalientNum:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->mSalientNum:I

    invoke-static {p0, p1, v0}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget p0, p2, Lsrib/vizinsight/dvs/UNF_Object_Segment_Info;->errorCode:I

    return p0
.end method

.method public Unified_Image_Clipper_Get_Version()Ljava/lang/String;
    .locals 1

    sget-object p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    const-string v0, "Unified_Image_Clipper_Get_Version :VideoClipperInterface_v2.0_Beta12.11"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "VideoClipperInterface_v2.0_Beta12.11"

    return-object p0
.end method

.method public Unified_Image_Clipper_Init()I
    .locals 5

    new-instance v0, Lsrib/vizinsight/dvs/DVSConfig;

    invoke-direct {v0}, Lsrib/vizinsight/dvs/DVSConfig;-><init>()V

    new-instance v1, Lsrib/vizinsight/dvs/DVS;

    invoke-direct {v1}, Lsrib/vizinsight/dvs/DVS;-><init>()V

    iput-object v1, p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->segmenter:Lsrib/vizinsight/dvs/DVS;

    invoke-virtual {v1, v0}, Lsrib/vizinsight/dvs/DVS;->DVSCheckConfig(Lsrib/vizinsight/dvs/DVSConfig;)Z

    move-result v1

    sget-object v2, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unified_Image_Clipper_Init :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lsrib/vizinsight/dvs/DVSegmenter;->getSegmenter(Lsrib/vizinsight/dvs/DVSConfig;)Lsrib/vizinsight/dvs/DVS;

    move-result-object v0

    iput-object v0, p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->segmenter:Lsrib/vizinsight/dvs/DVS;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget p0, Lsrib/vizinsight/dvs/UNF_Image_Clipper_Interface;->UNF_ERR_INIT_CONFIG_FAILED:I

    :goto_0
    return p0
.end method
