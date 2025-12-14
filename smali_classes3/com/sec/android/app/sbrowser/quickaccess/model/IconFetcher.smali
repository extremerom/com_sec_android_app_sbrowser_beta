.class Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;
    }
.end annotation


# instance fields
.field private mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

.field private mIconFetchListener:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;

.field private mRequestList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;)Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mIconFetchListener:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestIconToWebContentFetcher(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method private requestIconToWebContentFetcher(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;

    invoke-direct {v1, p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;->fetchTouchIcon(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$FetchContentCallback;)V

    return-void
.end method


# virtual methods
.method public getFaviconHelper()Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    invoke-direct {v0}, Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mFaviconHelper:Lcom/sec/terrace/browser/favicon/TerraceFaviconHelper;

    return-object p0
.end method

.method public getRequestList()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    return-object p0
.end method

.method public onFetchedFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mIconFetchListener:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;->onFetchFinished(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public requestFetchIcon(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestIconToFaviconHelper(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public requestFetchIconByIconUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/l;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/l;->a()Lcom/bumptech/glide/j;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/bumptech/glide/j;->D(Ljava/lang/Object;)Lcom/bumptech/glide/j;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ll4/f;->a:LR5/n;

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p1, p0}, Lcom/bumptech/glide/j;->A(Li4/d;Lh4/f;Lh4/a;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public requestIconToFaviconHelper(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x4

    :try_start_0
    filled-new-array {v1, v2, v0}, [I

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;Ljava/lang/String;[I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestIconToFaviconHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quickaccess.IconFetcher"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mIconFetchListener:Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;

    return-void
.end method

.method public setRequestListForTest(Ljava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->mRequestList:Ljava/util/List;

    return-void
.end method
