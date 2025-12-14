.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$TabListDeleteTransition;
    }
.end annotation


# instance fields
.field private mAwaitingFirstLayout:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/D0;

.field private mItemHeight:I

.field private mItemVerticalPadding:I

.field private mItemWidth:I

.field private final mLongPressItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSPenDragEndPoint:Landroid/graphics/Point;

.field private final mSPenDragItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSPenDragStartPoint:Landroid/graphics/Point;

.field private mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

.field private mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mAwaitingFirstLayout:Z

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$resetBottomPadding$2()V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$scrollToTargetTab$0()V

    return-void
.end method

.method public static bridge synthetic C(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mAwaitingFirstLayout:Z

    return p0
.end method

.method public static bridge synthetic D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    return-object p0
.end method

.method public static bridge synthetic E(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mAwaitingFirstLayout:Z

    return-void
.end method

.method public static bridge synthetic F(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->animateChildren(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->setHoverBottomPadding()V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->clearTabListAfterCloseAll()V

    return-void
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method private animateChildren(Landroid/view/ViewGroup;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070aa4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f070aa6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v1

    const v2, 0x7f0b07a3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxOutroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    neg-int v0, v0

    :cond_2
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    neg-int v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_2

    :cond_4
    neg-int v0, v0

    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f0b07a5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x7f0b0d68

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    int-to-float v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-float v5, v0

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v5, 0x12c

    invoke-virtual {v2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;

    invoke-direct {v5, p0, v4, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private findChildPositionUnder(II)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    const/4 v3, -0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getSpanCount()I

    move-result v2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getHorizontalSpacing()I

    move-result v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getVerticalSpacing()I

    move-result v5

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    iget v8, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    add-int/2addr v8, v4

    iget v9, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    add-int/2addr v9, v5

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    const/4 v12, 0x0

    :goto_0
    add-int v13, v1, v9

    if-le v7, v13, :cond_1

    return v3

    :cond_1
    move v14, v6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_4

    div-int/lit8 v15, v4, 0x2

    add-int v3, v14, v15

    div-int/lit8 v16, v5, 0x2

    add-int v11, v7, v16

    move/from16 v17, v4

    iget v4, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    add-int/2addr v4, v14

    add-int/2addr v4, v15

    iget v15, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    add-int/2addr v15, v7

    add-int v15, v15, v16

    invoke-virtual {v10, v3, v11, v4, v15}, Landroid/graphics/Rect;->set(IIII)V

    move/from16 v3, p1

    invoke-virtual {v10, v3, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_3

    mul-int/2addr v12, v2

    add-int/2addr v12, v13

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result v0

    if-ge v12, v0, :cond_2

    move v3, v12

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    :goto_2
    return v3

    :cond_3
    add-int/lit8 v13, v13, 0x1

    add-int/2addr v14, v8

    move/from16 v4, v17

    const/4 v3, -0x1

    goto :goto_1

    :cond_4
    move/from16 v3, p1

    move/from16 v17, v4

    add-int/lit8 v12, v12, 0x1

    add-int/2addr v7, v9

    const/4 v3, -0x1

    goto :goto_0
.end method

.method private getHorizontalPaddingRate()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const v0, 0x7f070ac6

    goto :goto_0

    :cond_0
    const v0, 0x7f070ac5

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isFoldableInUnfolded()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    const v0, 0x7f070ac8

    goto :goto_0

    :cond_2
    const v0, 0x7f070ac7

    goto :goto_0

    :cond_3
    const v0, 0x7f070ac4

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result p0

    return p0
.end method

.method private getHorizontalSpacing()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isFoldableInUnfolded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f070ac9

    goto :goto_1

    :cond_1
    :goto_0
    const v0, 0x7f070aca

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method private getSpanCount(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isFoldableInUnfolded()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v2, 0x3

    :cond_0
    iput v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    :goto_0
    iput v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    goto :goto_1

    :cond_3
    if-nez v0, :cond_4

    const/4 v2, 0x2

    :cond_4
    iput v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070ab7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/2addr p1, v0

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    return p1
.end method

.method private isFoldableInUnfolded()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTablet()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$6()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDeleteTransitionEnd$4()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setIsClosing(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$reopenClosedTab$5()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToReopenedTab()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->setPaddingOfList(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->resetBottomPadding()V

    return-void
.end method

.method private synthetic lambda$resetBottomPadding$2()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemVerticalPadding:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setListBottomPadding(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->scrollToTargetTab()V

    return-void
.end method

.method private synthetic lambda$resetBottomPadding$3()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$scrollToTargetTab$0()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->scrollToPosition(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    return-void
.end method

.method private static synthetic lambda$scrollToTargetTab$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToCurrentTab()V

    return-void
.end method

.method private resetBottomPadding()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setHoverBottomPadding()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070aa0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getMultiTabBottomBarHeight()I

    move-result p0

    add-int/2addr p0, v0

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setPaddingOfList(Z)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->getSpanCount(I)I

    move-result v2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->getHorizontalPaddingRate()F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->getHorizontalSpacing()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const v7, 0x7f070acd

    invoke-static {v6, v7}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v6

    float-to-double v6, v6

    int-to-double v8, v0

    mul-double/2addr v8, v3

    double-to-int v3, v8

    int-to-double v8, v1

    mul-double/2addr v8, v6

    double-to-int v1, v8

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, v5

    sub-int/2addr v0, v4

    div-int/2addr v0, v2

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    int-to-double v6, v0

    const-wide v8, 0x3feaaaaaaaaaaaabL    # 0.8333333333333334

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    int-to-double v6, v0

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v6, v8

    double-to-int v0, v6

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    :goto_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setItemThumbnailHeight(I)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->setItemVerticalPadding(I)V

    iput v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemVerticalPadding:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    iget v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    invoke-virtual {p1, v2, v4, v5, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->setSpacing(IIII)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "[setPaddingOfList] modeType : "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TabMainViewGrid"

    invoke-static {v2, p1}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "[setPaddingOfList] VerticalPadding : "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v3, v0, v3, v0}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$resetBottomPadding$3()V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$scrollToTargetTab$1(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$onDeleteTransitionEnd$4()V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$reopenClosedTab$5()V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->lambda$onConfigurationChanged$6()V

    return-void
.end method


# virtual methods
.method public finishDrag()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->finishDrag()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public focusBottomTab()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public getCurrentShowingItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFocusedTabIndex()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method public getHeaderHeight()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070ab5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;->getItemCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getMultiWindowHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return p0
.end method

.method public isTabStackAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->resetBottomPadding()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDeleteTransitionEnd(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onRunningCloseTabAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->exitSelectMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->exitEditMode()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v2, 0x4

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->goToRootIfNoMemberInCurrentGroup()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    return-void
.end method

.method public onItemSelectedByLongPress(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->isTabSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p4

    if-nez p4, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-boolean p4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsCheckedBeforeLongClick:Z

    xor-int/lit8 p4, p4, 0x1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    xor-int/lit8 p4, p4, 0x1

    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsLongPressDragging:Z

    const/4 p1, -0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mLongClickedPosition:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsLongPressDragging:Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mLongPressItems:Ljava/util/ArrayList;

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mLongClickedPosition:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onMultiSelectStart(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->computeVerticalScrollOffsetForSpen()I

    move-result p0

    add-int/2addr p0, p2

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 9

    const-string v0, "[onMultiSelectStop]"

    const-string v1, "TabMainViewGrid"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->computeVerticalScrollOffsetForSpen()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, p1, v2}, Landroid/graphics/Point;->set(II)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getSpanCount()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getHorizontalSpacing()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;->getVerticalSpacing()I

    move-result v0

    if-ltz p1, :cond_d

    if-ltz p2, :cond_d

    if-ltz v0, :cond_d

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    if-ltz p1, :cond_d

    iget p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    if-gez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragStartPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragEndPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const-string v5, "SPEN selection : ("

    const-string v6, ", "

    const-string v7, "), ("

    invoke-static {p1, v2, v5, v6, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemWidth:I

    add-int/2addr v5, p2

    div-int/lit8 v5, v5, 0x2

    iget p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemHeight:I

    add-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    :goto_0
    add-int v0, v3, v5

    if-ge p1, v0, :cond_7

    if-le p1, v3, :cond_1

    move p1, v3

    :cond_1
    move v0, v2

    :goto_1
    add-int v6, v4, p2

    if-ge v0, v6, :cond_6

    if-le v0, v4, :cond_2

    move v0, v4

    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->findChildPositionUnder(II)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SPEN selection : find view : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ne p1, v3, :cond_5

    if-ne v0, v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    add-int/2addr v0, p2

    goto :goto_1

    :cond_6
    :goto_3
    add-int/2addr p1, v5

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getFilteredTabCount()I

    move-result p1

    if-ne p1, p2, :cond_9

    return-void

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->isTabSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_4

    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v1

    xor-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    :cond_d
    :goto_5
    return-void
.end method

.method public refreshRecyclerView()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->refreshRecyclerView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->resetBottomPadding()V

    return-void
.end method

.method public reopenClosedTab()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->reopenClosedTab()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollForAlign()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToLastTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToTargetTab()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->resetScrollPosition()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return-void
.end method

.method public selectAll(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->selectAll(Z)V

    return-void
.end method

.method public showDeleteTransition(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    const/high16 v2, 0x44160000    # 600.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0x258

    if-le p1, v0, :cond_1

    move v1, v2

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$TabListDeleteTransition;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$TabListDeleteTransition;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$2;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;I)V

    invoke-virtual {v0, v1}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-static {p0, v0}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$5;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public startCloseAllTabsAnimation()V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopScroll()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xfa

    :goto_0
    int-to-long v1, v1

    goto :goto_1

    :cond_1
    const/16 v1, 0xb4

    goto :goto_0

    :goto_1
    const-wide/16 v3, 0x2

    div-long v3, v1, v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    const/4 v5, -0x1

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setIsClosing(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v7, v6}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move v10, v7

    :goto_3
    if-ge v10, v0, :cond_5

    add-int/lit8 v11, v0, -0x1

    if-ne v10, v11, :cond_3

    move v11, v6

    goto :goto_4

    :cond_3
    move v11, v7

    :goto_4
    iget-object v12, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v12, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_4

    goto :goto_5

    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v13

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    int-to-float v12, v12

    const v14, 0x3f2b851f    # 0.67f

    mul-float/2addr v12, v14

    int-to-float v14, v5

    mul-float/2addr v12, v14

    invoke-virtual {v13, v12}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v12, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    const-wide/16 v13, 0x1

    add-long/2addr v13, v8

    mul-long/2addr v8, v3

    invoke-virtual {v12, v8, v9}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    new-instance v9, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$3;

    invoke-direct {v9, p0, v11}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Z)V

    invoke-virtual {v8, v9}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewPropertyAnimator;->start()V

    move-wide v8, v13

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method public startIntroAnimation(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "TabMainViewGrid"

    if-nez p1, :cond_0

    const-string p1, "[startIntroAnimation] null frontView"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setFirstIntroAnimation(Z)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabOutroAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "[startIntroAnimation] isMultiTabOutroAnimating"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setFirstIntroAnimation(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "[startIntroAnimation] null activity"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mIntroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_3

    return-void

    :cond_3
    const v1, 0x7f0b0ca7

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_4

    return-void

    :cond_4
    invoke-virtual {p1, p0, p2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->startIntroAnimation(Landroid/view/View;IZ)V

    return-void
.end method

.method public startOutroAnimation(ZLcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->NORMAL:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->exitSelectMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setHorizontalScrollBlock(Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->setEditToolbarTitle(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onExitEditMode()V

    if-nez p1, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->startOutroAnimationForNewTab(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->startOutroAnimationForExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    :goto_0
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startOutroAnimationForInvisibleTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "TabMainViewGrid"

    const-string v1, "[startOutroAnimationForInvisibleTab]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->show()V

    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getRecents()Landroid/view/View;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const v1, 0x7f01011d

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$6;

    invoke-direct {p2, p0, p3, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$6;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {v0, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public supportHorizontalFocusMove()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public updateTabStacks()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "InflateParams"
        }
    .end annotation

    const-string v0, "TabMainViewGrid"

    const-string v1, "[updateTabStacks]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getSelectedTabIndexList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mNeedFullUpdate:Z

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    if-nez v2, :cond_1

    return-void

    :cond_1
    const v3, 0x7f0e08d2

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->seslSetNestedScrollingChild(Landroid/view/View;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->setHoverBottomPadding()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setOnMultiSelectedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setLongPressMultiSelectedListener()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    const/4 v2, 0x1

    if-nez v1, :cond_3

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v5

    invoke-direct {v1, v3, v4, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;Z)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setIsSecretMode(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->createTabRecyclerAdapterListener()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->refreshTabList()V

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->setPaddingOfList(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->resetBottomPadding()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->handleModeType(Ljava/util/List;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    if-ltz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->resetScrollPosition()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/f;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToCurrentTab()V

    :goto_2
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridReorderCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridAdapter;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridReorderCallback;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;)V

    new-instance v1, Landroidx/recyclerview/widget/X;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/X;-><init>(Landroidx/recyclerview/widget/U;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mTouchHelper:Landroidx/recyclerview/widget/X;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabMainGridView;->mTabGridView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/X;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
