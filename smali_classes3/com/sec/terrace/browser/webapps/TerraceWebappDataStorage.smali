.class public Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;,
        Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;,
        Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;
    }
.end annotation


# static fields
.field static final KEY_ACTION:Ljava/lang/String; = "action"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_BACKGROUND_COLOR:Ljava/lang/String; = "background_color"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_DISPLAY_MODE:Ljava/lang/String; = "display_mode"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ICON:Ljava/lang/String; = "icon"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IS_ICON_ADAPTIVE:Ljava/lang/String; = "is_icon_adaptive"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_IS_ICON_GENERATED:Ljava/lang/String; = "is_icon_generated"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LAST_CHECK_WEB_MANIFEST_UPDATE_TIME:Ljava/lang/String; = "last_check_web_manifest_update_time"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LAST_UPDATE_REQUEST_COMPLETE_TIME:Ljava/lang/String; = "last_update_request_complete_time"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_LAST_USED:Ljava/lang/String; = "last_used"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_NAME:Ljava/lang/String; = "name"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ORIENTATION:Ljava/lang/String; = "orientation"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SCOPE:Ljava/lang/String; = "scope"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SHORT_NAME:Ljava/lang/String; = "short_name"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final KEY_SOURCE:Ljava/lang/String; = "source"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SPLASH_ICON:Ljava/lang/String; = "splash_icon"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SPLASH_SCREEN_URL:Ljava/lang/String; = "splash_screen_url"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_THEME_COLOR:Ljava/lang/String; = "theme_color"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_URL:Ljava/lang/String; = "url"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_VERSION:Ljava/lang/String; = "version"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_WEBAPK_PACKAGE_NAME:Ljava/lang/String; = "webapk_package_name"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final RELAXED_UPDATE_INTERVAL:J

.field private static final RETRY_UPDATE_DURATION:J

.field static final TIMESTAMP_INVALID:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final UPDATE_INTERVAL:J

.field private static final WEBAPP_LAST_OPEN_MAX_TIME:J

.field private static sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

