.class public Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/installedapp/mojom/InstalledAppProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;
    }
.end annotation


# static fields
.field static final ASSET_STATEMENTS_KEY:Ljava/lang/String; = "asset_statements"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RELATED_APP_PLATFORM_ANDROID:Ljava/lang/String; = "play"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final RELATED_APP_PLATFORM_WEBAPP:Ljava/lang/String; = "webapp"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;

.field private mIsTestingMode:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;

    iput-object p2, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;Lcom/sec/terrace/browser/installedapp/a;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->delayThenRun(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;[Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;)Landroid/util/Pair;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->filterInstalledAppsOnBackgroundThread([Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private calculateDelayForPackageMs(Ljava/lang/String;)I
    .locals 0

    invoke-static {p1}, Lcom/sec/terrace/browser/installedapp/TinPackageHash;->hashForPackage(Ljava/lang/String;)S

    move-result p0

    and-int/lit16 p0, p0, 0x3ff

    div-int/lit8 p0, p0, 0x64

    return p0
.end method

.method private delayThenRun(Ljava/lang/Runnable;J)V
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mIsTestingMode:Z

    if-eqz p0, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0, p1, p2, p3}, Lorg/chromium/base/task/PostTask;->postDelayedTask(ILjava/lang/Runnable;J)V

    return-void
.end method

.method private filterInstalledAppsOnBackgroundThread([Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/chromium/installedapp/mojom/RelatedApplication;",
            "Lorg/chromium/url/mojom/Url;",
            "Lorg/chromium/url/GURL;",
            ")",
            "Landroid/util/Pair<",
            "[",
            "Lorg/chromium/installedapp/mojom/RelatedApplication;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, p1, v3

    iget-object v6, v5, Lorg/chromium/installedapp/mojom/RelatedApplication;->platform:Ljava/lang/String;

    const-string v7, "play"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v5, Lorg/chromium/installedapp/mojom/RelatedApplication;->id:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-direct {p0, v6}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->calculateDelayForPackageMs(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, v5, Lorg/chromium/installedapp/mojom/RelatedApplication;->id:Ljava/lang/String;

    invoke-direct {p0, v6, p3, v1}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->isAppInstalledAndAssociatedWithOrigin(Ljava/lang/String;Lorg/chromium/url/GURL;Landroid/content/pm/PackageManager;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v6, v5, Lorg/chromium/installedapp/mojom/RelatedApplication;->platform:Ljava/lang/String;

    const-string v7, "webapp"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v5, Lorg/chromium/installedapp/mojom/RelatedApplication;->url:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v7, p2, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p2, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->calculateDelayForPackageMs(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    iget-object v6, p2, Lorg/chromium/url/mojom/Url;->url:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->isWebApkInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/installedapp/mojom/RelatedApplication;

    iget-object p3, p2, Lorg/chromium/installedapp/mojom/RelatedApplication;->id:Ljava/lang/String;

    if-eqz p3, :cond_3

    invoke-direct {p0, p2}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->setVersionInfo(Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lorg/chromium/installedapp/mojom/RelatedApplication;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static getAssetStatements(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lorg/json/JSONArray;
    .locals 6

    const-string v0, ")."

    const-string v1, "Android package "

    const-string v2, "InstalledAppProvider"

    const/16 v3, 0x80

    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "asset_statements"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    const-string p1, " has JSON syntax error in asset statements resource (0x"

    invoke-static {v1, p0, p1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    :catch_1
    const-string p1, " missing asset statements resource (0x"

    invoke-static {v1, p0, p1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    return-object p0
.end method

.method private static getSiteForWebAsset(Lorg/json/JSONObject;)Lorg/chromium/url/GURL;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "target"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->isAssetWeb(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v1, Lorg/chromium/url/GURL;

    const-string v2, "site"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/chromium/url/GURL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    return-object v0
.end method

.method private isAppInstalledAndAssociatedWithOrigin(Ljava/lang/String;Lorg/chromium/url/GURL;Landroid/content/pm/PackageManager;)Z
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnBackgroundThread()V

    const/4 p0, 0x0

    if-nez p2, :cond_0

    return p0

    :cond_0
    :try_start_0
    invoke-static {p1, p3}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->getAssetStatements(Ljava/lang/String;Landroid/content/pm/PackageManager;)Lorg/json/JSONArray;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move p3, p0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge p3, v0, :cond_2

    :try_start_1
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->getSiteForWebAsset(Lorg/json/JSONObject;)Lorg/chromium/url/GURL;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->statementTargetMatches(Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :catch_1
    :cond_2
    return p0
.end method

.method private static isAssetWeb(Lorg/json/JSONObject;)Z
    .locals 1

    :try_start_0
    const-string v0, "namespace"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "web"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method private isWebApkInstalled(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryBoundWebApkForManifestUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setVersionInfo(Lorg/chromium/installedapp/mojom/RelatedApplication;)V
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v0, p1, Lorg/chromium/installedapp/mojom/RelatedApplication;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object p0, p1, Lorg/chromium/installedapp/mojom/RelatedApplication;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static statementTargetMatches(Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/url/GURL;->getPort()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/chromium/url/GURL;->getPort()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public enableTestingMode()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mIsTestingMode:Z

    return-void
.end method

.method public filterInstalledApps([Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;ZLorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;)V
    .locals 7

    iget-object p3, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;

    invoke-interface {p3}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;->isIncognito()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    new-array p0, v0, [Lorg/chromium/installedapp/mojom/RelatedApplication;

    invoke-interface {p4, p0}, Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;->call([Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    return-void

    :cond_0
    iget-object p3, p0, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;->mFrameUrlDelegate:Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;

    invoke-interface {p3}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$FrameUrlDelegate;->getUrl()Lorg/chromium/url/GURL;

    move-result-object v5

    if-nez v5, :cond_1

    new-array p0, v0, [Lorg/chromium/installedapp/mojom/RelatedApplication;

    invoke-interface {p4, p0}, Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;->call([Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    return-void

    :cond_1
    new-instance p3, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;-><init>(Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl;[Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;Lorg/chromium/url/GURL;Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public onConnectionError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 0

    return-void
.end method
