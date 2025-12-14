.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAdapterListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;

.field private mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

.field private final mDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFirstLongPressIndex:I

.field private mIsLongPressDragging:Z

.field private mIsShowButtonBackground:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mDragList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsShowButtonBackground:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsLongPressDragging:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsFirstLongPressIndex:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "show_button_background"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsShowButtonBackground:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mDragList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsFirstLongPressIndex:I

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsLongPressDragging:Z

    return-void
.end method


# virtual methods
.method public isLongPressDragging()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsLongPressDragging:Z

    return p0
.end method

.method public setDndBackground(Landroid/widget/LinearLayout;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsShowButtonBackground:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p1, p2, v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewUtil;->setDndBackground(Landroid/widget/LinearLayout;ZZLandroid/app/Activity;)V

    return-void
.end method

.method public setDragListenerForFolderNavigationView(Landroid/widget/LinearLayout;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xc544

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method public setDragListenerForListViewHolder(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xc544

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$4;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$4;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method public setFirstLongPressIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mIsFirstLongPressIndex:I

    return-void
.end method

.method public setSeslLongPressMultiSelectionListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V
    .locals 2

    sget v0, Lcom/sec/sbrowser/spl/util/PlatformInfo;->ONEUI_VERSION:I

    const v1, 0xc544

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getDndListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetLongPressMultiSelectionListener(Landroidx/recyclerview/widget/X0;)V

    :cond_0
    return-void
.end method

.method public setSeslMultiSelectedListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mBookmarkViewDelegate:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkViewDelegate;->getDndListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper$3;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetOnMultiSelectedListener(Landroidx/recyclerview/widget/Z0;)V

    return-void
.end method

.method public setShowBookmarksAdapterListener(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/SelectionAndDragListenerHelper;->mAdapterListener:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksAdapterListener;

    return-void
.end method
