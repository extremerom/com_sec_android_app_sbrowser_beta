.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->setSeslMultiSelectedListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

.field final synthetic val$showBookmarksViewHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->val$showBookmarksViewHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->val$showBookmarksViewHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;->onMultiSelectStart(II)V

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->MY_DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSyncID;->getNumVal()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->val$showBookmarksViewHelper:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;->onMultiSelectStop(II)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;->handleSPenSelection(Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesActivityDelegate;->isSitesSearchViewVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->onBackpressed()Z

    :cond_1
    return-void
.end method
