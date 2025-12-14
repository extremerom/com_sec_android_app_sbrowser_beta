.class public Lorg/chromium/shape_detection/FaceDetectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/FaceDetection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mMaxFaces:I


# direct methods
.method public constructor <init>(Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lorg/chromium/shape_detection/mojom/FaceDetectorOptions;->maxDetectedFaces:I

    const/16 v0, 0x20

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lorg/chromium/shape_detection/FaceDetectionImpl;->mMaxFaces:I

    return-void
.end method

.method public static synthetic a(Lorg/chromium/shape_detection/FaceDetectionImpl;IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/chromium/shape_detection/FaceDetectionImpl;->lambda$detect$0(IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V

    return-void
.end method

.method private synthetic lambda$detect$0(IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V
    .locals 6

    new-instance v0, Landroid/media/FaceDetector;

    iget v1, p0, Lorg/chromium/shape_detection/FaceDetectionImpl;->mMaxFaces:I

    invoke-direct {v0, p1, p2, v1}, Landroid/media/FaceDetector;-><init>(III)V

    iget p0, p0, Lorg/chromium/shape_detection/FaceDetectionImpl;->mMaxFaces:I

    new-array p0, p0, [Landroid/media/FaceDetector$Face;

    invoke-virtual {v0, p3, p0}, Landroid/media/FaceDetector;->findFaces(Landroid/graphics/Bitmap;[Landroid/media/FaceDetector$Face;)I

    move-result p1

    new-array p2, p1, [Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p1, :cond_0

    new-instance v1, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    invoke-direct {v1}, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;-><init>()V

    aput-object v1, p2, v0

    aget-object v1, p0, v0

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    invoke-virtual {v1, v2}, Landroid/media/FaceDetector$Face;->getMidPoint(Landroid/graphics/PointF;)V

    invoke-virtual {v1}, Landroid/media/FaceDetector$Face;->eyesDistance()F

    move-result v1

    aget-object v3, p2, v0

    new-instance v4, Lorg/chromium/gfx/mojom/RectF;

    invoke-direct {v4}, Lorg/chromium/gfx/mojom/RectF;-><init>()V

    iput-object v4, v3, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    aget-object v3, p2, v0

    iget-object v4, v3, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    iget v5, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v1

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v1

    iput v2, v4, Lorg/chromium/gfx/mojom/RectF;->y:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, v4, Lorg/chromium/gfx/mojom/RectF;->width:F

    iput v1, v4, Lorg/chromium/gfx/mojom/RectF;->height:F

    new-array v1, p3, [Lorg/chromium/shape_detection/mojom/Landmark;

    iput-object v1, v3, Lorg/chromium/shape_detection/mojom/FaceDetectionResult;->landmarks:[Lorg/chromium/shape_detection/mojom/Landmark;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p4, p2}, Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/FaceDetectionResult;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public detect(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V
    .locals 11

    invoke-static {p1}, Lorg/chromium/shape_detection/BitmapUtils;->convertToBitmap(Lorg/chromium/skia/mojom/BitmapN32;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "FaceDetectionImpl"

    const-string p1, "Error converting Mojom Bitmap to Android Bitmap"

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/chromium/shape_detection/mojom/FaceDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/FaceDetectionResult;)V

    return-void

    :cond_0
    iget-object p1, p1, Lorg/chromium/skia/mojom/BitmapN32;->imageInfo:Lorg/chromium/skia/mojom/BitmapN32ImageInfo;

    iget v1, p1, Lorg/chromium/skia/mojom/BitmapN32ImageInfo;->width:I

    rem-int/lit8 v2, v1, 0x2

    add-int/2addr v2, v1

    iget p1, p1, Lorg/chromium/skia/mojom/BitmapN32ImageInfo;->height:I

    if-eq v2, v1, :cond_1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    mul-int v0, v2, p1

    new-array v0, v0, [I

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v4, v0

    move v6, v2

    move v9, v2

    move v10, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    new-instance v0, Lorg/chromium/shape_detection/a;

    move-object v3, v0

    move-object v4, p0

    move v5, v2

    move v6, p1

    move-object v8, p2

    invoke-direct/range {v3 .. v8}, Lorg/chromium/shape_detection/a;-><init>(Lorg/chromium/shape_detection/FaceDetectionImpl;IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V

    const/4 p0, 0x1

    invoke-static {p0, v0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/shape_detection/FaceDetectionImpl;->close()V

    return-void
.end method
