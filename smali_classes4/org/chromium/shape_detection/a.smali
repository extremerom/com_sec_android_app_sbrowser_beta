.class public final synthetic Lorg/chromium/shape_detection/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/shape_detection/FaceDetectionImpl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/graphics/Bitmap;

.field public final synthetic e:Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/shape_detection/FaceDetectionImpl;IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/shape_detection/a;->a:Lorg/chromium/shape_detection/FaceDetectionImpl;

    iput p2, p0, Lorg/chromium/shape_detection/a;->b:I

    iput p3, p0, Lorg/chromium/shape_detection/a;->c:I

    iput-object p4, p0, Lorg/chromium/shape_detection/a;->d:Landroid/graphics/Bitmap;

    iput-object p5, p0, Lorg/chromium/shape_detection/a;->e:Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lorg/chromium/shape_detection/a;->b:I

    iget v1, p0, Lorg/chromium/shape_detection/a;->c:I

    iget-object v2, p0, Lorg/chromium/shape_detection/a;->a:Lorg/chromium/shape_detection/FaceDetectionImpl;

    iget-object v3, p0, Lorg/chromium/shape_detection/a;->d:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lorg/chromium/shape_detection/a;->e:Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;

    invoke-static {v2, v0, v1, v3, p0}, Lorg/chromium/shape_detection/FaceDetectionImpl;->a(Lorg/chromium/shape_detection/FaceDetectionImpl;IILandroid/graphics/Bitmap;Lorg/chromium/shape_detection/mojom/FaceDetection$Detect_Response;)V

    return-void
.end method
