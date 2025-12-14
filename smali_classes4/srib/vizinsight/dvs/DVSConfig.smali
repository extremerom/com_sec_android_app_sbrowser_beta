.class public Lsrib/vizinsight/dvs/DVSConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNIFIED_CLIPPER_MODE:Ljava/lang/String; = "unifiedclipper"


# instance fields
.field detectThreshold:I

.field public detectorDLAModelPath:Ljava/lang/String;

.field public detectorDLCModelPath:Ljava/lang/String;

.field public detectorNNCModelPath:Ljava/lang/String;

.field public detectorTfliteModelPath:Ljava/lang/String;

.field public isPamir:Ljava/lang/Boolean;

.field maxPass:I

.field odModelPath:Ljava/lang/String;

.field qualityThreshold:I

.field public refinerDLAModelPath:Ljava/lang/String;

.field public refinerDLCModelPath:Ljava/lang/String;

.field refinerModelPath:Ljava/lang/String;

.field public refinerNNCModelPath:Ljava/lang/String;

.field public refinerTfliteModelPath:Ljava/lang/String;

.field segmentThreshold:I

.field public segmenterDLAModelPath:Ljava/lang/String;

.field public segmenterDLCModelPath:Ljava/lang/String;

.field segmenterModelPath:Ljava/lang/String;

.field public segmenterNNCModelPath:Ljava/lang/String;

.field public segmenterTfliteModelPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_segmenter_cnn.dlc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_segmenter_cnn.tflite"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterTfliteModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_segmenter_cnn.nnc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterNNCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_segmenter_cnn.dla"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLAModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_od_cnn.dlc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_od_cnn.tflite"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorTfliteModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_od_cnn.nnc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorNNCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dvs_od_cnn.dla"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLAModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dis_refiner_cnn.dlc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerDLCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dis_refiner_cnn.tflite"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerTfliteModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dis_refiner_cnn.nnc"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerNNCModelPath:Ljava/lang/String;

    const-string v2, "/vendor/etc/saiv/image_understanding/db/dvs/dis_refiner_cnn.dla"

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerDLAModelPath:Ljava/lang/String;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->isPamir:Ljava/lang/Boolean;

    const-string v2, ""

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    const/16 v3, 0x23

    iput v3, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectThreshold:I

    const/16 v3, 0x41

    iput v3, p0, Lsrib/vizinsight/dvs/DVSConfig;->qualityThreshold:I

    const/16 v3, 0x28

    iput v3, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmentThreshold:I

    const/4 v3, 0x3

    iput v3, p0, Lsrib/vizinsight/dvs/DVSConfig;->maxPass:I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    if-eqz v4, :cond_6

    const-string v5, "SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Model type from floating feature SEC_FLOATING_FEATURE_VIDEO_CONFIG_VIDEO_CLIPPING_MODE: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DVSConfig"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    aget-object v4, v4, v0

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v0, v6

    goto :goto_2

    :sswitch_0
    const-string v0, "NPU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v0, "GPU"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_2

    :sswitch_2
    const-string v0, "NPU_PAMIR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "NPU_MTK"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :sswitch_4
    const-string v0, "NPU_LSI"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :cond_5
    :goto_2
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    goto :goto_3

    :pswitch_0
    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerDLCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorTfliteModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterTfliteModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerTfliteModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->isPamir:Ljava/lang/Boolean;

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLAModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLAModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerDLAModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    iget-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerNNCModelPath:Ljava/lang/String;

    iput-object v0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    :goto_3
    const-string v0, "unifiedclipper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iput-object v2, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    :cond_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x547c1bca -> :sswitch_4
        -0x547c17e8 -> :sswitch_3
        -0x25b409c7 -> :sswitch_2
        0x1148c -> :sswitch_1
        0x12ed3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDetectThreshold()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectThreshold:I

    return p0
.end method

.method public getDetectorDLCModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLCModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getDetectorTfliteModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorTfliteModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxPass()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->maxPass:I

    return p0
.end method

.method public getOdModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getQualityThreshold()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->qualityThreshold:I

    return p0
.end method

.method public getRefinerModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmentThreshold()I
    .locals 0

    iget p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmentThreshold:I

    return p0
.end method

.method public getSegmenterDLCModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLCModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmenterModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public getSegmenterTfliteModelPath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterTfliteModelPath:Ljava/lang/String;

    return-object p0
.end method

.method public setDetectThreshold(I)V
    .locals 0

    iput p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectThreshold:I

    return-void
.end method

.method public setDetectorDLCModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorDLCModelPath:Ljava/lang/String;

    return-void
.end method

.method public setDetectorTfliteModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->detectorTfliteModelPath:Ljava/lang/String;

    return-void
.end method

.method public setMaxPass(I)V
    .locals 0

    iput p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->maxPass:I

    return-void
.end method

.method public setOdModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->odModelPath:Ljava/lang/String;

    return-void
.end method

.method public setQualityThreshold(I)V
    .locals 0

    iput p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->qualityThreshold:I

    return-void
.end method

.method public setRefinerModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->refinerModelPath:Ljava/lang/String;

    return-void
.end method

.method public setSegmentThreshold(I)V
    .locals 0

    iput p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmentThreshold:I

    return-void
.end method

.method public setSegmenterDLCModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterDLCModelPath:Ljava/lang/String;

    return-void
.end method

.method public setSegmenterModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterModelPath:Ljava/lang/String;

    return-void
.end method

.method public setSegmenterTfliteModelPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lsrib/vizinsight/dvs/DVSConfig;->segmenterTfliteModelPath:Ljava/lang/String;

    return-void
.end method
