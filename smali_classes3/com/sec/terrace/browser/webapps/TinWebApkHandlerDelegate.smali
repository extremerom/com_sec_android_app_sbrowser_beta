.class public Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate$Natives;
    }
.end annotation


# instance fields
.field private mNativePointer:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->mNativePointer:J

    return-void
.end method

.method public static create(J)Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;-><init>(J)V

    return-object v0
.end method

.method private onWebApkInfoRetrieved(Landroid/content/pm/PackageInfo;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->mNativePointer:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    return-void

    :cond_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, ""

    const-string v8, ""

    const/4 v9, -0x1

    const/4 v10, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v6 .. v16}, Lcom/sec/terrace/browser/webapps/TerraceWebApkIntentDataProviderFactory;->create(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappIcon;ZZLK/a;Ljava/lang/String;)Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->create(Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->id()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebappDataStorage(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastCheckForWebManifestUpdateTimeMs()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->shouldRelaxUpdates()Z

    move-result v3

    :goto_0
    move/from16 v26, v3

    move-wide/from16 v24, v4

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegateJni;->get()Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate$Natives;

    move-result-object v6

    iget-wide v7, v0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->mNativePointer:J

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shortName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->webApkPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->shellApkVersion()I

    move-result v12

    iget v13, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->url()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->scopeUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->manifestStartUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->displayMode()I

    move-result v18

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->orientation()I

    move-result v19

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->themeColor()J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;->backgroundColor()J

    move-result-wide v22

    invoke-interface/range {v6 .. v26}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate$Natives;->onWebApkInfoRetrieved(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJJZ)V

    return-void
.end method


# virtual methods
.method public isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->mNativePointer:J

    return-void
.end method

.method public retrieveWebApks()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v3}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->isValidWebApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/terrace/browser/webapps/TinWebApkHandlerDelegate;->onWebApkInfoRetrieved(Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    :cond_2
    return-void
.end method
