.class public Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache$Client;
    }
.end annotation


# static fields
.field private static final sInstance:Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;


# instance fields
.field private mHttpResponseCache:Landroid/net/http/HttpResponseCache;

.field private mInstallFailed:Z

.field private mRefCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->sInstance:Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mRefCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->attach()V

    return-void
.end method

.method private attach()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mRefCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mInstallFailed:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->install()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->detach()V

    return-void
.end method

.method public static bridge synthetic c()Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->sInstance:Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;

    return-object v0
.end method

.method private close()V
    .locals 3

    const-string v0, "close"

    const-string v1, "SBrowserHttpResponseCache"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    invoke-virtual {v0}, Landroid/net/http/HttpResponseCache;->flush()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Unexpected exception during closing http response cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    return-void
.end method

.method private detach()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mRefCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->flush()V

    :cond_0
    return-void
.end method

.method private flush()V
    .locals 2

    const-string v0, "flush"

    const-string v1, "SBrowserHttpResponseCache"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    invoke-virtual {p0}, Landroid/net/http/HttpResponseCache;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Unexpected exception during flushing http response cache"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private install()V
    .locals 6

    const-string v0, "install"

    const-string v1, "SBrowserHttpResponseCache"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v3, Ljava/io/File;

    const-string v4, "sbrowser-responsecache"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v4, 0x1400000

    invoke-static {v3, v4, v5}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mInstallFailed:Z

    const-string v2, "Unexpected exception during installing http response cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mInstallFailed:Z

    const-string v2, "IOException during installing http response cache"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mInstallFailed:Z

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->flush()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mHttpResponseCache:Landroid/net/http/HttpResponseCache;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->mInstallFailed:Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserHttpResponseCache;->close()V

    :cond_2
    :goto_0
    return-void
.end method
