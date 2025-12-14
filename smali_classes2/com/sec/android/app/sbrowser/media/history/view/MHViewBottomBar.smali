.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

.field private mDeleteBottomBarTextView:Landroid/widget/TextView;

.field private final mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

.field private mShareBottomBarButtonView:Landroid/widget/LinearLayout;

.field private mShareBottomBarTextView:Landroid/widget/TextView;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->initializeBottomBar()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;)Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    return-object p0
.end method

.method private getHeightToShift()I
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b0742

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-nez v3, :cond_4

    return v2

    :cond_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f070149

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v5

    iput v6, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-lt v7, v4, :cond_5

    iget v2, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    sub-int v2, v6, v4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_5

    const v0, 0x7f07019e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_5
    return v2
.end method

.method private hide()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071354

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->setGoToTopAndHoverBottomPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method private initializeBottomBar()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0b01bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b047f

    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarMarginView:Landroid/view/View;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-nez v4, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-direct {v4, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    :cond_0
    const v2, 0x7f0b06fa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    const v3, 0x7f0b06fc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0b06fb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    const v2, 0x7f0b0700

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->setBackgroundForShowButtonShapes()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f140053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBackgroundForShowButtonShapes()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarTextView:Landroid/widget/TextView;

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method private setGoToTopAndHoverBottomPadding(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getMediaHistoryList()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    return-void
.end method

.method private show()V
    .locals 5

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mVisible:Z

    sget-object v1, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$2;->$SwitchMap$com$sec$android$app$sbrowser$media$history$common$MHConstants$ActionModeType:[I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActionModeType()Lcom/sec/android/app/sbrowser/media/history/common/MHConstants$ActionModeType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v1, v0, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070920

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->setGoToTopAndHoverBottomPadding(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->getHeightToShift()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v3, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar$1;-><init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;I)V

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method private updateBottomBarText()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1402b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f14004e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getItemCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    const v2, 0x7f140434

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public finishActionMode()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result p1

    const-string v0, "3220"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistoryActionMode(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getController()Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->onShareButtonClicked()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result p1

    const-string v0, "3224"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/media/common/MediaSALogging;->videoHistoryActionMode(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getController()Lcom/sec/android/app/sbrowser/media/history/view/IMHController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHController;->onDeleteButtonClicked()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b06fa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDeleteCompleted()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->setChildEnabled(Z)V

    return-void
.end method

.method public preDeleteStarted()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->setChildEnabled(Z)V

    return-void
.end method

.method public setChildEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mDeleteBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mShareBottomBarButtonView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public startActionMode()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    return-void
.end method

.method public updateBottomBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->isInActionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->mMainView:Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/media/history/view/IMHViewMainUI;->getSelectedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBarText()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->show()V

    return-void

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->hide()V

    return-void
.end method
