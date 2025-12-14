.class public Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;
.super LY5/i;
.source "SourceFile"


# instance fields
.field private mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

.field private mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

.field private mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, LY5/i;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/wearable/ChannelClient$Channel;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->lambda$getRunnable$0(Ljava/io/InputStream;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/wearable/ChannelClient$Channel;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->lambda$onChannelOpened$1(Lcom/google/android/gms/wearable/ChannelClient$Channel;Ljava/io/InputStream;)V

    return-void
.end method

.method private getRunnable(Lcom/google/android/gms/wearable/ChannelClient$Channel;Ljava/io/InputStream;)Ljava/lang/Runnable;
    .locals 2

    new-instance v0, LJ8/d;

    const/16 v1, 0x17

    invoke-direct {v0, p0, v1, p2, p1}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleMessage(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    if-nez v0, :cond_0

    const-string p0, "BookmarkWearableService"

    const-string p1, "Service has been destroyed"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->readRequestMessage(Ljava/lang/String;)V

    const-string p1, "sync"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->loadBookmarks()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    const-string p1, "update"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->isSyncStatusOn()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getActionType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->updateBookmark(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "sync_status"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getSyncStatusValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->updateSyncPreference(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p1, "show_on_phone"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;->showBookmarkOnPhone(Ljava/lang/String;)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private synthetic lambda$getRunnable$0(Ljava/io/InputStream;Lcom/google/android/gms/wearable/ChannelClient$Channel;)V
    .locals 8

    const-string v0, "BookmarkWearableService"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v3, 0x1388

    new-array v4, v3, [B

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v2, v4, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message size: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->handleMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    invoke-static {p0}, LY5/h;->a(Landroid/content/Context;)LN5/d;

    move-result-object p0

    invoke-virtual {p0, p2}, LN5/d;->c(Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    goto :goto_3

    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    invoke-static {p0}, LY5/h;->a(Landroid/content/Context;)LN5/d;

    move-result-object p0

    invoke-virtual {p0, p2}, LN5/d;->c(Lcom/google/android/gms/wearable/ChannelClient$Channel;)V

    throw p1
.end method

.method private synthetic lambda$onChannelOpened$1(Lcom/google/android/gms/wearable/ChannelClient$Channel;Ljava/io/InputStream;)V
    .locals 2

    const-string v0, "BookmarkWearableService"

    const-string v1, "input stream onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->getRunnable(Lcom/google/android/gms/wearable/ChannelClient$Channel;Ljava/io/InputStream;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onChannelOpened(Lcom/google/android/gms/wearable/ChannelClient$Channel;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/wearable/ChannelClient$Channel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    invoke-static {v0}, LY5/h;->a(Landroid/content/Context;)LN5/d;

    move-result-object v0

    const-string v1, "channel must not be null"

    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/o;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/wearable/internal/zzbq;

    invoke-virtual {v0}, Lb5/j;->asGoogleApiClient()Lb5/m;

    move-result-object v0

    new-instance v2, LZ5/f;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, LZ5/f;-><init>(Lcom/google/android/gms/wearable/internal/zzbq;Lb5/m;I)V

    check-cast v0, Lc5/C;

    iget-object v0, v0, Lc5/C;->b:Lb5/j;

    invoke-virtual {v0, v2}, Lb5/j;->doRead(Lc5/e;)Lc5/e;

    move-result-object v0

    sget-object v1, LZ5/d;->c:LZ5/d;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/o;->l(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lcom/google/android/gms/common/internal/n;)LR5/p;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/a;-><init>(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, LR5/p;->e(LR5/e;)LR5/p;

    return-void
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, LY5/i;->onCreate()V

    const-string v0, "BookmarkWearableService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    invoke-super {p0}, LY5/i;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "BookmarkWearableService"

    const-string v1, "on Destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkSyncModel:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableSyncModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableService;->mBookmarkWearableServiceHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/wearable_sync/BookmarkWearableServiceHelper;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, LY5/i;->onDestroy()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
