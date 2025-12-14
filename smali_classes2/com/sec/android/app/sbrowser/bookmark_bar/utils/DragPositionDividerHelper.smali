.class public Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

.field mBookmarkButtonNextPosition:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

.field mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

.field mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

.field mDragPositionDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    new-instance v0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->getBookmarkListView()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;-><init>(Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragPositionDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;

    return-void
.end method

.method private getNextPosition(F)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragPositionDelegate:Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;->getBookmarkButtonLocations()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result v5

    invoke-direct {p0, v3, p1, v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->isToFirstItem(IFI)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->setPosition(I)V

    goto :goto_3

    :cond_0
    array-length v5, v0

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result v4

    invoke-direct {p0, v3, v5, p1, v4}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->isToLastItem(IIFI)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->setPosition(I)V

    goto :goto_3

    :cond_2
    invoke-direct {p0, p1, v3, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->isToBetweenOfItems(FI[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p1

    if-le p1, v3, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p1

    if-eqz p1, :cond_4

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    :goto_2
    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->setPosition(I)V

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->getPosition()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_7

    return-object v1

    :cond_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->setPosition(I)V

    return-object v1
.end method

.method private isToBetweenOfItems(FI[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;)Z
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    aget-object p0, p3, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    add-int/2addr p2, v1

    array-length p0, p3

    if-ge p2, p0, :cond_0

    aget-object p0, p3, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget-object p0, p3, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    add-int/2addr p2, v1

    array-length p0, p3

    if-ge p2, p0, :cond_2

    aget-object p0, p3, p2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->getMiddlePoint()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method private isToFirstItem(IFI)Z
    .locals 0

    if-nez p1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p0

    if-eqz p0, :cond_0

    int-to-float p0, p3

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    int-to-float p0, p3

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private isToLastItem(IIFI)Z
    .locals 0

    const/4 p0, 0x1

    sub-int/2addr p2, p0

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result p1

    if-eqz p1, :cond_0

    int-to-float p1, p4

    cmpg-float p1, p3, p1

    if-gez p1, :cond_1

    goto :goto_0

    :cond_0
    int-to-float p1, p4

    cmpl-float p1, p3, p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToShowDragItemDivider(Landroid/view/DragEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private showBookmarkDragPositionDivider(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    add-int/lit8 v0, p2, -0x1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    mul-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    return-void
.end method

.method private showBookmarkMovingPositionDivider(Ljava/util/ArrayList;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, p3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-ne p3, p2, :cond_2

    if-eqz p3, :cond_1

    add-int/lit8 p2, p3, -0x1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    return v0

    :cond_2
    if-lez p3, :cond_3

    if-eqz v2, :cond_3

    mul-int/lit8 p2, p3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sub-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    return v0

    :cond_3
    if-nez p3, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    mul-int/lit8 p2, p3, 0x2

    add-int/2addr p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p3, v1

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    return v1
.end method

.method private showPositionDivider(Ljava/util/ArrayList;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showBookmarkMovingPositionDivider(Ljava/util/ArrayList;II)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showAnimation(II)Z

    return v1

    :cond_0
    if-nez p3, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->getBookmarkListView()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-ge p3, p2, :cond_2

    add-int/lit8 p2, p3, -0x1

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/lit8 p3, p3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v2

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    :cond_3
    :goto_0
    return v2
.end method


# virtual methods
.method public getAnimationHelper()Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    return-object p0
.end method

.method public getNextPosition()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkButtonNextPosition:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

    return-object p0
.end method

.method public setDragItem(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    return-void
.end method

.method public showDragDividerAndAnimation(Landroid/view/DragEvent;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->getNextPosition(F)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkButtonNextPosition:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result v2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->needToShowDragItemDivider(Landroid/view/DragEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showBookmarkDragPositionDivider(Ljava/util/ArrayList;I)V

    return-void

    :cond_1
    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showPositionDivider(Ljava/util/ArrayList;II)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p1, v2, v1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showAnimation(II)Z

    return-void
.end method
