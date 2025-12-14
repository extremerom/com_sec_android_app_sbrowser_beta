.class Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getAddToFolderListener(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookmarkButton:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

.field final synthetic val$bookmarkItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkButton:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddToFolder(Landroid/view/DragEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkButton:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getIndex()I

    move-result v0

    if-eq p1, v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkItems:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->c(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkButton:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkItems:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$activity:Landroid/app/Activity;

    invoke-static {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->moveBookmarkToFolder(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setTitle(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setUrl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkButton:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$bookmarkItems:Ljava/util/ArrayList;

    invoke-static {p1, v2, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->d(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->val$activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->addToFolder(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public onDragItemEntered(ILandroid/view/DragEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getDragItem()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateDragItem(Landroid/view/DragEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p2

    if-ne p1, p2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->removePositionDivider()V

    const/4 p0, 0x1

    return p0
.end method
