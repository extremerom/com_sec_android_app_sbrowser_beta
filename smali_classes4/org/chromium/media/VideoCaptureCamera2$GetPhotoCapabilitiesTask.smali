.class Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;
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
    name = "GetPhotoCapabilitiesTask"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mCallbackId:J

.field final synthetic this$0:Lorg/chromium/media/VideoCaptureCamera2;


# direct methods
.method public constructor <init>(Lorg/chromium/media/VideoCaptureCamera2;J)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->mCallbackId:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget v1, v1, Lorg/chromium/media/VideoCapture;->mId:I

    invoke-static {v1}, Lorg/chromium/media/VideoCaptureCamera2;->N(I)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    new-instance v2, Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-direct {v2}, Lorg/chromium/media/PhotoCapabilities$Builder;-><init>()V

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->mCallbackId:J

    invoke-virtual {v2}, Lorg/chromium/media/PhotoCapabilities$Builder;->build()Lorg/chromium/media/PhotoCapabilities;

    move-result-object v0

    invoke-virtual {v1, v1, v3, v4, v0}, Lorg/chromium/media/VideoCapture;->onGetPhotoCapabilitiesReply(Lorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V

    return-void

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Range;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    move v5, v3

    :goto_0
    invoke-virtual {v2, v4, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    const/4 v8, 0x2

    if-eqz v3, :cond_2

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v8, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_2
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/16 v7, 0x100

    invoke-virtual {v3, v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    array-length v7, v3

    const v9, 0x7fffffff

    move v11, v4

    move v12, v11

    move v13, v12

    move v10, v9

    :goto_1
    if-ge v11, v7, :cond_7

    aget-object v14, v3, v11

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-ge v15, v10, :cond_3

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v10

    :cond_3
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-ge v15, v9, :cond_4

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v9

    :cond_4
    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v15

    if-le v15, v13, :cond_5

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v13

    :cond_5
    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v15

    if-le v15, v12, :cond_6

    invoke-virtual {v14}, Landroid/util/Size;->getHeight()I

    move-result v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v2, v3, v9}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/4 v9, 0x5

    invoke-virtual {v7, v9, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/4 v11, 0x7

    invoke-virtual {v7, v11, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v12}, Lorg/chromium/media/VideoCaptureCamera2;->k(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v12

    if-lez v12, :cond_8

    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v12}, Lorg/chromium/media/VideoCaptureCamera2;->k(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v12

    goto :goto_2

    :cond_8
    iget-object v12, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v12, v12, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v12}, Lorg/chromium/media/VideoCaptureFormat;->getHeight()I

    move-result v12

    :goto_2
    const/4 v14, 0x6

    invoke-virtual {v7, v14, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/16 v12, 0x8

    invoke-virtual {v7, v12, v10}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/16 v10, 0x9

    invoke-virtual {v7, v10, v13}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const/16 v13, 0xb

    invoke-virtual {v7, v13, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    iget-object v15, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v15}, Lorg/chromium/media/VideoCaptureCamera2;->l(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v15

    if-lez v15, :cond_9

    iget-object v15, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v15}, Lorg/chromium/media/VideoCaptureCamera2;->l(Lorg/chromium/media/VideoCaptureCamera2;)I

    move-result v15

    goto :goto_3

    :cond_9
    iget-object v15, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-object v15, v15, Lorg/chromium/media/VideoCapture;->mCaptureFormat:Lorg/chromium/media/VideoCaptureFormat;

    invoke-virtual {v15}, Lorg/chromium/media/VideoCaptureFormat;->getWidth()I

    move-result v15

    :goto_3
    const/16 v10, 0xa

    invoke-virtual {v7, v10, v15}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v15

    const/high16 v16, 0x3f800000    # 1.0f

    if-eqz v15, :cond_a

    iget-object v15, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v15}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    sget-object v10, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v15, v10}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_a

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v15, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v15}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v15

    invoke-virtual {v15, v10}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v7, v10

    goto :goto_4

    :cond_a
    move/from16 v7, v16

    :goto_4
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v12, v13}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v12

    iget-object v13, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v13}, Lorg/chromium/media/VideoCaptureCamera2;->j(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v13

    float-to-double v10, v13

    invoke-virtual {v12, v6, v10, v11}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v10

    float-to-double v11, v7

    invoke-virtual {v10, v8, v11, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v7

    const-wide v10, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v7, v5, v10, v11}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v5}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_MINIMUM_FOCUS_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v18

    const-string v15, "VideoCapture"

    const/16 v19, 0x0

    if-eqz v18, :cond_c

    invoke-virtual {v1, v13}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    cmpl-float v18, v13, v19

    if-nez v18, :cond_b

    const-string v10, "lens is fixed-focus"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v15, v10, v11}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    if-lez v18, :cond_d

    div-float v13, v16, v13

    goto :goto_5

    :cond_c
    const-string v10, "LENS_INFO_MINIMUM_FOCUS_DISTANCE is null"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v15, v10, v11}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v13, v19

    :cond_d
    :goto_5
    sget-object v10, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v11

    const/high16 v5, 0x5f000000

    if-eqz v11, :cond_f

    invoke-virtual {v1, v10}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    cmpl-float v11, v10, v19

    if-nez v11, :cond_e

    move v10, v5

    goto :goto_6

    :cond_e
    if-lez v11, :cond_10

    div-float v10, v16, v10

    goto :goto_6

    :cond_f
    const-string v10, "LENS_INFO_HYPERFOCAL_DISTANCE is null"

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v15, v10, v11}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v10, v19

    :cond_10
    :goto_6
    iget-object v11, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v11}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v11

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v11, v6}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_12

    iget-object v11, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v11}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-static {v11, v6}, Lorg/chromium/media/VideoCaptureCamera2;->u(Lorg/chromium/media/VideoCaptureCamera2;F)V

    iget-object v6, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v6}, Lorg/chromium/media/VideoCaptureCamera2;->f(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v6

    cmpl-float v6, v6, v19

    if-nez v6, :cond_11

    const-string v6, "infinity focus."

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v15, v6, v9}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v6, v5}, Lorg/chromium/media/VideoCaptureCamera2;->u(Lorg/chromium/media/VideoCaptureCamera2;F)V

    goto :goto_7

    :cond_11
    iget-object v5, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->f(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v5

    cmpl-float v5, v5, v19

    if-lez v5, :cond_13

    iget-object v5, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v5}, Lorg/chromium/media/VideoCaptureCamera2;->f(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v5

    div-float v5, v16, v5

    float-to-double v5, v5

    invoke-virtual {v2, v14, v5, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto :goto_7

    :cond_12
    const-string v5, "LENS_FOCUS_DISTANCE is null"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v15, v5, v6}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_7
    array-length v5, v7

    move v6, v4

    :goto_8
    if-ge v6, v5, :cond_19

    aget v9, v7, v6

    if-nez v9, :cond_14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    float-to-double v14, v13

    invoke-virtual {v2, v3, v14, v15}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v9

    float-to-double v14, v10

    const/4 v11, 0x5

    invoke-virtual {v9, v11, v14, v15}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v9

    const v14, 0x3c23d70a    # 0.01f

    float-to-double v14, v14

    const/4 v4, 0x7

    invoke-virtual {v9, v4, v14, v15}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto :goto_a

    :cond_14
    const/4 v4, 0x7

    const/4 v11, 0x5

    const/4 v14, 0x1

    if-eq v9, v14, :cond_15

    if-ne v9, v8, :cond_16

    :cond_15
    const/4 v9, 0x3

    goto :goto_9

    :cond_16
    const/4 v14, 0x3

    if-eq v9, v14, :cond_17

    if-eq v9, v3, :cond_17

    if-ne v9, v11, :cond_18

    :cond_17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :goto_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_a
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    const/4 v14, 0x6

    goto :goto_8

    :cond_19
    invoke-static {v12}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1e

    if-ne v4, v3, :cond_1a

    goto :goto_d

    :cond_1a
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1d

    if-ne v4, v8, :cond_1b

    goto :goto_c

    :cond_1b
    if-nez v4, :cond_1f

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->f(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v4

    cmpl-float v4, v4, v19

    if-lez v4, :cond_1c

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->f(Lorg/chromium/media/VideoCaptureCamera2;)F

    move-result v4

    div-float v4, v16, v4

    float-to-double v4, v4

    const/4 v6, 0x6

    invoke-virtual {v2, v6, v4, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_1c
    move v4, v8

    :goto_b
    const/4 v5, 0x0

    goto :goto_e

    :cond_1d
    :goto_c
    const/4 v4, 0x3

    goto :goto_b

    :cond_1e
    :goto_d
    move v4, v3

    goto :goto_b

    :cond_1f
    const/4 v4, 0x1

    goto :goto_b

    :goto_e
    invoke-virtual {v2, v5, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    array-length v7, v4

    const/4 v9, 0x0

    :goto_f
    const/16 v10, 0xe

    const/16 v11, 0xf

    const/16 v12, 0xc

    const/16 v13, 0xd

    if-ge v9, v7, :cond_24

    aget v14, v4, v9

    if-eq v14, v6, :cond_23

    if-eq v14, v8, :cond_23

    const/4 v6, 0x3

    if-eq v14, v6, :cond_23

    if-ne v14, v3, :cond_20

    goto :goto_11

    :cond_20
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_22

    invoke-virtual {v1, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Range;

    invoke-virtual {v6}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object/from16 v17, v4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v20, 0x0

    cmp-long v6, v14, v20

    const-wide v22, 0x40f86a0000000000L    # 100000.0

    if-eqz v6, :cond_21

    cmp-long v6, v3, v20

    if-eqz v6, :cond_21

    long-to-double v3, v3

    div-double v3, v3, v22

    invoke-virtual {v2, v13, v3, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v3

    long-to-double v13, v14

    div-double v13, v13, v22

    invoke-virtual {v3, v12, v13, v14}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_21
    const-wide v3, 0x3fb999999999999aL    # 0.1

    invoke-virtual {v2, v11, v3, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v6

    iget-object v11, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v11}, Lorg/chromium/media/VideoCaptureCamera2;->i(Lorg/chromium/media/VideoCaptureCamera2;)J

    move-result-wide v11

    long-to-double v11, v11

    div-double v11, v11, v22

    invoke-virtual {v6, v10, v11, v12}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto :goto_10

    :cond_22
    move-object/from16 v17, v4

    const-wide v3, 0x3fb999999999999aL    # 0.1

    :goto_10
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v17

    const/4 v3, 0x4

    const/4 v6, 0x1

    goto :goto_f

    :cond_23
    :goto_11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    :try_start_0
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_25
    invoke-static {v5}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_26

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_26

    const/4 v3, 0x1

    goto :goto_12

    :cond_26
    const/4 v3, 0x4

    :goto_12
    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_27

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_27

    move v3, v8

    :cond_27
    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Rational;

    invoke-virtual {v3}, Landroid/util/Rational;->floatValue()F

    move-result v3

    float-to-double v4, v3

    const/16 v6, 0xb

    invoke-virtual {v2, v6, v4, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Range;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v5, v5

    const/16 v7, 0x8

    invoke-virtual {v2, v7, v5, v6}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-double v6, v4

    const/16 v4, 0x9

    invoke-virtual {v5, v4, v6, v7}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_28

    iget-object v4, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v4}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-double v3, v4

    const/16 v5, 0xa

    invoke-virtual {v2, v5, v3, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setDouble(ID)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_28
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    array-length v6, v3

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v6, :cond_2a

    aget v9, v3, v7

    if-ne v9, v5, :cond_29

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_29
    const/4 v5, 0x4

    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_13

    :cond_2a
    const/4 v5, 0x4

    :goto_14
    :try_start_1
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_LOCK_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_2b
    invoke-static {v4}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringModeArray(I[I)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2e

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2c

    const/4 v4, 0x1

    invoke-virtual {v2, v8, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto :goto_16

    :cond_2c
    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    goto :goto_15

    :cond_2d
    move v5, v8

    :goto_15
    invoke-virtual {v2, v8, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setMeteringMode(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto :goto_16

    :cond_2e
    const/4 v3, 0x1

    :goto_16
    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->L()Landroid/util/SparseIntArray;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v2, v12, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v4

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->L()Landroid/util/SparseIntArray;

    move-result-object v5

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->L()Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v13, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v4

    const/16 v5, 0x32

    invoke-virtual {v4, v11, v5}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->L()Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v3

    if-ltz v3, :cond_2f

    invoke-static {}, Lorg/chromium/media/VideoCaptureCamera2;->L()Landroid/util/SparseIntArray;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v10, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setInt(II)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_2f
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_30

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v1

    invoke-virtual {v1, v8, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    goto/16 :goto_1c

    :cond_30
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    move-result-object v5

    invoke-virtual {v5, v8, v4}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_32

    iget-object v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    invoke-static {v3}, Lorg/chromium/media/VideoCaptureCamera2;->m(Lorg/chromium/media/VideoCaptureCamera2;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v8, :cond_31

    const/4 v3, 0x1

    :goto_17
    const/4 v4, 0x1

    goto :goto_18

    :cond_31
    const/4 v3, 0x0

    goto :goto_17

    :goto_18
    invoke-virtual {v2, v4, v3}, Lorg/chromium/media/PhotoCapabilities$Builder;->setBool(IZ)Lorg/chromium/media/PhotoCapabilities$Builder;

    :cond_32
    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v5, v1

    :goto_19
    if-ge v4, v5, :cond_36

    aget v6, v1, v4

    if-nez v6, :cond_33

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1a
    const/4 v9, 0x3

    goto :goto_1b

    :cond_33
    const/4 v7, 0x1

    if-ne v6, v8, :cond_34

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    :cond_34
    const/4 v9, 0x3

    if-ne v6, v9, :cond_35

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_35
    :goto_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_36
    invoke-static {v3}, Lorg/chromium/media/VideoCapture;->integerArrayListToArray(Ljava/util/ArrayList;)[I

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/chromium/media/PhotoCapabilities$Builder;->setFillLightModeArray([I)Lorg/chromium/media/PhotoCapabilities$Builder;

    :goto_1c
    iget-object v1, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->this$0:Lorg/chromium/media/VideoCaptureCamera2;

    iget-wide v3, v0, Lorg/chromium/media/VideoCaptureCamera2$GetPhotoCapabilitiesTask;->mCallbackId:J

    invoke-virtual {v2}, Lorg/chromium/media/PhotoCapabilities$Builder;->build()Lorg/chromium/media/PhotoCapabilities;

    move-result-object v0

    invoke-virtual {v1, v1, v3, v4, v0}, Lorg/chromium/media/VideoCapture;->onGetPhotoCapabilitiesReply(Lorg/chromium/media/VideoCapture;JLorg/chromium/media/PhotoCapabilities;)V

    return-void
.end method
