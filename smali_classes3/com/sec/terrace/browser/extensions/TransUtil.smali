.class public Lcom/sec/terrace/browser/extensions/TransUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TransUtil$Natives;
    }
.end annotation


# instance fields
.field private mNativeTransUtil:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TransUtil"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object p1

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    invoke-interface {p1, v0, v1, p0}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->init(JLcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    :cond_1
    :goto_0
    return-void
.end method

.method private clearFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "clearFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-Clear"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onClearFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->clearFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private createFunction(Ljava/lang/String;IIJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "createFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-Create"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onCreateFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->createFunction(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private static createTrans(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/TransUtil;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;-><init>(J)V

    return-void
.end method

.method private destroyFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "destroyFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-Destroy"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDestroyFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->destroyFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private detectionLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "detectionLangFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-DetectionLang"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v8, p6

    invoke-virtual {p0, v8, v9, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDetectionLangFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->detectionLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private downloadLangPackFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "downloadLangPackFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-DownloadLangPack"

    move-wide/from16 v9, p7

    invoke-virtual {p0, v9, v10, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDownloadLangPackFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v9, p7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->downloadLangPackFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private getInfoFunction(Ljava/lang/String;IIJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "getInfoFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-GetInfo"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetInfoFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInfoFunction(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private getLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "getLangFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-GetLang"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v8, p6

    invoke-virtual {p0, v8, v9, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetLangFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private getLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "getLangListFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-GetLangList"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v9, p7

    invoke-virtual {p0, v9, v10, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetLangListFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v9, p7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private getModeFunction(Ljava/lang/String;IIJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "getModeFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-GetSupport"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetModeFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getModeFunction(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private getSupportFunction(Ljava/lang/String;IIJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "getSupportFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-GetSupport"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetSupportFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getSupportFunction(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private openLangPackSettingsFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "openLangPackSettingsFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-OpenLangPackSettings"

    move-wide/from16 v8, p6

    invoke-virtual {p0, v8, v9, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->openLangPackSettingsFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private openSettingsFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "openSettingsFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-OpenSettings"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onOpenSettingsFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->openSettingsFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private refreshFunction(Ljava/lang/String;IIJ)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "refreshFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-Refresh"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onRefreshFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->refreshFunction(Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private setLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "setLangFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-SetLang"

    move-wide/from16 v9, p7

    invoke-virtual {p0, v9, v10, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onSetLangFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v9, p7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private setLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "getLangListFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-GetLangList"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v10, p8

    invoke-virtual {p0, v10, v11, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetLangListFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v10, p8

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v11}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private setModeFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TransUtil"

    const-string v1, "setModeFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-SetMode"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onSetModeFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setModeFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method

.method private translateFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZZIIJ)V
    .locals 15
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "translateFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-Translate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v13, p11

    invoke-virtual {p0, v13, v14, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onTranslateFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v13, p11

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    invoke-static/range {p7 .. p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static/range {p8 .. p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-virtual/range {v2 .. v14}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->translateFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;IIJ)V

    :goto_0
    return-void
.end method

.method private updateStatusFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "TransUtil"

    const-string v2, "updateStatusFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-UpdateStatus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v8, p6

    invoke-virtual {p0, v8, v9, v1}, Lcom/sec/terrace/browser/extensions/TransUtil;->onUpdateStatusFunctionResult(J[Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->updateStatusFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClearFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->clearFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onCreateFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->createFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onDestroyFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->destroyFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onDetectionLangFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->detectionLangFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadLangPackFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->downloadLangPackFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onGetInfoFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->getInfoFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onGetLangFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->getLangFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onGetLangListFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->getLangListFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onGetModeFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->getModeFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onGetSupportFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->getSupportFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->openLangPackSettingsFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onOpenSettingsFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->openSettingsFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onRefreshFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->refreshFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onSetLangFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->setLangFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onSetLangListFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->setLangListFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onSetModeFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->setModeFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onTranslateFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->translateFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method

.method public onUpdateStatusFunctionResult(J[Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TransUtilJni;->get()Lcom/sec/terrace/browser/extensions/TransUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TransUtil;->mNativeTransUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/TransUtil$Natives;->updateStatusFunctionResult(JLcom/sec/terrace/browser/extensions/TransUtil;J[Ljava/lang/String;)V

    return-void
.end method
