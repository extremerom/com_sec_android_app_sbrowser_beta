.class public Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;


# instance fields
.field private mActivityType:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

.field private final mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

.field private final mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

.field private mIntentSend:Landroid/content/Intent;

.field private mListOfObjectTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;"
        }
    .end annotation
.end field

.field private mListOfObjectsIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

.field private mNonEditableItems:I

.field private mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field private final mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    return-void
.end method


# virtual methods
.method public createFolder(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->initializeCreateBookmarkFolderAlertUtil(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCreateBookmarkFolderAlertUtil()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->showCreateFolderDialog(ZZ)V

    return-void
.end method

.method public editBookmark(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setEditBookmarkItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDialogHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->showEditFolderAlertDialog(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/sites/AddBookmarkUtil;->getBookmarkIntent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    const/16 v0, 0xc

    const/16 v1, 0x300

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public findFolderChildren(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildrenCurrentFolder(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method

.method public folderContainsBookmarks(J)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/common/collect/I;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getChildrenList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getListOfObjectTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectTypes:Ljava/util/List;

    return-object p0
.end method

.method public getListOfObjectsIds()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    return-object p0
.end method

.method public getNonEditableItems()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mNonEditableItems:I

    return p0
.end method

.method public getTotalBookmarksCount()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getTotalBookmarksCount(Landroid/app/Activity;Z)V

    return-void
.end method

.method public isBookmarkExistInFolder(J)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksControllerUtil;->isFolderContainBookmark(JLcom/google/common/collect/I;)Z

    move-result p0

    return p0
.end method

.method public moveToFolder(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setTargetItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectTypes:Ljava/util/List;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->isEditable()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectTypes:Ljava/util/List;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mNonEditableItems:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mNonEditableItems:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    if-eqz p1, :cond_4

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->enableNavigationForDrag(Z)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const p1, 0x1020002

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const p1, 0x7f140f51

    const/4 p2, -0x1

    invoke-static {p1, p2, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void

    :cond_5
    const/16 v0, 0x32

    if-le p1, v0, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->forcehideKeyboard(Landroid/app/Activity;)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->showProgress()V

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectTypes:Ljava/util/List;

    invoke-virtual {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->moveToFolder(Ljava/util/List;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onActionSelected(Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->isIntentLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setmIntentLaunched(Z)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mActivityType:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl$1;->$SwitchMap$com$sec$android$app$sbrowser$common$sites$bookmark$model$show_bookmarks$ShowBookmarksConstants$ActivityLaunchType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v1, :cond_6

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p3, 0x3

    if-eq p1, p3, :cond_4

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkMap()Lcom/google/common/collect/I;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->setUpDataForSharedUrls(Ljava/util/List;Lcom/google/common/collect/I;)V

    goto :goto_1

    :cond_3
    const-string p0, "ShowBookmarksViewListenerImpl"

    const-string p1, "longPressedObj is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/sites/AddBookmarkUtil;->getBookmarkIntent(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setEditBookmarkItem(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v0

    const-class v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/select_bookmark_folder/SelectBookmarkFolderActivity;

    invoke-static {p1, v1, p2, v0, p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksControllerUtil;->onActionSelectedMoveBookmark(Landroid/app/Activity;Ljava/lang/Class;Ljava/util/List;Ljava/util/List;I)Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    :goto_1
    return-void
.end method

.method public onActionStart()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->isIntentLaunched()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setmIntentLaunched(Z)V

    :try_start_0
    sget-object v0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl$1;->$SwitchMap$com$sec$android$app$sbrowser$common$sites$bookmark$model$show_bookmarks$ShowBookmarksConstants$ActivityLaunchType:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mActivityType:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    const/16 v3, 0xc

    const/16 v4, 0x300

    invoke-static {v0, v4, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;IZLandroid/content/Intent;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDialogHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getEditBookmarkItem()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/EditFolderDialogHelper;->showEditFolderAlertDialog(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mIntentSend:Landroid/content/Intent;

    const/16 v2, 0xb

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mActivityType:Lcom/sec/android/app/sbrowser/common/sites/bookmark/model/show_bookmarks/ShowBookmarksConstants$ActivityLaunchType;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not exist "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ShowBookmarksViewListenerImpl"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onCreateFolderInParent(Landroid/content/Context;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mSelectedItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mBookmarkListListener:Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->initializeCreateBookmarkFolderAlertUtil(Landroid/content/Context;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil$BookmarkListListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCreateBookmarkFolderAlertUtil()Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/utils/CreateBookmarkFolderAlertUtil;->showCreateFolderDialog(ZZ)V

    return-void
.end method

.method public onDeleteSelected(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->showProgress()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setDeleteBookmarkCount(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->deleteItems(Ljava/util/List;[Ljava/lang/Object;)V

    return-void
.end method

.method public onHandleBack(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->onBackPressed(Z)Z

    move-result p0

    return p0
.end method

.method public onParentSelected(IZ)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-le v0, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setCurrentParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onParentSelected - parent changed = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowBookmarksViewListenerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->addToFolderNavigationStackIfNeeded()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object v2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->add(JJLjava/lang/String;Z)V

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->setAncestorPosition(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->clearAsyncTask()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " ancestor selected for parent id = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public onSelect(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 8

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->setSelectedParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setCurrentPosition(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getAncestorsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getDndList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->setScrolledState(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->addToFolderNavigationStackIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getParentId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->add(JJLjava/lang/String;Z)V

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getPCBookmarkChildren()V

    goto/16 :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->getBookmarkChildren(Ljava/lang/Long;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->isFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getBookmarkFolderNavigation()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/BookmarkFolderNavigation;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->storeBookmarkId(Landroid/content/SharedPreferences;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    :cond_4
    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_UNSET:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v4, "perf_show bookmark_sfinder"

    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;->PREF_SFINDER_BOOKMARK_SET:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-nez v2, :cond_5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    sput-object p1, Lcom/sec/android/app/sbrowser/common/sites/SitesScrollPositionHelper;->sLastClickedBookmarkItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    :goto_0
    return-void
.end method

.method public onSortTypeChanged()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->ismIsSecretMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkSortTypeChangedNotifier;->notifyObservers(Z)V

    return-void
.end method

.method public openInNewTab(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "url"

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/16 v1, 0x7f

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public openInNewWindow(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->isEmanualUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/provider/EManualUtil;->convertEmanualUrlforDex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->openInNewWindow(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public openInSecretMode(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->getInstance(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->openInSecretMode(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public reorderItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getOriginalChildObjects()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->isOrderChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getHelper()Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/SBCHelper;->showProgress()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x5

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getSYNC4()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PC_BOOKMARK_BAR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p1, v0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mModel:Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mController:Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksController;->getCurrentParent()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, p0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModel;->reorderBookmarks(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public setListOfObjectTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectTypes:Ljava/util/List;

    return-void
.end method

.method public setListOfObjectsIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mListOfObjectsIds:Ljava/util/List;

    return-void
.end method

.method public setNonEditableItems(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mNonEditableItems:I

    return-void
.end method

.method public showConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/controller/show_bookmarks/ShowBookmarksViewListenerImpl;->mView:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/IShowBookmarksView;->showDeleteConfirmDialog(ZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method