.field private static sFactory:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->UPDATE_INTERVAL:J

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->RELAXED_UPDATE_INTERVAL:J

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->RETRY_UPDATE_DURATION:J

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->WEBAPP_LAST_OPEN_MAX_TIME:J

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;

    invoke-direct {v0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;-><init>(I)V

    sput-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sFactory:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mId:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "webapp_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->lambda$deletePendingUpdateRequestFile$0(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private getLastWebApkUpdateRequestCompletionTimeMs()J
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_update_request_complete_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static synthetic lambda$deletePendingUpdateRequestFile$0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to delete file "

    invoke-static {v0, p0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "TerraceWebappDataStorage"

    invoke-static {v1, p0, v0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static open(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sFactory:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Factory;->create(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearHistory()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->deletePendingUpdateRequestFile()V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_used"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "has_been_launched"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "url"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "scope"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "last_check_web_manifest_update_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "last_update_request_complete_time"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "did_last_update_request_succeed"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "relax_updates"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "dismissed_dislosure"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public createAndSetUpdateRequestFilePath(Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TinWebappDirectoryManager;->getWebApkUpdateFilePathForStorage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "pending_update_file_path"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object p1
.end method

.method public delete()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->deletePendingUpdateRequestFile()V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public deletePendingUpdateRequestFile()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getPendingUpdateRequestPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "pending_update_file_path"

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Lcom/sec/terrace/browser/webapps/b;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sec/terrace/browser/webapps/b;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {v0, p0}, Lorg/chromium/base/task/PostTask;->postTask(ILjava/lang/Runnable;)V

    return-void
.end method

.method public didPreviousUpdateSucceed()Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastWebApkUpdateRequestCompletionTimeMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getDidLastWebApkUpdateRequestSucceed()Z

    move-result p0

    return p0
.end method

.method public getDidLastWebApkUpdateRequestSucceed()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "did_last_update_request_succeed"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getLastCheckForWebManifestUpdateTimeMs()J
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_check_web_manifest_update_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastRequestedShellApkVersion()I
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_requested_shell_apk_version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastUsedTimeMs()J
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "last_used"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPendingUpdateRequestPath()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "pending_update_file_path"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "scope"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSplashScreenImage(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$1;-><init>(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$FetchCallback;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "url"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWebApkPackageName()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "webapk_package_name"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setHasBeenLaunched()V
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "has_been_launched"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setRelaxedUpdates(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "relax_updates"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public shouldCheckForUpdate()Z
    .locals 6

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->shouldRelaxUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->RELAXED_UPDATE_INTERVAL:J

    goto :goto_0

    :cond_0
    sget-wide v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->UPDATE_INTERVAL:J

    :goto_0
    sget-object v2, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    invoke-static {v2}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;->a(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastCheckForWebManifestUpdateTimeMs()J

    move-result-wide v4

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->getLastWebApkUpdateRequestCompletionTimeMs()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->RETRY_UPDATE_DURATION:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->didPreviousUpdateSucceed()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public shouldRelaxUpdates()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v0, "relax_updates"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public updateDidLastWebApkUpdateRequestSucceed(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "did_last_update_request_succeed"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateFromShortcutIntent(Landroid/content/Intent;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    const-string v1, "com.sec.terrace.browser.webapp_url"

    invoke-static {p1, v1}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v6

    :goto_0
    iget-object v4, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "scope"

    invoke-interface {v4, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v2, "com.sec.terrace.browser.webapp_scope"

    invoke-static {p1, v2}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-interface {v0, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v2, v5

    :cond_3
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version"

    invoke-interface {p0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v3, 0x2

    if-eq p0, v3, :cond_4

    const-string p0, "com.sec.terrace.browser.webapp_name"

    invoke-static {p1, p0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "name"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.webapp_short_name"

    invoke-static {p1, p0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "short_name"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.webapp_icon"

    invoke-static {p1, p0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "icon"

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.webapp_display_mode"

    const/4 v1, 0x3

    invoke-static {p1, p0, v1}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    const-string v1, "display_mode"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p0, "org.chromium.content_public.common.orientation"

    invoke-static {p1, p0, v6}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    const-string v1, "orientation"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.theme_color"

    const-wide v1, 0x80000000L

    invoke-static {p1, p0, v1, v2}, Lorg/chromium/base/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v3

    const-string p0, "theme_color"

    invoke-interface {v0, p0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.background_color"

    invoke-static {p1, p0, v1, v2}, Lorg/chromium/base/IntentUtils;->safeGetLongExtra(Landroid/content/Intent;Ljava/lang/String;J)J

    move-result-wide v1

    const-string p0, "background_color"

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.is_icon_generated"

    invoke-static {p1, p0, v6}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "is_icon_generated"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p0, "com.sec.terrace.browser.webapp_icon_adaptive"

    invoke-static {p1, p0, v6}, Lorg/chromium/base/IntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    const-string v1, "is_icon_adaptive"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p0, "action"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object p0, Lcom/sec/terrace/browser/webapps/TerraceWebApkConstants;->EXTRA_WEBAPK_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {p1, p0}, Lorg/chromium/base/IntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "webapk_package_name"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "com.sec.terrace.browser.webapp_source"

    const/4 v1, -0x1

    invoke-static {p1, p0, v1}, Lorg/chromium/base/IntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    const-string p1, "source"

    invoke-interface {v0, p1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_4
    move v5, v2

    :cond_5
    :goto_1
    if-eqz v5, :cond_6

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6
    return-void
.end method

.method public updateLastRequestedShellApkVersion(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_requested_shell_apk_version"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateLastUsedTime()V
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;->a(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;)J

    move-result-wide v0

    const-string v2, "last_used"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSource(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "source"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateSplashScreenImage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "splash_icon"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateTimeOfLastCheckForUpdatedWebManifest()V
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;->a(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;)J

    move-result-wide v0

    const-string v2, "last_check_web_manifest_update_time"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public updateTimeOfLastWebApkUpdateRequestCompletion()V
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;->sClock:Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;->a(Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage$Clock;)J

    move-result-wide v0

    const-string v2, "last_update_request_complete_time"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
