.class Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->setDragListenerForBookmarkBarContainer(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

.field mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$bookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$bookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    new-instance p3, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)V

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->getAnimationHelper()Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->lambda$$0()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    move-result-object p0

    return-object p0
.end method

.method private addToBookmarkBar(Landroid/content/ClipData;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;Landroid/app/Activity;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ClipData;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, v9

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->isExistingItem(Ljava/lang/String;Ljava/lang/String;JLandroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    new-instance p2, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)V

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->undoAnimation(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->isFolder()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->getPosition()I

    move-result p3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-static {v2, p3}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->e(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;I)Z

    move-result v2

    if-nez v2, :cond_4

    if-lt p3, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p3, :cond_3

    add-int/lit8 v1, p3, -0x1

    goto :goto_0

    :cond_3
    move v1, p3

    :goto_0
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result p2

    goto :goto_2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    add-int/lit8 v1, p3, -0x1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_5
    move p2, p3

    :goto_2
    const v1, 0x7f0e0052

    const/4 v2, 0x0

    invoke-static {p4, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v10

    move-object v4, v9

    move-object v5, p1

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->initialize(JLjava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;)V

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v10, v1, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    new-instance v8, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v5, p4

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/c;-><init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v7, v0, p3, v8}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->showAddedAnimation(IILcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;)V

    :cond_6
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->lambda$addToBookmarkBar$1()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->lambda$addToBookmarkBar$2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V

    return-void
.end method

.method private enableAllBookmarkButton()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b0181

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->notifyVisibilityChanged()V

    return-void
.end method

.method private synthetic lambda$$0()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->getBookmarkButtonLocations()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addToBookmarkBar$1()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mBookmarkBarDragListener:Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;->onAnimationFinished()V

    return-void
.end method

.method private synthetic lambda$addToBookmarkBar$2(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 7

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->add(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroid/net/Uri;ZZI)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mIsAddBookmarkAnimating:Z

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 9

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$bookmarkBarModel:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkQueryUtil;->getBookmarkBarId(Landroid/app/Activity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarModel;->getChildren(Ljava/lang/Long;I)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->setDragItem(Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->undoAnimation()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showDragDividerAndAnimation(Landroid/view/DragEvent;)V

    goto/16 :goto_1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->showPosition(Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mIsAddBookmarkAnimating:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->enableAllBookmarkButton()V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->removePositionDivider()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mBookmarkBarAnimationHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/BookmarkBarAnimationHelper;->initAnimationMovedList()V

    goto/16 :goto_1

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->isMainViewShowing()Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->removePositionDivider()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p2, p2, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    if-nez p2, :cond_6

    goto/16 :goto_1

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->getNextPosition()Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;

    move-result-object p2

    if-eqz p2, :cond_d

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->isFolder()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->getPosition()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    goto/16 :goto_1

    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getBookmarkButtonIndex()I

    move-result p1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->getPosition()I

    move-result p2

    if-eq p2, p1, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-static {v2, p1, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->f(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-static {v2, p2, v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->f(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;ILjava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result v5

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getPosition()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getAccountType()Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v8

    invoke-static/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->moveBookmark(Landroid/app/Activity;JIIZLcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;)V

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iput-boolean v1, v2, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mIsAddBookmarkAnimating:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, v0, p2, v2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->addToBookmarkBar(Landroid/content/ClipData;Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;Landroid/app/Activity;)V

    :cond_9
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->removePositionDivider()V

    goto :goto_1

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showDragDividerAndAnimation(Landroid/view/DragEvent;)V

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mContainerView:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarDragContainer;->isBookmarkBarEnabled()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->updateDragItem(Landroid/view/DragEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iput-boolean v2, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mIsAddBookmarkAnimating:Z

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->isBookmarkItem()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController;->mDragItem:Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->getDraggingView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b017e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const v0, 0x7f0b0417

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->mDragPositionDividerHelper:Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/utils/DragPositionDividerHelper;->showDragDividerAndAnimation(Landroid/view/DragEvent;)V

    :cond_d
    :goto_1
    return v1

    :cond_e
    :goto_2
    return v2
.end method
