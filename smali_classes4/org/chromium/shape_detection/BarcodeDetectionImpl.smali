.class public Lorg/chromium/shape_detection/BarcodeDetectionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/shape_detection/mojom/BarcodeDetection;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mBarcodeDetector:LT5/a;


# direct methods
.method public constructor <init>(Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;->formats:[I

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    array-length v0, v0

    if-lez v0, :cond_e

    move v0, v1

    :goto_0
    iget-object v2, p1, Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;->formats:[I

    array-length v3, v2

    if-ge v1, v3, :cond_d

    aget v2, v2, v1

    if-nez v2, :cond_0

    or-int/lit16 v0, v0, 0x1000

    goto/16 :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    or-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    or-int/lit8 v0, v0, 0x4

    goto :goto_1

    :cond_3
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    or-int/lit8 v0, v0, 0x10

    goto :goto_1

    :cond_5
    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    or-int/lit8 v0, v0, 0x20

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    or-int/lit8 v0, v0, 0x40

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    if-ne v2, v3, :cond_8

    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    :cond_8
    const/16 v3, 0x9

    if-ne v2, v3, :cond_9

    or-int/lit16 v0, v0, 0x800

    goto :goto_1

    :cond_9
    const/16 v3, 0xa

    if-ne v2, v3, :cond_a

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_a
    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    :cond_b
    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    or-int/lit16 v0, v0, 0x400

    goto :goto_1

    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsupported barcode format hint: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lorg/chromium/shape_detection/mojom/BarcodeDetectorOptions;->formats:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BarcodeDetectionImpl"

    invoke-static {v3, v2}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_d
    move v1, v0

    :cond_e
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/vision/zzk;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/google/android/gms/internal/vision/zzk;->a:I

    new-instance v1, LW5/a;

    invoke-direct {v1, p1, v0}, LW5/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzk;)V

    new-instance p1, LT5/a;

    invoke-direct {p1, v1}, LT5/a;-><init>(LW5/a;)V

    iput-object p1, p0, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->mBarcodeDetector:LT5/a;

    return-void
.end method

.method private toBarcodeFormat(I)I
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    sparse-switch p1, :sswitch_data_0

    const/16 p0, 0xb

    return p0

    :sswitch_0
    const/4 p0, 0x0

    return p0

    :sswitch_1
    const/16 p0, 0x9

    return p0

    :sswitch_2
    const/16 p0, 0xd

    return p0

    :sswitch_3
    const/16 p0, 0xc

    return p0

    :sswitch_4
    const/16 p0, 0xa

    return p0

    :sswitch_5
    const/16 p0, 0x8

    return p0

    :sswitch_6
    const/4 p0, 0x7

    return p0

    :sswitch_7
    const/4 p0, 0x6

    return p0

    :sswitch_8
    const/4 p0, 0x5

    return p0

    :sswitch_9
    const/4 p0, 0x4

    return p0

    :sswitch_a
    const/4 p0, 0x3

    :cond_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_a
        0x8 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->mBarcodeDetector:LT5/a;

    invoke-virtual {p0}, LT5/a;->d()V

    return-void
.end method

.method public detect(Lorg/chromium/skia/mojom/BitmapN32;Lorg/chromium/shape_detection/mojom/BarcodeDetection$Detect_Response;)V
    .locals 11

    iget-object v0, p0, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->mBarcodeDetector:LT5/a;

    iget-object v0, v0, LT5/a;->c:LW5/a;

    invoke-virtual {v0}, LW5/a;->d()Z

    move-result v0

    const-string v1, "BarcodeDetectionImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "BarcodeDetector is not operational"

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/BarcodeDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;)V

    return-void

    :cond_0
    invoke-static {p1}, Lorg/chromium/shape_detection/BitmapUtils;->convertToFrame(Lorg/chromium/skia/mojom/BitmapN32;)LS5/d;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "Error converting Mojom Bitmap to Frame"

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-array p0, v2, [Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;

    invoke-interface {p2, p0}, Lorg/chromium/shape_detection/mojom/BarcodeDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;)V

    return-void

    :cond_1
    iget-object v0, p0, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->mBarcodeDetector:LT5/a;

    invoke-virtual {v0, p1}, LT5/a;->a(LS5/d;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;

    move v1, v2

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    new-instance v3, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;

    invoke-direct {v3}, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;-><init>()V

    aput-object v3, v0, v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/vision/barcode/Barcode;

    aget-object v4, v0, v1

    iget-object v5, v3, Lcom/google/android/gms/vision/barcode/Barcode;->b:Ljava/lang/String;

    iput-object v5, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->rawValue:Ljava/lang/String;

    const v4, 0x7fffffff

    const/high16 v5, -0x80000000

    move v8, v2

    move v6, v5

    move v7, v6

    move v5, v4

    :goto_1
    iget-object v9, v3, Lcom/google/android/gms/vision/barcode/Barcode;->e:[Landroid/graphics/Point;

    array-length v10, v9

    if-ge v8, v10, :cond_2

    aget-object v9, v9, v8

    iget v10, v9, Landroid/graphics/Point;->x:I

    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v10, v9, Landroid/graphics/Point;->x:I

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v10, v9, Landroid/graphics/Point;->y:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    aget-object v4, v0, v1

    new-instance v5, Lorg/chromium/gfx/mojom/RectF;

    invoke-direct {v5}, Lorg/chromium/gfx/mojom/RectF;-><init>()V

    iput-object v5, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->x:F

    iget v5, v8, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->y:F

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->width:F

    aget-object v4, v0, v1

    iget-object v4, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->boundingBox:Lorg/chromium/gfx/mojom/RectF;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lorg/chromium/gfx/mojom/RectF;->height:F

    aget-object v4, v0, v1

    array-length v5, v9

    new-array v5, v5, [Lorg/chromium/gfx/mojom/PointF;

    iput-object v5, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    move v4, v2

    :goto_2
    array-length v5, v9

    if-ge v4, v5, :cond_3

    aget-object v5, v0, v1

    iget-object v5, v5, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    new-instance v6, Lorg/chromium/gfx/mojom/PointF;

    invoke-direct {v6}, Lorg/chromium/gfx/mojom/PointF;-><init>()V

    aput-object v6, v5, v4

    aget-object v5, v0, v1

    iget-object v5, v5, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->cornerPoints:[Lorg/chromium/gfx/mojom/PointF;

    aget-object v5, v5, v4

    aget-object v6, v9, v4

    iget v7, v6, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iput v7, v5, Lorg/chromium/gfx/mojom/PointF;->x:F

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iput v6, v5, Lorg/chromium/gfx/mojom/PointF;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    aget-object v4, v0, v1

    iget v3, v3, Lcom/google/android/gms/vision/barcode/Barcode;->a:I

    invoke-direct {p0, v3}, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->toBarcodeFormat(I)I

    move-result v3

    iput v3, v4, Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;->format:I

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-interface {p2, v0}, Lorg/chromium/shape_detection/mojom/BarcodeDetection$Detect_Response;->call([Lorg/chromium/shape_detection/mojom/BarcodeDetectionResult;)V

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/shape_detection/BarcodeDetectionImpl;->close()V

    return-void
.end method
