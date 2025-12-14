.class public Lcom/sec/android/app/sbrowser/download/DMSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final MIME_TYPES_TO_OPEN:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    const-string v6, "application/pkix-cert"

    const-string v7, "application/x-wifi-config"

    const-string v1, "application/x-x509-ca-cert"

    const-string v2, "application/x-x509-user-cert"

    const-string v3, "application/x-x509-server-cert"

    const-string v4, "application/x-pkcs12"

    const-string v5, "application/application/x-pem-file"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/download/DMSUtils;->MIME_TYPES_TO_OPEN:Ljava/util/List;

    return-void
.end method

.method public static canResolveDownloadItem(Landroid/content/Context;Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)Z
    .locals 9

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getReferrer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getSystemDownloadId()J

    move-result-wide v6

    move-object v1, p0

    move v8, p2

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getLaunchIntentFromDownloadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/utils/ExternalNavigationHandlerUtil;->resolveIntent(Landroid/content/Intent;Z)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static getIntentForSaveAsPath()Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/GEDUtils;->isGED()Z

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getLaunchIntentFromDownloadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Landroid/content/Intent;
    .locals 9

    move-object v0, p0

    move-wide v1, p5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/download/DownloadPathUtils;->isContentUri(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v2, p4

    goto :goto_0

    :cond_0
    invoke-static {p0, p5, p6}, Lcom/sec/android/app/sbrowser/download/DownloadManagerDelegate;->getContentUriFromDownloadManager(Landroid/content/Context;J)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/DownloadManager;

    invoke-virtual {v4, p5, p6}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/download/DownloadUtils;->createViewIntentForDownloadItem(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPendingIntentForNotification(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3

    const-string v0, "com.sec.android.app.sbrowser.beta.LAUNCH_DOWNLOAD_HISTORY"

    invoke-static {v0}, LB/e;->i(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "IsFromSAINotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getStoredDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static isSupportedMimeType(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static openDownloadsPage(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DMSUtils;->getIntentForSaveAsPath()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f141094

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f141093

    :goto_0
    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v1, p0, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :goto_1
    return-void

    :cond_2
    const-string p0, "DMSUtils"

    const-string v1, "Cannot find Downloads app"

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static shouldOpenAfterDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->hasUserGesture()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/app/sbrowser/download/DMSUtils;->MIME_TYPES_TO_OPEN:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadInfo;->getFeatureId()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static storeDownloadInfo(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
