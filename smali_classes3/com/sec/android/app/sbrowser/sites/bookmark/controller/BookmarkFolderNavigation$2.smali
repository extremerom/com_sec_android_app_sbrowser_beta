.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->handleSync(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "BookmarkFolderNavigation"

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    new-instance v5, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelListener;)V

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->setUri(Landroid/net/Uri;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkItem(Ljava/lang/Long;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    const/4 v2, -0x1

    if-eqz v1, :cond_3

    const-string v1, "handleSync calling clear"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->clear()V

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->val$handler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_HISTORY_SYNC_COMPLETED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v1

    invoke-static {v0, v1, v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation$2;->val$handler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_0
    const-string p0, "handleSync ConcurrentModificationException"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
