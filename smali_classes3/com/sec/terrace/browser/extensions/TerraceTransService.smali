.class public Lcom/sec/terrace/browser/extensions/TerraceTransService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;
    }
.end annotation


# static fields
.field private static sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

.field private mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TerraceTransService"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    const-string p1, "EnableExtensions"

    invoke-static {p1}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sput-object p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    :goto_0
    return-void
.end method

.method public static createTerraceTransService(Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceTransService;-><init>(Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/extensions/TerraceTransService;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    return-object v0
.end method


# virtual methods
.method public clearFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->clear(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Clear"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onClearFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createFunction(Ljava/lang/String;IIJ)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->createTrans(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Create"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onCreateFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public destroyFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->destroyTrans(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Destroy"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDestroyFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public detectionLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->detectionLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-DetectionLang"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v2, p6

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDetectionLangFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public downloadLangPackFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->downloadLangPack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-DownloadLangPack"

    move-wide/from16 v2, p7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onDownloadLangPackFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getInfoFunction(Ljava/lang/String;IIJ)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->getInfo(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-GetLang"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetInfoFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->getLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-GetLang"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v2, p6

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetLangFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->getLangList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-GetLangList"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v2, p7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetLangListFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getModeFunction(Ljava/lang/String;IIJ)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->getMode(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-GetMode"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetModeFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSupportFunction(Ljava/lang/String;IIJ)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->getSupport(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-GetSupport"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onGetSupportFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClearFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onClearFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCreateFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onCreateFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestroyFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDestroyFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDetectionLangFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDetectionLangFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDownloadLangPackFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onDownloadLangPackFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetInfoFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetInfoFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetLangFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetLangFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetLangListFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetLangListFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetModeFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetModeFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onGetSupportFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onGetSupportFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOpenSettingsFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onOpenSettingsFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRefreshFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onRefreshFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetLangFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onSetLangFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetLangListFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onSetLangListFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSetModeFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onSetModeFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTranslateFunctionResult(J[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz v0, :cond_0

    const-string v0, "Translated by engine"

    invoke-static {v0, p1, p2}, Lorg/chromium/base/TraceEvent;->finishAsync(Ljava/lang/String;J)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onTranslateFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUpdateStatusFunctionResult(J[Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TransUtil;->onUpdateStatusFunctionResult(J[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public openLangPackSettingsFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->openLangPackSettings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-OpenLangPackSettings"

    move-wide/from16 v2, p6

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onOpenLangPackSettingsFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public openSettingsFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->openSettings(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-OpenSettings"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onOpenSettingsFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public refreshFunction(Ljava/lang/String;IIJ)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->refresh(Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Refresh"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onRefreshFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLangFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 11

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->setLang(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-SetLang"

    move-wide/from16 v2, p7

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetLangFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLangListFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 12

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-interface/range {v2 .. v11}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->setLangList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-SetLangList"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v2, p8

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetLangListFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setModeFunction(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 8

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->setMode(Ljava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-SetMode"

    invoke-virtual {p0, p5, p6, p1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onSetModeFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTransUtil(Lcom/sec/terrace/browser/extensions/TransUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mTransUtil:Lcom/sec/terrace/browser/extensions/TransUtil;

    return-void
.end method

.method public translateFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;IIJ)V
    .locals 13

    move-object v0, p0

    move-wide/from16 v11, p11

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    const-string v1, "Translated by engine"

    invoke-static {v1, v11, v12}, Lorg/chromium/base/TraceEvent;->startAsync(Ljava/lang/String;J)V

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-wide/from16 v11, p11

    invoke-interface/range {v0 .. v12}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->translate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-Translate"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v11, v12, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onTranslateFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateStatusFunction(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceTransService;->sTerraceTransService:Lcom/sec/terrace/browser/extensions/TerraceTransService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceTransService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceTransService$TerraceTransServiceDelegate;->updateStatus(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-UpdateStatus"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-wide/from16 v2, p6

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceTransService;->onUpdateStatusFunctionResult(J[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
