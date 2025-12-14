.class Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->setDragListenerForFolderNavigationView(Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

.field final synthetic val$currentFolder:Landroid/widget/LinearLayout;

.field final synthetic val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/LinearLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$currentFolder:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;->getDndHandler()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler;->isInSameInstance()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$currentFolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->setDndBackground(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isDndOnRootFolder()Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$currentFolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->setDndBackground(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isDndOnRootFolder()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p2

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne p2, v2, :cond_6

    move v0, v1

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getAdapter()Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;->getLongPressedObjects()Ljava/util/List;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-interface {p1, v0, p2, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;->handleDragEvent(ZLjava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->this$0:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;->val$currentFolder:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->setDndBackground(Landroid/widget/LinearLayout;Z)V

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string p1, "bookmark_item_label"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_1

    :cond_8
    :goto_0
    return v1

    :cond_9
    :goto_1
    return v0
.end method
