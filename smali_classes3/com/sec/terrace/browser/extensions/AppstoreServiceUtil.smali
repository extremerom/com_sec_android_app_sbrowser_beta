.class public Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;
    }
.end annotation


# instance fields
.field private mNativeAppstoreServiceUtil:J

.field private mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

.field private mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AppstoreServiceUtil"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EnableExtensions"

    invoke-static {v0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p3, Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mWebContents:Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    invoke-static {}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    invoke-interface {p1, p2, p3, p0}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;->init(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->setAppstoreServiceUtil(Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    :cond_1
    :goto_0
    return-void
.end method

.method private checkStatusFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AppstoreServiceUtil"

    const-string v1, "checkStatusFunction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "Fail-Status"

    invoke-virtual {p0, p4, p5, p1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->setAppstoreServiceUtil(Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->checkStatusFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_0
    return-void
.end method

.method private static createAppstoreService(JLorg/chromium/content_public/browser/WebContents;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;-><init>(JLorg/chromium/content_public/browser/WebContents;)V

    return-void
.end method

.method private installAppFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V
    .locals 10
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object v0, p0

    iget-wide v1, v0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "AppstoreServiceUtil"

    const-string v2, "installAppFunction"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Fail-Install"

    move-wide/from16 v8, p6

    invoke-virtual {p0, v8, v9, v1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onInstallAppFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->setAppstoreServiceUtil(Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/sec/terrace/browser/extensions/TerraceSixAppstoreService;->installAppFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIJ)V

    :goto_0
    return-void
.end method

.method private openAppInfo(Ljava/lang/String;J)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "Success"

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "AppstoreServiceUtil"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Fail-ShowInfo"

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openGalaxyStore(Ljava/lang/String;J)V
    .locals 5

    const-string v0, "Fail-ShowInfo"

    const-string v1, "AppstoreServiceUtil"

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "com.sec.android.app.samsungapps"

    invoke-static {v2, v3}, LV0/c;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "samsungapps://ProductDetail/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const p1, 0x10008020

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "Success"

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "openGalaxyStore NullPointerException"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "openGalaxyStore ActivityNotFoundException fallback"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2, p3, v0}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private showInfoFunction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "showInfoFunction"

    const-string v0, "AppstoreServiceUtil"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    const-string v1, "Fail-ShowInfo"

    if-nez p1, :cond_2

    invoke-virtual {p0, p4, p5, v1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    return-void

    :cond_2
    const-string p1, "app"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, p2, p4, p5}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->openAppInfo(Ljava/lang/String;J)V

    goto :goto_0

    :cond_3
    const-string p1, "galaxy"

    invoke-static {p3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "showInfoFunction: Not implementation(Galaxy Store)"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p4, p5}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->openGalaxyStore(Ljava/lang/String;J)V

    goto :goto_0

    :cond_4
    const-string p1, "showInfoFunction: Not implementation(No Type)"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p4, p5, v1}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->onCheckStatusFunctionResult(JLjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckStatusFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;->checkStatusFunctionResult(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;JLjava/lang/String;)V

    return-void
.end method

.method public onInstallAppFunctionResult(JLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtilJni;->get()Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil;->mNativeAppstoreServiceUtil:J

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/sec/terrace/browser/extensions/AppstoreServiceUtil$Natives;->installAppFunctionResult(JLcom/sec/terrace/browser/extensions/AppstoreServiceUtil;JLjava/lang/String;)V

    return-void
.end method
