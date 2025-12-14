.class public Lorg/chromium/shape_detection/TextDetectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/TextDetection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mTextRecognizer:LX5/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/vision/zzam;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/vision/zzam;-><init>(Ljava/lang/String;)V

    new-instance v2, LW5/a;

    invoke-direct {v2, v0, v1}, LW5/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzam;)V

    new-instance v0, LX5/b;

    invoke-direct {v0, v2}, LX5/b;-><init>(LW5/a;)V

    iput-object v0, p0, Lorg/chromium/shape_detection/TextDetectionImpl;->mTextRecognizer:LX5/b;

    return-void
.end method

.method public static create()Lorg/chromium/shape_detection/mojom/TextDetection;
    .locals 2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/gms/ChromiumPlayServicesAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TextDetectionImpl"

    const-string v1, "Google Play Services not available"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lorg/chromium/shape_detection/TextDetectionImpl;

    invoke-direct {v0}, Lorg/chromium/shape_detection/TextDetectionImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/shape_detection/TextDetectionImpl;->mTextRecognizer:LX5/b;

    invoke-virtual {p0}, LX5/b;->d()V

    return-void
.end method

.method public detect(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/shape_detection/mojom/TextDetection$Detect_Response;)V
    .locals 12

    iget-object v0, p0, Lorg/chromium/shape_detection/TextDetectionImpl;->mTextRecognizer:LX5/b;

    iget-object v0, v0, LX5/b;->c:LW5/a;

    invoke-virtual {v0}, LW5/a;->d()Z

    move-result v0

    const-string v1, "TextDetectionImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "TextDetector is not operational"

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Lorg/chromium/shape_detection/mojom/TextDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/TextDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/TextDetectionResult;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/shape_detection/BitmapUtils;->convertToFrame(Lorg/chromium/skia/mojom/BitmapN32;)LS5/d;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Error converting Mojom Bitmap to Frame"

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Lorg/chromium/shape_detection/mojom/TextDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/TextDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/TextDetectionResult;)V

    return-void

    :cond_1
    iget-object p0, p0, Lorg/chromium/shape_detection/TextDetectionImpl;->mTextRecognizer:LX5/b;

    invoke-virtual {p0, p1}, LX5/b;->a(LS5/d;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p1

    new-array p1, p1, [Lorg/chromium/shape_detection/mojom/TextDetectionResult;

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    new-instance v1, Lorg/chromium/shape_detection/mojom/TextDetectionResult;

    invoke-direct {v1}, Lorg/chromium/shape_detection/mojom/TextDetectionResult;-><init>()V

    aput-object v1, p1, v0

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX5/a;

    aget-object v3, p1, v0

    iget-object v4, v1, LX5/a;->a:[Lcom/google/android/gms/internal/vision/zzah;

    array-length v5, v4

    if-nez v5, :cond_2

    const-string v4, ""

    goto :goto_2

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    aget-object v6, v4, v2

    iget-object v6, v6, Lcom/google/android/gms/internal/vision/zzah;->e:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_3

    const-string v7, "\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v4, v6

    iget-object v7, v7, Lcom/google/android/gms/internal/vision/zzah;->e:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v3, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->rawValue:Ljava/lang/String;

    iget-object v3, v1, LX5/a;->c:Landroid/graphics/Rect;

    if-nez v3, :cond_5

    invoke-virtual {v1}, LX5/a;->a()[Landroid/graphics/Point;

    move-result-object v3

    array-length v4, v3

    const v5, 0x7fffffff

    const/high16 v6, -0x80000000

    move v9, v2

    move v7, v6

    move v8, v7

    move v6, v5

    :goto_3
    if-ge v9, v4, :cond_4

    aget-object v10, v3, v9

    iget v11, v10, Landroid/graphics/Point;->x:I

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v11, v10, Landroid/graphics/Point;->x:I

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v11, v10, Landroid/graphics/Point;->y:I

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, v1, LX5/a;->c:Landroid/graphics/Rect;

    :cond_5
    iget-object v3, v1, LX5/a;->c:Landroid/graphics/Rect;

    aget-object v4, p1, v0

    new-instance v5, Lorg/chromium/gfx/mojom/RectF;

    invoke-direct {v5}, Lorg/chromium/gfx/mojom/RectF;-><init>()V

    iput-object v5, v4, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    aget-object v4, p1, v0

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v5, v3, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->y:F

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->width:F

    aget-object v4, p1, v0

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lorg/chromium/gfx/mojom/RectF;->height:F

    invoke-virtual {v1}, LX5/a;->a()[Landroid/graphics/Point;

    move-result-object v1

    aget-object v3, p1, v0

    array-length v4, v1

    new-array v4, v4, [Lorg/chromium/gfx/mojom/PointF;

    iput-object v4, v3, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    move v3, v2

    :goto_4
    array-length v4, v1

    if-ge v3, v4, :cond_6

    aget-object v4, p1, v0

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    new-instance v5, Lorg/chromium/gfx/mojom/PointF;

    invoke-direct {v5}, Lorg/chromium/gfx/mojom/PointF;-><init>()V

    aput-object v5, v4, v3

    aget-object v4, p1, v0

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/TextDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    iget v6, v5, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iput v6, v4, Lorg/chromium/gfx/mojom/PointF;->x:F

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/PointF;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-interface {p2, p1}, Lorg/chromium/shape_detection/mojom/TextDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/TextDetectionResult;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/shape_detection/TextDetectionImpl;->close()V

    return-void
.end method
