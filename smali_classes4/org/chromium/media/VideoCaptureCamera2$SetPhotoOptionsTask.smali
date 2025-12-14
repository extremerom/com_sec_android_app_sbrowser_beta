.class Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/VideoCaptureCamera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SetPhotoOptionsTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget v1, v1, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->N(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->zoom:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    const-string v8, "VideoCapture"

    if-eqz v7, :cond_1

    double-to-float v3, v3

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->j(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float v7, v3, v4

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v3

    div-float/2addr v7, v9

    iget-object v9, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v4, v7

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v4

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-direct {v10, v11, v12, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v9, v10}, Lorg/chromium/media/VideoCaptureCamera2;->t(Lorg/chromium/media/VideoCaptureCamera2;Landroid/graphics/Rect;)V

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->e(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "zoom level %f, rectangle: %s"

    invoke-static {v8, v4, v3}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->focusMode:I

    if-eqz v3, :cond_2

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4, v3}, Lorg/chromium/media/VideoCaptureCamera2;->y(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_2
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->currentFocusDistance:D

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_3

    iget-object v7, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    double-to-float v3, v3

    invoke-static {v7, v3}, Lorg/chromium/media/VideoCaptureCamera2;->u(Lorg/chromium/media/VideoCaptureCamera2;F)V

    :cond_3
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->exposureMode:I

    if-eqz v3, :cond_4

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4, v3}, Lorg/chromium/media/VideoCaptureCamera2;->w(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_4
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->exposureTime:D

    cmpl-double v7, v3, v5

    if-eqz v7, :cond_5

    iget-object v7, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    const-wide v9, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v3, v9

    double-to-long v3, v3

    invoke-static {v7, v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->A(Lorg/chromium/media/VideoCaptureCamera2;J)V

    :cond_5
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->whiteBalanceMode:I

    if-eqz v3, :cond_6

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4, v3}, Lorg/chromium/media/VideoCaptureCamera2;->H(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_6
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->width:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_7

    iget-object v7, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v7, v3}, Lorg/chromium/media/VideoCaptureCamera2;->C(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_7
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->height:D

    cmpl-double v7, v3, v5

    if-lez v7, :cond_8

    iget-object v7, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v7, v3}, Lorg/chromium/media/VideoCaptureCamera2;->B(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_8
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->a(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->a(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v9, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->zoom:D

    cmpl-double v3, v9, v5

    if-lez v3, :cond_9

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->q(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_9
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->h(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v3

    const/4 v7, 0x1

    if-eq v3, v7, :cond_a

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->g(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v3

    if-ne v3, v7, :cond_b

    :cond_a
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3, v4}, Lorg/chromium/media/VideoCaptureCamera2;->q(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/params/MeteringRectangle;)V

    :cond_b
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_c

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_c

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_f

    :cond_c
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-object v3, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->pointsOfInterest2D:[D

    array-length v3, v3

    if-lez v3, :cond_f

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->e(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v2

    goto :goto_0

    :cond_d
    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->e(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/graphics/Rect;

    move-result-object v3

    :goto_0
    iget-object v9, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-object v9, v9, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->pointsOfInterest2D:[D

    const/4 v10, 0x0

    aget-wide v11, v9, v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-double v13, v9

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v9, v11

    iget-object v11, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-object v11, v11, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->pointsOfInterest2D:[D

    aget-wide v11, v11, v7

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->round(D)J

    move-result-wide v11

    long-to-int v11, v11

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v12}, Lorg/chromium/media/VideoCaptureCamera2;->e(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v9, v12

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    div-int/lit8 v16, v12, 0x8

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    div-int/lit8 v17, v12, 0x8

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    new-instance v15, Landroid/hardware/camera2/params/MeteringRectangle;

    div-int/lit8 v13, v16, 0x2

    sub-int/2addr v9, v13

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v14

    div-int/lit8 v9, v17, 0x2

    sub-int/2addr v11, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    const/16 v18, 0x3e8

    move-object v13, v15

    move-object v11, v15

    move v15, v9

    invoke-direct/range {v13 .. v18}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    invoke-static {v12, v11}, Lorg/chromium/media/VideoCaptureCamera2;->q(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/params/MeteringRectangle;)V

    iget-object v9, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-object v9, v9, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->pointsOfInterest2D:[D

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    iget-object v10, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-object v10, v10, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->pointsOfInterest2D:[D

    aget-wide v10, v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v9, v10, v3, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Calculating (%.2fx%.2f) wrt to %s (canvas being %s)"

    invoke-static {v8, v3, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v2}, Lorg/chromium/media/VideoCaptureCamera2;->a(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MeteringRectangle;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Area of interest %s"

    invoke-static {v8, v3, v2}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_f
    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-boolean v2, v2, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->hasExposureCompensation:Z

    if-eqz v2, :cond_10

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v9, v3, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->exposureCompensation:D

    float-to-double v11, v1

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->round(D)J

    move-result-wide v9

    long-to-int v1, v9

    invoke-static {v2, v1}, Lorg/chromium/media/VideoCaptureCamera2;->v(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_10
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->iso:D

    cmpl-double v3, v1, v5

    if-lez v3, :cond_11

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->z(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_11
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-wide v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->colorTemperature:D

    cmpl-double v3, v1, v5

    if-lez v3, :cond_12

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v3, v1}, Lorg/chromium/media/VideoCaptureCamera2;->s(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_12
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-boolean v2, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->hasRedEyeReduction:Z

    if-eqz v2, :cond_13

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-boolean v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->redEyeReduction:Z

    invoke-static {v2, v1}, Lorg/chromium/media/VideoCaptureCamera2;->F(Lorg/chromium/media/VideoCaptureCamera2;Z)V

    :cond_13
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->fillLightMode:I

    if-eqz v1, :cond_14

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v2, v1}, Lorg/chromium/media/VideoCaptureCamera2;->x(Lorg/chromium/media/VideoCaptureCamera2;I)V

    :cond_14
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget-boolean v2, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->hasTorch:Z

    if-eqz v2, :cond_15

    iget-object v2, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-boolean v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->torch:Z

    invoke-static {v2, v1}, Lorg/chromium/media/VideoCaptureCamera2;->G(Lorg/chromium/media/VideoCaptureCamera2;Z)V

    :cond_15
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->o(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->n(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/media/VideoCaptureCamera2;->J(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->mOptions:Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;

    iget v1, v1, Lorg/chromium/media/VideoCaptureCamera2$PhotoOptions;->fillLightMode:I

    if-eqz v1, :cond_16

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->n(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_16
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->n(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/chromium/media/VideoCaptureCamera2;->D(Lorg/chromium/media/VideoCaptureCamera2;Landroid/hardware/camera2/CaptureRequest;)V

    :try_start_0
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->o(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    iget-object v0, v0, Lorg/chromium/media/VideoCaptureCamera2$SetPhotoOptionsTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v0}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    invoke-virtual {v1, v0, v4, v4}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "setRepeatingRequest: "

    invoke-static {v8, v1, v0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_17
    :goto_1
    return-void
.end method
