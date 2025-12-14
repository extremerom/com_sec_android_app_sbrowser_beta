.class public Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;,
        Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;
    }
.end annotation


# static fields
.field private static sBookmarkNotifier:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;


# instance fields
.field private mBookmarkDbListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;-><init>(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mHandler:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method private bookmarkAccountUpdated(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ACCOUNT_UPDATED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkAdded(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ADD_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkBarMoved(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_BAR_MOVE_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkDatabaseModifiedOnSync()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DATABASE_MODIFIED_ON_SYNC:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkEditChangedParent(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_PARENT_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkSyncCompleted()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SYNC_COMPLETED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkTouchIconUpdate()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_ICON_UPDATED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarkUpdated(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_EDIT_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksDeleted(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DELETE_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksDeletedError(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DELETE_FAIL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksMoved(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_MOVE_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksReordered(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_REORDER_SUCCESS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksTotalCount(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_TOTAL_COUNT:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private bookmarksURLsDeleted(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_DELETED_MULTIPLE_URLS:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->sBookmarkNotifier:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->sBookmarkNotifier:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->sBookmarkNotifier:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    return-object v0
.end method

.method public static getBookmarkNotifierHandler()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->getBookmarkNotifier()Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mHandler:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkNotifierHandler;

    return-object v0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$1;->$SwitchMap$com$sec$android$app$sbrowser$common$constants$sites$BookmarkConstants$Messages:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not valid case"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "BookmarkNotifier"

    invoke-static {p0, p1, v0}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkDatabaseModifiedOnSync()V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksTotalCount(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkBarMoved(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksURLsDeleted(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkTouchIconUpdate()V

    goto/16 :goto_0

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->updatePrivacyMode(Z)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->thirdPartyBookmarkImported()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->operatorBookmarksAdded()V

    goto :goto_0

    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkSyncCompleted()V

    goto :goto_0

    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkAccountUpdated(I)V

    goto :goto_0

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksMoved(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkMoveInfo;)V

    goto :goto_0

    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkEditChangedParent(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksReordered(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_0

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksDeletedError(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarksDeleted(Ljava/util/ArrayList;)V

    goto :goto_0

    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkUpdated(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    goto :goto_0

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->bookmarkAdded(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasInstance()Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->sBookmarkNotifier:Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private operatorBookmarksAdded()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_OPERATOR_BOOKMARKS_ADDED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updatePrivacyMode(Z)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_SECRET_MODE_UPDATED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public registerBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public thirdPartyBookmarkImported()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;->BOOKMARK_THIRD_PARTY_IMPORTED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;->onChange(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$Messages;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public unregisterBookmarkListener(Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier$BookmarkDbListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/sites/BookmarkNotifier;->mBookmarkDbListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
