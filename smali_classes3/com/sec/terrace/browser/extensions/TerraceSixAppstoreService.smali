.class public Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;
    }
.end annotation


# static fields
.field private static sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;


# instance fields
.field private mAppstoreServiceUtil:Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;

.field private mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TerraceSixAppstoreService"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;

    const-string p1, "EnableExtensions"

    invoke-static {p1}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    sput-object p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    sput-object p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    :goto_0
    return-void
.end method

.method public static createTerraceSixAppstoreService(Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;-><init>(Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    return-object v0
.end method


# virtual methods
.method public checkStatusFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    sget-object v0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;->checkStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :cond_0
    const-string p1, "Fail-Status"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public installAppFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .locals 10

    move-object v0, p0

    sget-object v1, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->sTerraceSixAppstoreService:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;

    invoke-static {v1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mDelegate:Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    invoke-interface/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService$TerraceSixAppstoreServiceDelegate;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    goto :goto_0

    :cond_0
    const-string v1, "Fail-Install"

    move-wide/from16 v2, p6

    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->onInstallAppFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCheckStatusFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mAppstoreServiceUtil:Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInstallAppFunctionResult(JLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mAppstoreServiceUtil:Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onInstallAppFunctionResult(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAppstoreServiceUtil(Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->mAppstoreServiceUtil:Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;

    return-void
.end method
