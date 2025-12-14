.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkFolderHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setBookmarkLevel(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getPCOtherFolderId()J

    move-result-wide v4

    invoke-static {v2, v3, v0, v4, v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getFolderMap(Landroid/content/Context;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;J)Lcom/google/common/collect/I;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-static {v3, v1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->s(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/google/common/collect/I;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;-><init>()V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mList:Ljava/util/List;

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/common/constants/sites/FolderHierarchyInfo;->mFolderMap:Lcom/google/common/collect/I;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SET_FOLDER_HIERARCHY:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
