.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;
.source "SourceFile"


# instance fields
.field private mDragStartX:I

.field private mDragStartY:I

.field private mIsConfigurationChanged:Z

.field private mItemAnimator:Landroidx/recyclerview/widget/D0;

.field private mLongPressDragList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnTransAnim:Z

.field private final mSPenDragItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

.field private mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mTransition:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mLongPressDragList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mIsConfigurationChanged:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTransition:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;

    new-instance p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    invoke-virtual {p1, p2}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    return-void
.end method

.method public static synthetic A(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$showDeleteTransition$8()V

    return-void
.end method

.method public static synthetic B(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$scrollToTargetTab$4(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    return-void
.end method

.method public static synthetic C(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$updateTabStacks$0()Z

    move-result p0

    return p0
.end method

.method public static synthetic D(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$scrollToTargetTab$3()V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$restoreSelect$5()V

    return-void
.end method

.method public static synthetic F(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$scrollToTargetTab$2()V

    return-void
.end method

.method public static bridge synthetic G(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mOnTransAnim:Z

    return p0
.end method

.method public static bridge synthetic H(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    return-object p0
.end method

.method public static bridge synthetic I(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mOnTransAnim:Z

    return-void
.end method

.method public static bridge synthetic J(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Landroid/view/ViewGroup;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->animateChildren(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public static bridge synthetic K(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->notifyTabStackViewLoaded()V

    return-void
.end method

.method public static bridge synthetic L(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->onEditModeAnimEnd(ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic M(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->onTransitionFinished()V

    return-void
.end method

.method public static bridge synthetic N(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->sendSALoggingForScrollEvent(I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;IZ)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->requestCloseTabByPos(IZ)V

    return-void
.end method

.method public static synthetic access$300(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->clearTabListAfterCloseAll()V

    return-void
.end method

.method public static synthetic access$700(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    return-object p0
.end method

.method private animateChildren(Landroid/view/ViewGroup;Z)V
    .locals 18

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v2, v7

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    :goto_0
    iget-object v1, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070af5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070af6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070af7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v4, v1

    iget-object v1, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isSelectMode()Z

    move-result v8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v1

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    neg-int v1, v4

    mul-int/2addr v1, v2

    move v10, v1

    move v11, v10

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_4

    neg-int v1, v4

    mul-int/2addr v1, v2

    goto :goto_1

    :cond_4
    move v1, v9

    :goto_1
    if-eqz v8, :cond_5

    move v3, v9

    goto :goto_2

    :cond_5
    neg-int v3, v4

    mul-int/2addr v3, v2

    :goto_2
    move v10, v1

    move v11, v3

    :goto_3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7f0b07ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;

    if-nez v13, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x4

    invoke-virtual {v13, v1}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f0b0cb2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz p2, :cond_8

    if-eqz v8, :cond_7

    invoke-direct {v6, v13, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->showCheckBoxAnim(Landroid/widget/CheckBox;Landroid/view/View;)V

    goto :goto_4

    :cond_7
    invoke-direct {v6, v13, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->hideCheckBoxAnim(Landroid/widget/CheckBox;Landroid/view/View;)V

    goto :goto_4

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v13, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_9
    const/16 v3, 0x8

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    if-eqz p2, :cond_a

    const-wide/16 v3, 0x1

    goto :goto_5

    :cond_a
    const-wide/16 v3, 0x0

    :goto_5
    const-wide/16 v14, 0x12c

    mul-long/2addr v14, v3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isTabManagerNewGuiEnabled()Z

    move-result v3

    if-eqz v3, :cond_b

    const v2, 0x7f0b0cbb

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b0cb6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b0cb7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v2, 0x7f0b0561

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    const v1, 0x7f0b0cba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v1, 0x7f0b0560

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    const v1, 0x7f0b0cbc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v7, v6, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mOnTransAnim:Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/View;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v1, v16, -0x1

    if-ne v0, v1, :cond_c

    move v5, v7

    goto :goto_8

    :cond_c
    move v5, v9

    :goto_8
    int-to-float v0, v10

    invoke-virtual {v4, v0}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-float v1, v11

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v14, v15}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v7, v2

    move v2, v8

    move-object v9, v3

    move-object v3, v13

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$5;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;Z)V

    invoke-virtual {v9, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto :goto_7

    :cond_d
    return-void
.end method

.method private getHorizontalPaddingByResolution()I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    int-to-float v3, v0

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v2, v4}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3c0

    if-lt v0, v4, :cond_0

    const v0, 0x3e4ccccd    # 0.2f

    :goto_0
    mul-float/2addr v3, v0

    goto :goto_1

    :cond_0
    const/16 v4, 0x24d

    if-lt v0, v4, :cond_2

    const/16 v0, 0x19b

    if-lt v1, v0, :cond_1

    const v0, 0x3e0f5c29    # 0.14f

    goto :goto_0

    :cond_1
    const v0, 0x3dcccccd    # 0.1f

    goto :goto_0

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v3, v0

    float-to-int v0, v3

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_2
    return v2

    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->dpToPx(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method private getItemPosition(II)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->seslFindNearChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private hideCheckBoxAnim(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const v0, 0x7f010035

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$6;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$reopenClosedTab$9()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToReopenedTab()V

    return-void
.end method

.method private synthetic lambda$resetBottomPadding$6()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070b00

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setListBottomPadding(I)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->scrollToTargetTab()V

    return-void
.end method

.method private synthetic lambda$resetBottomPadding$7()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$restoreSelect$5()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->scrollForAlign()V

    return-void
.end method

.method private synthetic lambda$scrollToLastTab$10(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$scrollToTargetTab$1()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->scrollToPosition(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mLastVisitedGroupPosition:I

    return-void
.end method

.method private synthetic lambda$scrollToTargetTab$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->snappedToFirstPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->scrollForAlign()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->resetScrollPosition()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$scrollToTargetTab$3()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mLongClickedPosition:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->scrollToPosition(I)V

    return-void
.end method

.method private static synthetic lambda$scrollToTargetTab$4(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToCurrentTab()V

    return-void
.end method

.method private synthetic lambda$showDeleteTransition$8()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTransition:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$3;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    invoke-virtual {v0, v1}, LY2/n0;->addListener(LY2/d0;)LY2/n0;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTransition:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListDeleteTransition;

    invoke-static {v0, p0}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateTabStacks$0()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyTabStackViewLoaded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onTabStackViewLoaded(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    const v2, 0x7f0b0cb9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onTabStackViewLoaded(Landroid/view/View;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEditModeAnimEnd(ZLcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p2, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/widget/ListItemCheckBox;->setChecked(Z)V

    const/4 p0, 0x0

    invoke-virtual {p3, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    return-void
.end method

.method private onTransitionFinished()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onRunningCloseTabAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->exitSelectMode()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->exitEditMode()V

    return-void
.end method

.method private removeTabListView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    return-void
.end method

.method private resetBottomPadding()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private selectTabInEditMode(Landroid/view/View;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v1, p1, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->checkItem(Landroid/view/View;IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    return-void
.end method

.method private sendSALoggingForScrollEvent(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "407"

    const-string v0, "4105"

    goto :goto_0

    :cond_1
    const-string p0, "406"

    const-string v0, "4004"

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const-string p1, "Right"

    goto :goto_1

    :cond_2
    const-string p1, "Left"

    goto :goto_1

    :cond_3
    const-string p1, "Down"

    goto :goto_1

    :cond_4
    const-string p1, "Up"

    :goto_1
    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setListHorizontalPadding()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->getHorizontalPaddingByResolution()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private showCheckBoxAnim(Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->showBasicEditModeCheckBoxIntroAnim(Landroid/content/Context;Landroid/widget/CheckBox;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized showDeleteTransition()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/D0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic v(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$resetBottomPadding$7()V

    return-void
.end method

.method public static synthetic w(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$reopenClosedTab$9()V

    return-void
.end method

.method public static synthetic x(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$resetBottomPadding$6()V

    return-void
.end method

.method public static synthetic y(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$scrollToLastTab$10(I)V

    return-void
.end method

.method public static synthetic z(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->lambda$scrollToTargetTab$1()V

    return-void
.end method


# virtual methods
.method public clearForSwitchMode()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->resetBottomPadding()V

    return-void
.end method

.method public finishDrag()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->finishDrag()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_1
    return-void
.end method

.method public focusBottomTab()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->getItemCount()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public getBottomPaddingHeight()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentShowingItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->getItemCount()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFocusedTabIndex()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

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

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->getItemCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getThumbnailFromTab(Landroid/view/View;)Landroid/view/View;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7f0b0cb9

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public isTabStackAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onConfigurationChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->resetBottomPadding()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->setListHorizontalPadding()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->getSpanCount()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    if-eq v0, v1, :cond_1

    const-string v1, "TabMainViewList"

    const-string v2, "[onConfigurationChanged] span count changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mIsConfigurationChanged:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->updateTabStacks()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mIsConfigurationChanged:Z

    return-void
.end method

.method public onDeleteTransitionEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->goToRootIfNoMemberInCurrentGroup()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->removeTabListView()V

    return-void
.end method

.method public onEnterAnimationEnded()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onEnterAnimationEnded()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    :cond_0
    return-void
.end method

.method public onEnterAnimationStarted()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->onEnterAnimationStarted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    return-void
.end method

.method public onItemSelectedByLongPress(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-ltz p3, :cond_6

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;->getItemCount()I

    move-result p1

    if-lt p3, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->isTabSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mLongPressDragList:Ljava/util/ArrayList;

    if-nez p1, :cond_4

    return-void

    :cond_4
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->selectTabInEditMode(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mLongPressDragList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->selectTabInEditMode(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mLongPressDragList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsLongPressDragging:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mLongPressDragList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mIsLongPressDragging:Z

    return-void
.end method

.method public onMultiSelectStart(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartX:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartY:I

    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 4

    const-string v0, "TabMainViewList"

    const-string v1, "[onMultiSelectStop]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartX:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartY:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->getItemPosition(II)I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartX:I

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartY:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->getItemPosition(II)I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartX:I

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mDragStartY:I

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->getItemPosition(II)I

    move-result p1

    move p2, v0

    :cond_1
    :goto_0
    if-gt v0, p1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    add-int/2addr p2, v0

    add-int/2addr v1, v0

    move v0, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getFilteredTabCount()I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_3

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->isNormalMode()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    sget-object p2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;->EDIT:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->enterEditModeWithType(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mCallBacks:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;

    invoke-interface {v1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;->onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mSPenDragItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->isTabSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mModeType:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isSelectable(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabListItem;->setChecked(Z)V

    goto :goto_1

    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->updateViewsBySelect()V

    :cond_a
    :goto_3
    return-void
.end method

.method public refreshRecyclerView()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->refreshRecyclerView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->resetBottomPadding()V

    return-void
.end method

.method public reopenClosedTab()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->reopenClosedTab()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public restoreSelect()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->resetBottomPadding()V

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->restoreSelect()V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public saveCurrentViewingPosition()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    :cond_0
    return-void
.end method

.method public scrollForAlign()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_0
    return-void
.end method

.method public scrollToLastTab()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getFilteredTabList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, LG6/c;

    const/16 v3, 0xa

    invoke-direct {v2, v0, v3, p0}, LG6/c;-><init>(IILjava/lang/Object;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public scrollToTargetTab()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz v0, :cond_5

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

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    if-ltz v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->fromCardView()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mLongClickedPosition:I

    if-eq v0, v1, :cond_4

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public showDeleteTransition(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->showDeleteTransition()V

    return-void
.end method

.method public startCheckBoxAnimation(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$7;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Z)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method public startCloseAllTabsAnimation()V
    .locals 15

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->stopNestedScroll()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xfa

    goto :goto_0

    :cond_1
    const/16 v0, 0xb4

    :goto_0
    int-to-long v0, v0

    const-wide/16 v2, 0x2

    div-long v2, v0, v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    const v6, 0x3f2b851f    # 0.67f

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v7, v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_2
    if-ge v8, v6, :cond_5

    add-int/lit8 v10, v6, -0x1

    if-ne v8, v10, :cond_3

    move v10, v5

    goto :goto_3

    :cond_3
    move v10, v7

    :goto_3
    iget-object v11, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v11, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v12

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v4

    invoke-virtual {v12, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/InterpolatorUtil;->sineInOut33()Landroid/view/animation/Interpolator;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    int-to-long v13, v9

    mul-long/2addr v13, v2

    invoke-virtual {v11, v13, v14}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;

    invoke-direct {v11, p0, v10}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$4;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Z)V

    invoke-virtual {v9, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewPropertyAnimator;->start()V

    move v9, v12

    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public startIntroAnimation(Landroid/view/View;I)V
    .locals 2

    const-string p1, "[startIntroAnimation] tabId: "

    const-string v0, "TabMainViewList"

    invoke-static {p2, p1, v0}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getRecents()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabOutroAnimating()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "startIntroAnimation is returned by isMultiTabOutroAnimating"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setFirstIntroAnimation(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->getTabViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const v0, 0x7f0b0cb9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;-><init>(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mIntroAnimDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;->startIntroAnimation(Landroid/view/View;IZ)V

    :cond_4
    :goto_0
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setScrollBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setHorizontalScrollBlock(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->exitSelectMode()V

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

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isMultiTabModeChanging()Z

    move-result v0

    if-nez v0, :cond_4

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
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->startOutroAnimationForExistingTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->runActionsBySkipAnim(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startOutroAnimationForInvisibleTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->setMultiTabOutroAnimating(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getRecents()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0cbd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    const v2, 0x7f01011d

    invoke-static {v1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$8;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;Ljava/lang/Runnable;Ljava/lang/Runnable;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-virtual {v1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public supportHorizontalFocusMove()Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->getSpanCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateTabStacks()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "InflateParams"
        }
    .end annotation

    const-string v0, "TabMainViewList"

    const-string v1, "[updateTabStacks]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->getSelectedTabIndexList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->removeTabListView()V

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
    const v3, 0x7f0e08d3

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->setListHorizontalPadding()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCoordinatorLayout()Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->seslSetNestedScrollingChild(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/D0;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mItemAnimator:Landroidx/recyclerview/widget/D0;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->resetBottomPadding()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView$2;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setCallback(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Callback;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->getDelegate()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView;->setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerView$Delegate;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    if-nez v1, :cond_4

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mTabLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;-><init>(Landroid/content/Context;ZLcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->mTabRecyclerViewAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u0;->setHasStableIds(Z)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->isSecretModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setIsSecretMode(Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->createTabRecyclerAdapterListener()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter;->setListener(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabRecyclerAdapter$TabRecyclerAdapterListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setOnMultiSelectedListener()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->setLongPressMultiSelectedListener()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->refreshTabList()V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->handleModeType(Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$Delegate;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mIsConfigurationChanged:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToCurrentTab()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->resetScrollPosition()V

    goto :goto_2

    :cond_7
    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->resetScrollPosition()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/a;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->scrollToCurrentTab()V

    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;->getSpanCount()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mSpanCount:I

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListAdapter:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListAdapter;

    new-instance v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/b;-><init>(Landroid/view/ViewGroup;)V

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;)V

    new-instance v1, Landroidx/recyclerview/widget/X;

    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/X;-><init>(Landroidx/recyclerview/widget/U;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mTouchHelper:Landroidx/recyclerview/widget/X;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->mTabListView:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListView;

    invoke-virtual {v1, p0}, Landroidx/recyclerview/widget/X;->c(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public updateTabStacksBySelect(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableViewBase;->findIndexById(I)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainEditableView;->mScrollPosition:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabMainListView;->updateTabStacks()V

    return-void
.end method
