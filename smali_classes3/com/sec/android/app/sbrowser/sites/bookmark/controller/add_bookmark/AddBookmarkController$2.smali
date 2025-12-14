.class Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->getViewListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/add_bookmark/AddBookmarkViewListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->lambda$cancelButtonSelected$0()V

    return-void
.end method

.method private synthetic lambda$cancelButtonSelected$0()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public cancelButtonSelected()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public doneButtonSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->A(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public handleSelectBookmark()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->p(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->u(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    const-string v2, "bookmark_id"

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->o(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->k(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Z

    move-result v1

    const-string v2, "FromEditURL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Landroid/app/Activity;

    move-result-object p0

    const/16 v1, 0xb

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    const-string p0, "302"

    const-string v0, "3021"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public hasBookmarkParentChanged()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->m(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/add_bookmark/AddBookmarkController;)J

    move-result-wide v5

    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method
