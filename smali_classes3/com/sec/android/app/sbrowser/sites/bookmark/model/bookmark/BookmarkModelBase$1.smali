.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarksHierarchy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->isActivityDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getBookmarkRoot()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setBookmarkLevel(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkMap(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/common/collect/I;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SET_HIERARCHY:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->getValue()I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
