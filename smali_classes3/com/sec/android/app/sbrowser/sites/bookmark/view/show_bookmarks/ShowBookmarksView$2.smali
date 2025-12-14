.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsShiftPressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->e(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Z

    move-result p0

    return p0
.end method

.method public enableFolderNavigation(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->j(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;Z)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->access$1700(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public getAdapter()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    move-result-object p0

    return-object p0
.end method

.method public getCheckBoxMode()Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->c(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;

    move-result-object p0

    return-object p0
.end method

.method public getChildrenList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->access$1900(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->access$1600(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public getDndListView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->access$1800(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public getDragAndDropList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->d(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getListener()Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->g(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public isIsAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->access$2000(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;)Z

    move-result p0

    return p0
.end method

.method public isLaunchedFromBookmarkBar()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->isLaunchedFromBookmarkBar()Z

    move-result p0

    return p0
.end method

.method public onBackpressed()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->onBackpressed()Z

    move-result p0

    return p0
.end method

.method public setLaunchedFromBookmarkBar(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->setLaunchedFromBookmarkBar(Z)V

    return-void
.end method

.method public showDeleteConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->showDeleteConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method

.method public switchToCheckBoxMode(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->l(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$CheckBoxMode;)V

    return-void
.end method

.method public updateDragAndDropList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->h(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;Ljava/util/List;)V

    return-void
.end method

.method public updateInformativeAppBarInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView$2;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksView;->updateInformativeAppBarInfo()V

    return-void
.end method
