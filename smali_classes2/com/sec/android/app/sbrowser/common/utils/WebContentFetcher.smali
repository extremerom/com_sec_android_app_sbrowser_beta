.class public Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;,
        Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;,
        Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;
    }
.end annotation


# static fields
.field private static final TOUCH_ICON_TAG_SELECTORS:[Ljava/lang/String;

.field private static final VERSION_TAG_SELECTOR:Ljava/lang/String; = "head meta[name=version]"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "head link[rel=icon]"

    const-string v1, "body link[rel=apple-touch-icon]"

    const-string v2, "head link[rel=apple-touch-icon]"

    const-string v3, "head link[rel=apple-touch-icon-precomposed]"

    const-string v4, "head link[rel=shortcut icon]"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->TOUCH_ICON_TAG_SELECTORS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;-><init>()V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->lambda$fetchContent$2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->lambda$fetchTouchIcon$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method private completeContentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p2

    :cond_1
    const-string p0, "//"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isHttpsUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "https://"

    goto :goto_0

    :cond_2
    const-string p0, "http://"

    :goto_0
    invoke-static {p0}, LB/e;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "/"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_5
    invoke-static {p1, p0, p2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const-string p0, "WebContentFetcher"

    const-string p1, "completeContentUrl - invalid input"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->lambda$fetchContent$1(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void
.end method

.method private fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fetchContent - type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebContentFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fetchContent - callback : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "fetchContent - page : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v8, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;-><init>(I)V

    iput-object p1, v8, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mType:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    iput-object p2, v8, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mPageUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v8, p3}, Lcom/sec/android/app/sbrowser/common/utils/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v6

    new-instance p3, Lcom/sec/android/app/sbrowser/common/utils/g;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p2

    move-object v5, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/common/utils/g;-><init>(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V

    invoke-direct {p0, p3}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->runOnWorkerThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "fetchContent - invalid input"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string v0, " "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    const-string v3, "charset="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "="

    const/4 v0, 0x2

    invoke-virtual {v2, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    if-eq v1, v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x1

    aget-object p0, p1, p0

    return-object p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
    .locals 4

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    monitor-enter v0

    :try_start_0
    const-class v1, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getMaxLimitedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/16 v3, 0x12c

    if-gt v1, v3, :cond_1

    if-gt v2, v3, :cond_1

    return-object p0

    :cond_1
    const/high16 v4, 0x43960000    # 300.0f

    if-le v1, v2, :cond_2

    int-to-float v1, v1

    div-float/2addr v4, v1

    int-to-float v1, v2

    mul-float/2addr v1, v4

    float-to-int v1, v1

    goto :goto_0

    :cond_2
    int-to-float v2, v2

    div-float/2addr v4, v2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    move v5, v3

    move v3, v1

    move v1, v5

    :goto_0
    if-lez v3, :cond_4

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, v3, v1, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private getOgImage(LQd/j;)Ljava/lang/String;
    .locals 1

    const-string v0, "head meta[property=og:image]"

    invoke-virtual {p1, v0}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, LRd/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOgTitle(LQd/j;)Ljava/lang/String;
    .locals 1

    const-string v0, "head meta[property=og:title]"

    invoke-virtual {p1, v0}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object p1

    const-string v0, "content"

    invoke-virtual {p1, v0}, LRd/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitle(LQd/j;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, LQd/j;->P()LQd/n;

    move-result-object p1

    sget-object v0, LQd/j;->m:LRd/f;

    new-instance v1, Lo3/t;

    invoke-direct {v1, v0}, Lo3/t;-><init>(LRd/n;)V

    invoke-virtual {v1, p1, p1}, Lo3/t;->h(LQd/n;LQd/n;)LQd/n;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, LQd/n;->L()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, LPd/b;->b()Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, LPd/b;->a(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-static {v0}, LPd/b;->g(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTouchIconUrl(LQd/j;)Ljava/lang/String;
    .locals 5

    sget-object p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->TOUCH_ICON_TAG_SELECTORS:[Ljava/lang/String;

    array-length v0, p0

    const-string v1, ""

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object v3

    const-string v4, "href"

    invoke-virtual {v3, v4}, LRd/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, ".ico"

    invoke-virtual {v3, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    move-object v1, v3

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-object v1
.end method

.method private getVersion(LQd/j;)Ljava/lang/String;
    .locals 0

    const-string p0, "head meta[name=version]"

    invoke-virtual {p1, p0}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object p0

    const-string p1, "content"

    invoke-virtual {p0, p1}, LRd/d;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "couldn\'t fetched"

    return-object p0
.end method

.method private static synthetic lambda$fetchContent$1(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content fetched - type : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mType:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "empty"

    goto :goto_0

    :cond_0
    const-string v1, "not empty"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebContentFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mType:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mPageUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContentUrl:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;->onContentFetched(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$fetchContent$2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchHtmlDocument(Ljava/lang/String;ILjava/lang/String;)LQd/j;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "WebContentFetcher"

    const-string p1, "fetchContent - fetching or parsing html failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$1;->$SwitchMap$com$sec$android$app$sbrowser$common$utils$WebContentFetcher$ContentType:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v1, p4

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getVersion(LQd/j;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getOgImage(LQd/j;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getOgTitle(LQd/j;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getTitle(LQd/j;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getTouchIconUrl(LQd/j;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->completeContentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getTouchIconUrl(LQd/j;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->completeContentUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchTouchIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContent:Ljava/lang/Object;

    iput-object p1, p5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchResult;->mContentUrl:Ljava/lang/String;

    :goto_0
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$fetchTouchIcon$0(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method private replaceEscapeChars(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\t|\\n"

    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private runOnWorkerThread(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public fetchHtmlDocument(Ljava/lang/String;ILjava/lang/String;)LQd/j;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Failed to close stream : "

    const-string v1, "stopped to fetch : "

    const-string v2, "responseCode : "

    const-string v3, "encoding : "

    const-string v4, "Charset : "

    const-string v5, "WebContentFetcher"

    const-string v6, "fetchHtmlDocument"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-le p2, v6, :cond_0

    const-string p0, "Exceed max redirection count"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_0
    :try_start_0
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserAgent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "User-Agent"

    invoke-virtual {v6, v9, v8}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_9

    :catch_0
    move-exception p0

    move-object p2, v7

    goto/16 :goto_7

    :cond_1
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "Cookie"

    invoke-virtual {v6, v8, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p3, 0x2710

    invoke-virtual {v6, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 p3, 0x1

    invoke-virtual {v6, p3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_6

    const/16 v3, 0x19c

    if-eq v8, v3, :cond_4

    const/16 v3, 0x12d

    if-eq v8, v3, :cond_3

    const/16 v3, 0x12e

    if-eq v8, v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v2, "Location"

    invoke-virtual {v6, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    add-int/2addr p2, p3

    invoke-virtual {p0, v2, p2, v7}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchHtmlDocument(Ljava/lang/String;ILjava/lang/String;)LQd/j;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object p0

    :cond_4
    :try_start_3
    const-string p0, "Precondition failed"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    move-object p0, v7

    goto/16 :goto_5

    :cond_6
    const-string p2, "Response is success"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    goto :goto_3

    :cond_7
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_8

    const-string v2, "gzip"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_3

    :cond_8
    if-eqz p2, :cond_9

    const-string v2, "deflate"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Ljava/util/zip/InflaterInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3, p3}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {p2, v2, v3}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result p3

    int-to-long v2, p3

    const-wide/32 v8, 0x186a0

    cmp-long p3, v2, v8

    if-lez p3, :cond_a

    const-string p0, "Do not fetch the content"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move-object p0, v7

    move-object v7, p2

    goto :goto_5

    :catchall_1
    move-exception p0

    move-object v7, p2

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_7

    :cond_a
    invoke-static {p2, p0}, Ll5/a;->b(Ljava/io/InputStream;Ljava/lang/String;)LQd/j;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :goto_5
    :try_start_5
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object v7, p0

    goto :goto_8

    :catchall_2
    move-exception p0

    move-object v6, v7

    goto :goto_9

    :catch_4
    move-exception p0

    move-object p2, v7

    move-object v6, p2

    :goto_7
    :try_start_6
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_b

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_8

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_8
    return-object v7

    :goto_9
    :try_start_8
    invoke-static {v7}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    :goto_a
    throw p0
.end method

.method public fetchOgImage(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_IMAGE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchOgTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchTitle(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public fetchTouchIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "Failed to close stream : "

    const-string v1, "stopped to fetch : "

    const-string v2, "responseCode = "

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    const/4 v3, 0x3

    const-string v5, "WebContentFetcher"

    if-le p2, v3, :cond_1

    const-string p0, "Exceed max redirection count"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setUseCaches(Z)V

    const/16 v7, 0x2710

    invoke-virtual {v3, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-eq v7, v8, :cond_4

    const/16 v8, 0x12d

    if-eq v7, v8, :cond_2

    const/16 v8, 0x12e

    if-eq v7, v8, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p2, v4

    goto/16 :goto_4

    :cond_2
    const-string v2, "Location"

    invoke-virtual {v3, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    add-int/2addr p2, v6

    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchTouchIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :cond_3
    :goto_1
    move-object p0, v4

    goto :goto_2

    :cond_4
    :try_start_3
    const-string p0, "icon fetching is success"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getMaxLimitedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    :goto_2
    :try_start_5
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_2
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    move-object v4, p0

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_6

    :catch_3
    move-exception p2

    move-object v9, p2

    move-object p2, p0

    move-object p0, v9

    goto :goto_4

    :catchall_2
    move-exception p0

    move-object v3, v4

    goto :goto_6

    :catch_4
    move-exception p0

    move-object p2, v4

    move-object v3, p2

    :goto_4
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_5

    :catch_5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_5
    return-object v4

    :catchall_3
    move-exception p0

    move-object v4, p2

    :goto_6
    :try_start_8
    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/StreamUtils;->close(Ljava/io/Closeable;)V

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_7
    throw p0
.end method

.method public fetchTouchIcon(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getTerraceBrowsingDataCookieHelper()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object v0

    new-instance v1, LM4/a;

    const/16 v2, 0xf

    invoke-direct {v1, p0, v2, p1, p2}, LM4/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getCookiesForUrl(Ljava/lang/String;Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper$CookiesForUrlListener;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fetchVersion(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->VERSION:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchContent(Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;Ljava/lang/String;)V

    return-void
.end method

.method public getTerraceBrowsingDataCookieHelper()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;->getInstance()Lcom/sec/terrace/browser/browsing_data/TerraceBrowsingDataCookieHelper;

    move-result-object p0

    return-object p0
.end method

.method public isValidUrl(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNetworkUrl(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "WebContentFetcher"

    if-nez p0, :cond_0

    const-string p0, "isValidUrl - not a network url"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setExecutorService(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .param p1    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
