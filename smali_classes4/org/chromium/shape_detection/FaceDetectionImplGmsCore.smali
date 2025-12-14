.class public Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/FaceDetection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mFaceDetector:LV5/b;

.field private final mFastMode:Z

.field private final mMaxFaces:I


# direct methods
.method public constructor <init>(Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;->maxDetectedFaces:I

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mMaxFaces:I

    iget-boolean p1, p1, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;->fastMode:Z

    iput-boolean p1, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFastMode:Z

    xor-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-nez p1, :cond_1

    if-eq v2, v4, :cond_1

    if-ne v2, v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x19

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Invalid mode: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected exception "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "FaceDetectionImpl"

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v3

    move v1, p1

    move v2, v1

    goto :goto_2

    :cond_1
    :goto_0
    if-ne v1, v4, :cond_2

    move p1, v4

    goto :goto_1

    :cond_2
    move p1, v3

    :goto_1
    move v1, v4

    :goto_2
    new-instance v6, Lcom/google/android/gms/vision/face/internal/client/zzf;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v2, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->a:I

    iput v1, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->b:I

    iput v3, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->c:I

    iput-boolean p1, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->d:Z

    iput-boolean v4, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->e:Z

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->f:F

    const-string p1, "FaceDetector"

    if-eq v2, v5, :cond_3

    if-ne v1, v5, :cond_3

    const-string v1, "Contour is not supported for non-SELFIE mode."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v4

    :goto_3
    iget v2, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->b:I

    if-ne v2, v5, :cond_4

    iget v2, v6, Lcom/google/android/gms/vision/face/internal/client/zzf;->c:I

    if-ne v2, v4, :cond_4

    const-string v1, "Classification is not supported with contour."

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    move v3, v1

    :goto_4
    if-eqz v3, :cond_5

    new-instance p1, LW5/a;

    invoke-direct {p1, v0, v6}, LW5/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/face/internal/client/zzf;)V

    new-instance v0, LV5/b;

    invoke-direct {v0, p1}, LV5/b;-><init>(LW5/a;)V

    iput-object v0, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFaceDetector:LV5/b;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid build options"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFaceDetector:LV5/b;

    invoke-virtual {p0}, LV5/b;->d()V

    return-void
.end method

.method public detect(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V
    .locals 13

    iget-object v0, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFaceDetector:LV5/b;

    iget-object v0, v0, LV5/b;->d:LW5/a;

    invoke-virtual {v0}, LW5/a;->d()Z

    move-result v0

    const-string v1, "FaceDetectionImpl"

    if-nez v0, :cond_0

    const-string v0, "FaceDetector is not operational"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;

    invoke-direct {v0}, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;-><init>()V

    iget-boolean v1, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFastMode:Z

    iput-boolean v1, v0, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;->fastMode:Z

    iget p0, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mMaxFaces:I

    iput p0, v0, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;->maxDetectedFaces:I

    new-instance p0, Lorg/chromium/shape_detection/FaceDetectionImpl;

    invoke-direct {p0, v0}, Lorg/chromium/shape_detection/FaceDetectionImpl;-><init>(Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V

    invoke-virtual {p0, p1, p2}, Lorg/chromium/shape_detection/FaceDetectionImpl;->detect(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/shape_detection/BitmapUtils;->convertToFrame(Lorg/chromium/skia/mojom/BitmapN32;)LS5/d;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    const-string p0, "Error converting Mojom Bitmap to Frame"

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v0, [Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/FaceDetectionResult;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->mFaceDetector:LV5/b;

    invoke-virtual {p0, p1}, LV5/b;->a(LS5/d;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    new-instance v2, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    invoke-direct {v2}, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;-><init>()V

    aput-object v2, p1, v1

    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LV5/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, v2, LV5/a;->b:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    iget v6, v2, LV5/a;->c:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v6, v7

    sub-float/2addr v5, v8

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget v8, v2, LV5/a;->d:F

    div-float v7, v8, v7

    sub-float/2addr v4, v7

    invoke-direct {v3, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aget-object v4, p1, v1

    new-instance v5, Lorg/chromium/gfx/mojom/RectF;

    invoke-direct {v5}, Lorg/chromium/gfx/mojom/RectF;-><init>()V

    iput-object v5, v4, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    aget-object v4, p1, v1

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v4, Lorg/chromium/gfx/mojom/RectF;->y:F

    iput v6, v4, Lorg/chromium/gfx/mojom/RectF;->width:F

    iput v8, v4, Lorg/chromium/gfx/mojom/RectF;->height:F

    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, LV5/a;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LV5/c;

    iget v6, v5, LV5/c;->b:I

    const/16 v7, 0xa

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_2

    if-eqz v6, :cond_2

    const/4 v9, 0x6

    if-eq v6, v9, :cond_2

    goto :goto_3

    :cond_2
    new-instance v9, Lorg/chromium/shape_detection/mojom/Landmark;

    invoke-direct {v9}, Lorg/chromium/shape_detection/mojom/Landmark;-><init>()V

    const/4 v10, 0x1

    new-array v11, v10, [Lorg/chromium/gfx/mojom/PointF;

    iput-object v11, v9, Lorg/chromium/shape_detection/mojom/Landmark;->locations:[Lorg/chromium/gfx/mojom/PointF;

    new-instance v12, Lorg/chromium/gfx/mojom/PointF;

    invoke-direct {v12}, Lorg/chromium/gfx/mojom/PointF;-><init>()V

    aput-object v12, v11, v0

    iget-object v11, v9, Lorg/chromium/shape_detection/mojom/Landmark;->locations:[Lorg/chromium/gfx/mojom/PointF;

    aget-object v11, v11, v0

    iget-object v5, v5, LV5/c;->a:Landroid/graphics/PointF;

    iget v12, v5, Landroid/graphics/PointF;->x:F

    iput v12, v11, Lorg/chromium/gfx/mojom/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, v11, Lorg/chromium/gfx/mojom/PointF;->y:F

    if-ne v6, v8, :cond_3

    iput v10, v9, Lorg/chromium/shape_detection/mojom/Landmark;->type:I

    goto :goto_2

    :cond_3
    if-ne v6, v7, :cond_4

    iput v10, v9, Lorg/chromium/shape_detection/mojom/Landmark;->type:I

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    iput v0, v9, Lorg/chromium/shape_detection/mojom/Landmark;->type:I

    goto :goto_2

    :cond_5
    const/4 v5, 0x2

    iput v5, v9, Lorg/chromium/shape_detection/mojom/Landmark;->type:I

    :goto_2
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    aget-object v2, p1, v1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/chromium/shape_detection/mojom/Landmark;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/chromium/shape_detection/mojom/Landmark;

    iput-object v3, v2, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->landmarks:[Lorg/chromium/shape_detection/mojom/Landmark;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface {p2, p1}, Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/FaceDetectionResult;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/shape_detection/FaceDetectionImplGmsCore;->close()V

    return-void
.end method
