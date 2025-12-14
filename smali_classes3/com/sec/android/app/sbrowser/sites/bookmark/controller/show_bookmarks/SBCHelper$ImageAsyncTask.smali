.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->lambda$doInBackground$0()V

    return-void
.end method

.method private synthetic lambda$doInBackground$0()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->updateChildren()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 8

    const-string p1, "ImageAsyncTask::doInBackground ch len ="

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$ActivityStatus;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getChildrenList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "SBCHelper"

    const-string p1, "initTrackerBlock: TerraceHelper is not initialized"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getChildrenList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "SBCHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v3, :cond_3

    :try_start_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object v4, v4, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getChildrenList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->URL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isTouchiconAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isIconRequested()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const/16 v7, 0x40

    invoke-virtual {v0, v5, v6, v7}, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;->getIcon(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    invoke-static {v6, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    const-string p1, "SBCHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IndexOutOfBoundsException"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$ImageAsyncTask;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->mDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper$BookmarkControllerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/a;

    const/4 v3, 0x0

    invoke-direct {v0, v3, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string p0, "SBCHelper"

    const-string p1, "ImageAsyncTask::doInBackground end"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-object v2

    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_4
    :goto_4
    return-object v2
.end method
