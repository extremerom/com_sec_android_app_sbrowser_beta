.class public Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragControllerDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;
    }
.end annotation


# instance fields
.field private mAddBookmarkButton:Landroid/view/View;

.field mBookmarkBarDragListener:Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;

.field mBookmarkListView:Landroid/widget/LinearLayout;

.field mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

.field mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

.field mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

.field mIsAddBookmarkAnimating:Z

.field mMoreMenuBtn:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkBarDragListener:Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->getBookmarkListView()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateButtonsInfo()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->lambda$setDragListenerForMoreBtn$1(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->lambda$setDragListenerForAddBookmarkBtn$0(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkFromArray(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkFromArray(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->isAddToBookmarkButton(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;ILjava/util/ArrayList;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->isValidIdx(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private getAddToFolderListener(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;",
            ")",
            "Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$1;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;Landroid/app/Activity;)V

    return-object v0
.end method

.method private getBookmarkButtonIndexByDescription(Landroid/view/View;)I
    .locals 3

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-direct {p0, p1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->isSameBookmarkButton(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private getBookmarkFromArray(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkFromArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method private getBookmarkFromArray(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkFromArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object p0

    return-object p0
.end method

.method private getBookmarkFromArray(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p3

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private isAddToBookmarkButton(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isAddToBookmarkButton()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSameBookmarkButton(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isFolder()Z

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isFolder()Z

    move-result v1

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isFolder()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isFolder()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    :goto_0
    return p0
.end method

.method private isValidIdx(ILjava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "*>;)Z"
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$setDragListenerForAddBookmarkBtn$0(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    invoke-virtual {p4}, Landroid/view/DragEvent;->getAction()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_2

    const/4 v2, 0x3

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->isMainViewShowing()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v4, p2

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->add(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZI)V

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mIsAddBookmarkAnimating:Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->isBookmarkBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateDragItem(Landroid/view/DragEvent;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private synthetic lambda$setDragListenerForMoreBtn$1(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 11

    invoke-virtual {p4}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p3

    invoke-virtual {p4}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mMoreMenuBtn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_7

    const/4 p4, 0x2

    if-eq v0, p4, :cond_6

    const/4 p4, 0x3

    if-eq v0, p4, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_1

    const/4 p0, 0x6

    if-eq v0, p0, :cond_0

    goto/16 :goto_0

    :cond_0
    new-array p0, v2, [I

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/16 :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->removePositionDivider()V

    goto/16 :goto_0

    :cond_2
    new-array p4, v2, [I

    invoke-virtual {v1, p4}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    if-nez p4, :cond_3

    return v3

    :cond_3
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p1, p4, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    if-ne p4, v0, :cond_4

    return v3

    :cond_4
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p4

    if-eqz p4, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p4

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarRoot(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getLastPosition(Landroid/app/Activity;Landroid/net/Uri;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)I

    move-result p4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result v7

    add-int/lit8 v8, p4, 0x1

    const/4 v9, 0x1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v10

    move-object v4, p2

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->moveBookmark(Landroid/app/Activity;JIIZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1, v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setTitle(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setUrl(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v7

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    move-object v6, p2

    invoke-static/range {v4 .. v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->add(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZI)V

    goto :goto_0

    :cond_6
    const p0, 0x10100a7

    const p1, 0x101009e

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    return v3

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->isBookmarkBarEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p4}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarDragUtils;->isBookmarkBarDragItem(Landroid/content/ClipDescription;)Z

    move-result p0

    if-eqz p0, :cond_8

    move v2, v3

    :cond_8
    return v2
.end method

.method private setDragListenerForAddBookmarkBtn(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mAddBookmarkButton:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method private setDragListenerForBookmarkBarContainer(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;)V

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    return-void
.end method

.method private setDragListenerForMoreBtn(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mMoreMenuBtn:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/a;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    :cond_0
    return-void
.end method

.method private updateButtonsInfo()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    return-void

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->isAddToBookmarkButton(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    new-array v1, v0, [Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v2

    :goto_0
    if-ge v4, v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v5, v3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    new-instance v7, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    invoke-direct {v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;-><init>()V

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    aget-object v6, v6, v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->setLeftX(I)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    aget-object v6, v6, v4

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {v6, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->setRightX(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    aget-object v3, v3, v4

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->isFolder()Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->setFolder(Z)V

    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->setIndex(I)V

    invoke-direct {p0, v2, v1, v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getAddToFolderListener(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->setOnAddToFolderListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/OnAddToFolderListener;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public getBookmarkButtonLocations()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateButtonsInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mButtonLocations:[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    return-object p0
.end method

.method public getDragItem()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    return-object p0
.end method

.method public setAddBookmarkButton(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mAddBookmarkButton:Landroid/view/View;

    return-void
.end method

.method public setBookmarkMoreMenu(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mMoreMenuBtn:Landroid/view/View;

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkBarDragListener:Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;->onDragStart()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateButtonsInfo()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkButtonIndexByDescription(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setDraggingView(Landroid/view/View;)V

    instance-of v3, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setUrl(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setBookmarkItem(Z)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setBookmarkButtonIndex(I)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;->FOLDER:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkType;

    const/4 v3, 0x0

    if-ne p0, p1, :cond_3

    move-object p0, v3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "bookmark_bar_item"

    invoke-static {p1, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v4, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$BookmarkBarDragShadow;-><init>(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    return-void
.end method

.method public updateDragItem(Landroid/view/DragEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "terrace-image-or-link-drag-label"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "text/plain"

    invoke-virtual {p1, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setBookmarkItem(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object p0

    const-string p1, "bookmark_bar_item"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public updateDragListener(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->setDragListenerForMoreBtn(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->setDragListenerForAddBookmarkBtn(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->setDragListenerForBookmarkBarContainer(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V

    return-void
.end method
