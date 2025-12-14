.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;
    }
.end annotation


# static fields
.field private static final BACKGROUND_GROUPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;


# instance fields
.field private final mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

.field private mDisconnectCallback:Lcom/sec/terrace/base/TerraceCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/terrace/base/TerraceCallback<",
            "LH/y;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicDisabledFeatures:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDynamicEnabledFeatures:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDynamicIntentFeatureOverridesEnabled:Z

.field private mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

.field private mPrevHeight:I

.field private mSpareTerrace:Lcom/sec/terrace/Terrace;

.field private mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

.field private final mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "/apps/bg_non_interactive"

    const-string v2, "/background"

    const-string v3, "/bg_non_interactive"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->BACKGROUND_GROUPS:Ljava/util/Set;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mIsDynamicIntentFeatureOverridesEnabled:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$mayLaunchUrlInternal$2(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$requestPostMessageChannelInternal$6(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    return-void
.end method

.method public static bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    :try_start_0
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_4

    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$cleanUpSession$7(LH/y;)V

    return-void
.end method

.method public static canGetSchedulerGroup(I)Z
    .locals 1

    const-string v0, "/proc/"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private createSpareTerrace()V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->estimateContentSize()Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const-string v3, "about:blank"

    const-string v4, ""

    invoke-virtual {v1, v3, v4, v2, v0}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->addPrerender(Ljava/lang/String;Ljava/lang/String;II)Lcom/sec/terrace/Terrace;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mSpareTerrace:Lcom/sec/terrace/Terrace;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$newSessionInternal$0(LH/y;)V

    return-void
.end method

.method private destroySpareTerrace()V
    .locals 2

    const-string v0, "CustomTabsConnection"

    const-string v1, "destroySpareTerrace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->takeSpareTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->close()V

    :cond_0
    return-void
.end method

.method private doMayLaunchUrlOnUiThread(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "LH/y;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p7, :cond_0

    new-instance v9, Lcom/sec/android/app/sbrowser/customtabs/n;

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/n;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;I)V

    invoke-static {v9}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p0

    move-object/from16 v5, p6

    invoke-direct {p0, v5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lowConfidenceMayLaunchUrl(Ljava/util/List;)Z

    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object/from16 v5, p6

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->highConfidenceMayLaunchUrl(LH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public static synthetic e(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$updateVisuals$5(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private estimateContentSize()Landroid/graphics/Point;
    .locals 2

    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :try_start_0
    iget v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public static synthetic f(Ljava/util/ArrayList;LH/y;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$updateVisuals$4(Ljava/util/List;LH/y;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$doMayLaunchUrlOnUiThread$3(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->sInstance:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;-><init>()V

    sput-object v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->sInstance:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->sInstance:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getSchedulerGroup(I)Ljava/lang/String;
    .locals 5

    const-string v0, "/proc/"

    const-string v1, "/cgroup"

    invoke-static {p0, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cpuset"

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    aget-object v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    return-object v1

    :goto_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v1
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->lambda$warmupInternal$1(ZZI)V

    return-void
.end method

.method private static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->sInstance:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private highConfidenceMayLaunchUrl(LH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/y;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->cancelSpeculation(LH/y;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const-string v1, "android.support.customtabs.maylaunchurl.NO_PRERENDERING"

    invoke-virtual {p4, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-static {}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->getInstance()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->maybePreconnectUrlAndSubResources(Ljava/lang/String;)V

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->maySpeculate(LH/y;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->prerenderUrl(LH/y;Ljava/lang/String;Landroid/os/Bundle;I)Z

    move-result v0

    :cond_2
    invoke-direct {p0, p5}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->preconnectUrls(Ljava/util/List;)Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->createSpareTerrace()V

    :cond_3
    return-void
.end method

.method private static initializeBrowser(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/TerraceHelper;->initializeSync(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->warmUp(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TerraceNetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "NotEnoughStorage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showStorageFullDialog(Landroid/content/Context;)Lm/l;

    :cond_0
    :goto_0
    return-void
.end method

.method private static isBackgroundProcess(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->BACKGROUND_GROUPS:Ljava/util/Set;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getSchedulerGroup(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isCallerForegroundOrSelf()Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->canGetSchedulerGroup(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isBackgroundProcess(I)Z

    move-result p0

    return p0
.end method

.method private isValid(Landroid/net/Uri;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private synthetic lambda$cleanUpSession$7(LH/y;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->cleanupSession(LH/y;)V

    return-void
.end method

.method private synthetic lambda$doMayLaunchUrlOnUiThread$3(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->doMayLaunchUrlOnUiThread(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$mayLaunchUrlInternal$2(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
    .locals 8

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->doMayLaunchUrlOnUiThread(ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$newSessionInternal$0(LH/y;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->cancelSpeculation(LH/y;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mDisconnectCallback:Lcom/sec/terrace/base/TerraceCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/base/TerraceCallback;->onResult(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$requestPostMessageChannelInternal$6(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->verifyOriginForSession(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->verifyAndInitializeWithPostMessageOriginForSession(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->uri()Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->initializeWithPostMessageOriginForSession(LH/y;Landroid/net/Uri;Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$updateVisuals$4(Ljava/util/List;LH/y;Ljava/util/List;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateCustomButton(LH/y;ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateVisuals$5(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->updateRemoteViews(LH/y;Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$warmupInternal$1(ZZI)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->initializeBrowser(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->createSpareTerrace()V

    :cond_1
    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->notifyWarmupIsDone(I)V

    return-void
.end method

.method private lowConfidenceMayLaunchUrl(Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->preconnectUrls(Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->createSpareTerrace()V

    const/4 p0, 0x1

    return p0
.end method

.method private mayLaunchUrlInternal(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/y;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p4, :cond_1

    move v3, v9

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isValid(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v5, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :goto_2
    if-eqz p2, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    return v2

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->warmupInternal(Z)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    if-eqz p4, :cond_5

    move v7, v9

    goto :goto_3

    :cond_5
    move v7, v2

    :goto_3
    invoke-virtual {v0, p1, v4, v5, v7}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->updateStatsAndReturnWhetherAllowed(LH/y;ILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    new-instance v10, Lcom/sec/android/app/sbrowser/customtabs/n;

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p0

    move v2, v3

    move-object v3, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/n;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZLH/y;ILjava/lang/String;Landroid/os/Bundle;Ljava/util/List;I)V

    invoke-static {v10}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return v9
.end method

.method private newSessionInternal(LH/y;)Z
    .locals 6

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v3, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 v0, 0x5

    invoke-direct {v3, v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    new-instance v5, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$1;

    invoke-direct {v5, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;)V

    new-instance v4, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;

    invoke-direct {v4, v5}, Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;-><init>(LH/A;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->newSession(LH/y;ILcom/sec/android/app/sbrowser/customtabs/ClientManager$DisconnectCallback;Lcom/sec/terrace/browser/customtabs/TerracePostMessageHandler;LH/C;)Z

    move-result p0

    return p0
.end method

.method private notifyWarmupIsDone(I)V
    .locals 4

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->uidToSessions(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LH/y;

    const-string v2, "onWarmupCompleted"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->safeExtraCallback(LH/y;Ljava/lang/String;Landroid/os/Bundle;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {v1, v0}, LH/c;->onWarmupCompleted(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onWarmupCompleted()"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onTrimMemory(I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->hasInstance()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-gt v0, v1, :cond_3

    const/16 v0, 0xa

    if-lt p0, v0, :cond_1

    const/16 v0, 0x14

    if-lt p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->cleanupUnusedSessions()V

    :cond_3
    return-void
.end method

.method private preconnectUrls(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->getInstance()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_0
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    :try_start_0
    const-string v3, "android.support.customtabs.otherurls.URL"

    invoke-static {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isValid(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->maybePreconnectUrlAndSubResources(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private prerenderUrl(LH/y;Ljava/lang/String;Landroid/os/Bundle;I)Z
    .locals 9

    const-string v0, "CustomTabsConnection"

    const-string v1, "prerenderUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->getInstance()Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/prerender/TerraceWarmupManager;->disallowPrerendering()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->maySpeculate(LH/y;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->cancelCurrentPrerender()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v0, p4}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->isPrerenderingAllowed(I)Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->destroySpareTerrace()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p3, :cond_6

    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_6
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getExtraHeadersFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    if-nez v1, :cond_8

    new-instance v1, Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    invoke-direct {v1}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    :cond_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->estimateContentSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getReferrerUrlIncludingExtraHeaders(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    :cond_9
    move-object v6, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, p2, v6, v2, v1}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->addPrerender(Ljava/lang/String;Ljava/lang/String;II)Lcom/sec/terrace/Terrace;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v0, p4, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->registerPrerenderRequest(ILjava/lang/String;)V

    new-instance p4, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    const/4 v8, 0x0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;-><init>(LH/y;Lcom/sec/terrace/Terrace;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    const/4 p0, 0x1

    return p0
.end method

.method private requestPostMessageChannelInternal(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z
    .locals 8
    .param p3    # Lcom/sec/terrace/browser/customtabs/TerraceOrigin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isCallerForegroundOrSelf()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->bindToPostMessageServiceForSession(LH/y;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/p;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/customtabs/p;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private warmupInternal(Z)Z
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isCallerForegroundOrSelf()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->recordUidHasCalledWarmup(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    xor-int/2addr v1, v3

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/o;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/o;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;ZZI)V

    invoke-static {v2}, Lcom/sec/terrace/base/TerraceThreadUtils;->postOnUiThread(Ljava/lang/Runnable;)V

    return v3
.end method


# virtual methods
.method public areExperimentsSupported(Ljava/util/List;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cancelSpeculation(LH/y;)V
    .locals 2

    const-string v0, "CustomTabsConnection"

    const-string v1, "cancelSpeculation()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->F(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)LH/y;

    move-result-object v0

    invoke-virtual {p1, v0}, LH/y;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mTerraceExternalPrerenderHandler:Lcom/sec/terrace/TerraceExternalPrerenderHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceExternalPrerenderHandler;->cancelCurrentPrerender()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->close()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    :cond_1
    return-void
.end method

.method public cleanUpSession(LH/y;)V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dontKeepAliveForSession(LH/y;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->dontKeepAliveForSession(LH/y;)V

    return-void
.end method

.method public extraCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientPackageNameForSession(LH/y;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getClientPackageNameForSession(LH/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultReferrerForSession(LH/y;)Lcom/sec/terrace/browser/TerraceReferrer;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getDefaultReferrerForSession(LH/y;)Lcom/sec/terrace/browser/TerraceReferrer;

    move-result-object p0

    return-object p0
.end method

.method public getExtrasBundleForNavigationEventForSession(LH/y;)Landroid/os/Bundle;
    .locals 2

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p1, "timestampUptimeMillis"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object p0
.end method

.method public isFirstParty(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public keepAliveForSession(LH/y;Landroid/content/Intent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->keepAliveForSession(LH/y;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public logCall(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, p2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s=%b, Calling UID=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomTabsConnection"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public logCallback(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    const-string p0, "%s args = %s"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CustomTabsConnection"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public mayLaunchUrl(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LH/y;",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mayLaunchUrlInternal(LH/y;Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "mayLaunchUrl("

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public maySpeculate(LH/y;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->maySpeculateWithResult(LH/y;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public maySpeculateWithResult(LH/y;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newSession(LH/y;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->newSessionInternal(LH/y;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "newSession()"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public notifyNavigationEvent(LH/y;ILandroid/os/Bundle;)Z
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p3, :cond_1

    :try_start_0
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v2, "timestampUptimeMillis"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p3, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getExtrasBundleForNavigationEventForSession(LH/y;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, LH/c;->onNavigationEvent(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onNavigationEvent()"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :goto_1
    const-string p1, "onNavigationEvent() failed : "

    const-string p2, "CustomTabsConnection"

    invoke-static {p0, p1, p2}, Landroidx/recyclerview/widget/P;->r(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public onActivityLayout(LH/y;IIIII)V
    .locals 8
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "left"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "top"

    invoke-virtual {v0, v1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "right"

    invoke-virtual {v0, v1, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "bottom"

    invoke-virtual {v0, v1, p5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "state"

    invoke-virtual {v0, v1, p6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onActivityLayout"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->safeExtraCallback(LH/y;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extraCallback(onActivityLayout)"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v7}, LH/c;->onActivityLayout(IIIIILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p6, "("

    invoke-direct {p1, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr p3, p5

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onActivityLayout()"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method

.method public onResized(LH/y;II)V
    .locals 2
    .param p1    # LH/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrevHeight:I

    if-eq p2, v1, :cond_1

    const-string v1, "size"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "onResized"

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->safeExtraCallback(LH/y;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "extraCallback(onResized)"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iput p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrevHeight:I

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    invoke-virtual {p1, p2, p3, v0}, LH/c;->onActivityResized(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "("

    const-string v0, "x"

    const-string v1, ")"

    invoke-static {p2, p3, p1, v0, v1}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onActivityResized()"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCallback(Ljava/lang/String;Ljava/lang/Object;)V

    :catch_0
    return-void
.end method

.method public postMessage(LH/y;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isCallerForegroundOrSelf()Z

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p3, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->postMessage(LH/y;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "postMessage"

    invoke-virtual {p0, p3, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public receiveFile(LH/y;Landroid/net/Uri;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestPostMessageChannel(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z
    .locals 1
    .param p3    # Lcom/sec/terrace/browser/customtabs/TerraceOrigin;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->requestPostMessageChannelInternal(LH/y;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Z

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "requestPostMessageChannel() with origin "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method

.method public resetPostMessageHandlerForSession(LH/y;Lcom/sec/terrace/Terrace;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->resetPostMessageHandlerForSession(LH/y;Lcom/sec/terrace/Terrace;)V

    return-void
.end method

.method public safeExtraCallback(LH/y;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p1, "CustomTabsConnection::safeExtraCallback"

    invoke-static {p1}, Lcom/sec/terrace/TerraceTraceEvent;->begin(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, LH/c;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/sec/terrace/TerraceTraceEvent;->end(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setupDynamicFeatures(Landroid/content/Intent;)Z
    .locals 2

    invoke-static {p1}, LH/y;->a(Landroid/content/Intent;)LH/y;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mIsDynamicIntentFeatureOverridesEnabled:Z

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedCustomTab(Landroid/content/Intent;LH/y;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->setupDynamicFeaturesInternal(Landroid/content/Intent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public setupDynamicFeaturesInternal(Landroid/content/Intent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mDynamicEnabledFeatures:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mDynamicDisabledFeatures:Ljava/util/List;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.chrome.browser.customtabs.EXPERIMENTS_ENABLE"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "org.chromium.chrome.browser.customtabs.EXPERIMENTS_DISABLE"

    invoke-static {p1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->areExperimentsSupported(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mDynamicEnabledFeatures:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mDynamicDisabledFeatures:Ljava/util/List;

    const-string p0, "CustomTabsConnection"

    const-string p1, "The Metrics Service is not available, so no synthetic field trial"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method public takePrerenderedUrl(LH/y;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/Terrace;
    .locals 4

    const-string v0, "CustomTabsConnection"

    const-string v1, "takePrerenderedUrl()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->F(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)LH/y;

    move-result-object v0

    invoke-virtual {p1, v0}, LH/y;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->G(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Lcom/sec/terrace/Terrace;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->H(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;->E(Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;)Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mPrerender:Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection$PrerenderedUrlParams;

    return-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->cancelSpeculation(LH/y;)V

    :cond_3
    :goto_0
    return-object v1
.end method

.method public takeSpareTerrace()Lcom/sec/terrace/Terrace;
    .locals 2

    const-string v0, "CustomTabsConnection"

    const-string v1, "takeSpareTerrace()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/base/TerraceThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mSpareTerrace:Lcom/sec/terrace/Terrace;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mSpareTerrace:Lcom/sec/terrace/Terrace;

    return-object v0
.end method

.method public updateVisuals(LH/y;Landroid/os/Bundle;)Z
    .locals 15

    move-object/from16 v0, p2

    invoke-static/range {p2 .. p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "updateVisuals: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CustomTabsConnection"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.support.customtabs.extra.ACTION_BUTTON_BUNDLE"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundle(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "android.support.customtabs.customaction.ID"

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1, v2, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v1, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableArrayList(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v3, v2, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetInt(Landroid/os/Bundle;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseBitmapFromBundle(Landroid/os/Bundle;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->parseDescriptionFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    :try_start_0
    new-instance v1, Lcom/samsung/android/sdk/scs/ai/text/category/a;

    const/4 v3, 0x1

    move-object v2, v1

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/scs/ai/text/category/a;-><init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v1, v8

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    :goto_1
    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/RemoteViews;

    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntArray(Landroid/os/Bundle;Ljava/lang/String;)[I

    move-result-object v11

    const-string v2, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PendingIntent;

    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/scs/ai/text/category/a;

    const/4 v10, 0x2

    move-object v9, v0

    move-object/from16 v12, p1

    invoke-direct/range {v9 .. v14}, Lcom/samsung/android/sdk/scs/ai/text/category/a;-><init>(ILjava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/sec/terrace/base/TerraceThreadUtils;->runOnUiThreadBlocking(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    and-int v8, v1, v0

    goto :goto_2

    :cond_6
    move v8, v1

    :catch_1
    :goto_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "updateVisuals()"

    move-object v2, p0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return v8
.end method

.method public validateRelationship(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mWarmupHasBeenCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p4, "CustomTabsConnection"

    const-string v0, "Verification failed due to warmup not having been previously called."

    invoke-static {p4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->getCallbackForSession(LH/y;)LH/c;

    move-result-object p0

    invoke-virtual {p3}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 p3, 0x0

    const/4 p4, 0x0

    invoke-virtual {p0, p2, p1, p4, p3}, LH/c;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    return p4

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->mClientManager:Lcom/sec/android/app/sbrowser/customtabs/ClientManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/customtabs/ClientManager;->validateRelationship(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public verifyOriginForSession(LH/y;ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    if-ne p2, p0, :cond_0

    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public warmup(J)Z
    .locals 1

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->warmupInternal(Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "warmup()"

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->logCall(Ljava/lang/String;Ljava/lang/Object;)V

    return p1
.end method
