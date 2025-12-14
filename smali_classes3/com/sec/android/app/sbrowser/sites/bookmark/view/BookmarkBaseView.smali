.class public abstract Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;
    }
.end annotation


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mArrowResourceId:I

.field protected mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

.field protected mChildrenList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field protected mDndListView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mFolderButtonContainer:Landroid/widget/RelativeLayout;

.field protected mFolderButtonText:Ljava/lang/String;

.field protected mFolderButtonTextId:I

.field protected mFolderButtonViewHolderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolderNavigationView:Landroid/widget/LinearLayout;

.field protected mFolderPathParentView:Landroid/widget/HorizontalScrollView;

.field protected mIsAnimating:Z

.field protected mIsShowButtonBackground:Z

.field public mNavigationBarItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrevFolderButton:Landroid/widget/TextView;

.field protected mPrevFolderButtonTextId:I

.field protected mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field protected mRootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mIsShowButtonBackground:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mNavigationBarItemMap:Ljava/util/HashMap;

    return-void
.end method

.method private scrollFolderPath(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$3;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$4;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public addAncestors(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {v0, p1}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mNavigationBarItemMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    if-nez v1, :cond_1

    move v2, v0

    :cond_1
    invoke-virtual {p0, v3, v2, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->appendAncestor(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;ZZ)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mBookmarksDisplayLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public appendAncestor(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f0e0063

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0890

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    const v8, 0x7f0b088f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iget v9, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mArrowResourceId:I

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v9, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    invoke-direct {v9, v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;-><init>(Landroid/widget/LinearLayout;)V

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    const/4 v13, 0x1

    add-int/2addr v10, v13

    invoke-virtual {v12, v10}, Landroid/view/View;->setId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v14

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mRootItem:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-virtual {v10}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v16

    cmp-long v10, v14, v16

    if-nez v10, :cond_0

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonText:Ljava/lang/String;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", "

    invoke-static {v3, v10, v12}, Lcom/sec/android/app/sbrowser/autofill/password/k;->u(Landroid/widget/TextView;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v14, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const v15, 0x7f141083

    invoke-static {v14, v15, v10, v12}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v12, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x7f141081

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v10, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$1;

    invoke-direct {v10, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$1;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    new-instance v10, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;

    invoke-direct {v10, v0, v3}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$2;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;Landroid/widget/TextView;)V

    iget-object v11, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const v11, 0x7f0601bc

    if-nez v10, :cond_3

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-static {v13, v10}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;

    iget-object v10, v10, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-virtual {v4, v8}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const v12, 0x7f060bd1

    invoke-virtual {v8, v12}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    iget v12, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButtonTextId:I

    invoke-virtual {v4, v8, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mIsShowButtonBackground:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    const v8, 0x7f0806e9

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    iget-object v8, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    const v8, 0x7f08053c

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setClickable(Z)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mPrevFolderButton:Landroid/widget/TextView;

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-virtual {v10, v13}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v10, v6}, Landroid/view/View;->setFocusable(Z)V

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v3, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f060bd2

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    iget v5, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonTextId:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    :cond_4
    iget-boolean v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mIsShowButtonBackground:Z

    if-eqz v4, :cond_5

    const v4, 0x7f0806ea

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    const v5, 0x7f07133a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-static {v13, v2}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$ViewHolder;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/16 v5, 0x11

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    :cond_6
    const v5, 0x7f07133e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    :goto_2
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mNavigationBarItemMap:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    if-nez v1, :cond_7

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const/high16 v5, 0x7f010000

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    const-wide/16 v5, 0x32

    invoke-virtual {v2, v5, v6}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {v3, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_7
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_8

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderNavigationView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v2, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    if-nez v2, :cond_9

    return-void

    :cond_9
    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->scrollFolderPath(Z)V

    return-void
.end method

.method public abstract doScrollAnimation(II)V
.end method

.method public getRoundedCornerColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/sesl_common/SeslUtil;->getRoundedCornerColor(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method public getwidthForScrollAnimation(I)I
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    add-int/lit8 v3, p1, 0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderPathParentView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    if-lt p1, p0, :cond_1

    goto :goto_1

    :cond_1
    sub-int v1, p0, v2

    if-gt v1, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    sub-int/2addr p0, p1

    if-eq p0, v0, :cond_3

    sub-int/2addr p0, v0

    sub-int v1, v2, p0

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public abstract onPathClick(Landroid/widget/TextView;Landroid/view/View;)V
.end method

.method public setAncestorPosition(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonViewHolderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mFolderButtonContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->getwidthForScrollAnimation(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f01008b

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView$5;-><init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;IILandroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public setParent(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/BookmarkBaseView;->mCurrentParent:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method
