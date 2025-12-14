.class public Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;
.implements Lc6/e;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

.field private mAppBarOffset:I

.field private mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

.field private mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mCoordinatorLayoutParent:Landroid/widget/RelativeLayout;

.field private mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

.field private mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mIsSecretModeEnabled:Z

.field private mMainAppBarTitle:Landroid/widget/TextView;

.field private mOldHeight:I

.field private mSelectAllCheckBox:Landroid/widget/CheckBox;

.field private mSelectAllCheckBoxAllText:Landroid/widget/TextView;

.field private mSelectAllLayout:Landroid/widget/LinearLayout;

.field private mSelectItemCountText:Landroid/widget/TextView;

.field private mSubAppBarTitle:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleContainer:Landroid/widget/RelativeLayout;

.field private mToolbar:Landroidx/appcompat/widget/Toolbar;

.field private final mToolbarKeyListener:Landroid/view/View$OnKeyListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/c;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/c;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbarKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->lambda$onConfigurationChanged$2()V

    return-void
.end method

.method private applyAppBarTheme()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0609cb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060bd3

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f06013a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCoordinatorLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060257

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f060208

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentScrimColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0601f7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060209

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->lambda$updateActionbarLayout$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->lambda$collapseAppBar$1(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->lambda$updateActionbarLayout$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    return-object p0
.end method

.method private getCheckedText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140289

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f14028a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getPluralString(II)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f12005f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f140801

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140655

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getCheckedText()Ljava/lang/String;

    move-result-object p0

    const-string v2, ", "

    invoke-static {v1, p0, v2, v0}, LV0/c;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getSelectedString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$collapseAppBar$1(Lcom/google/android/material/appbar/AppBarLayout$Behavior;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lc6/r;->v(I)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->notifyAppBarHeightChanged()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->onToolbarKeyEventDown()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$onConfigurationChanged$2()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setActionButtonTintColorForToolbar()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$3(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    return-void
.end method

.method private synthetic lambda$updateActionbarLayout$4(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string v2, "8773"

    invoke-static {p1, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeSelectAll(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getSelectedString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private setActionButtonTintColorForToolbar()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setActionButtonTintColorMenu(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    instance-of v4, v3, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v4, :cond_3

    check-cast v3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setActionButtonTintColorMenu(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-direct {p0, v6}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setActionButtonTintColorMenu(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private setActionButtonTintColorMenu(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060137

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0601f6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p0}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method private setStatusBarColor()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->shouldUseDarkStatusBar()Z

    move-result v0

    const v1, 0x7f060d8e

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setLightStatusBarTheme(Landroid/content/Context;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f060257

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setStatusBarColor(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setTextLayoutHeight()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateSelectAllTextWithoutContentDescription()V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120001

    invoke-virtual {v2, v4, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    return-void
.end method

.method private useDefaultAppbarRatio()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public addViewToToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public applyExtendAppBar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->resetAppBarHeight()V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkSelectAllCheckbox(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public collapseAppBar()V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iget-object v0, v0, LR0/d;->a:LR0/c;

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/PathInterpolator;

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ea8f5c3    # 0.33f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v4, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/d;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/d;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lcom/google/android/material/appbar/AppBarLayout$Behavior;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p0

    neg-int p0, p0

    filled-new-array {v1, p0}, [I

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public isAppBarExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarOffset:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSelectAllChecked()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public notifyAppBarHeightChanged()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mOldHeight:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mOldHeight:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lt/k0;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;Lt/k0;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public notifyAppBarHeightChangedWithDelay(Z)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/a;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;I)V

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x32

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0xfa

    :goto_0
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->restoreLayoutHeight()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setTextLayoutHeight()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/a;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreate()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b042b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b043a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b042e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b042c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCollapsingToolbarLayout:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b042d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b042f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitleContainer:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0434

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0431

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCoordinatorLayoutParent:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0430

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mCoordinatorLayout:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lc6/e;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v2}, Lm/n;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    check-cast v0, Lm/n;

    invoke-virtual {v0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lm/b;->n(Z)V

    invoke-virtual {v0, v1}, Lm/b;->r(Z)V

    invoke-virtual {v0}, Lm/b;->u()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1, v1}, Landroidx/appcompat/widget/Toolbar;->setContentInsetsAbsolute(II)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b043b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setStatusBarColor()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->applyAppBarTheme()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->setActionButtonTintColorForToolbar()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lc6/e;)V

    return-void
.end method

.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    move-result p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarOffset:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitleContainer:Landroid/widget/RelativeLayout;

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    int-to-float p1, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->notifyAppBarHeightChanged()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0601f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    const v1, 0x7f0b0437

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0b0432

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f0b0436

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f0b0435

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v0, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isOnlySaveAllFailedItemExisting()Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    :goto_1
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f140f8f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v1}, Landroidx/appcompat/widget/Toolbar;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    if-eqz p2, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v0, :cond_5

    const-string v0, "1002"

    goto :goto_2

    :cond_5
    const-string v0, "8755"

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v2, :cond_7

    invoke-interface {v2, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_7
    if-eqz v3, :cond_9

    if-eqz p2, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-nez v0, :cond_8

    move v0, v5

    goto :goto_3

    :cond_8
    move v0, v4

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_9
    if-eqz p1, :cond_b

    if-eqz p2, :cond_a

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz p0, :cond_a

    move v4, v5

    :cond_a
    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_b
    return-void
.end method

.method public removeViewFromToolbar(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public resetAppBarHeight()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070477

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->useDefaultAppbarRatio()Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v1, v1

    const v2, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->useDefaultAppbarRatio()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mTitle:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712bf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    int-to-float v1, v1

    const v2, 0x3ec7ae14    # 0.39f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public restoreLayoutHeight()V
    .locals 2

    new-instance v0, Lt/k0;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryMainView:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDHistoryAdapter(Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mAppBarLayout:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(Z)V

    return-void
.end method

.method public setupToolbarFocusHandling()V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v3, :cond_0

    check-cast v2, Landroidx/appcompat/widget/ActionMenuView;

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mToolbarKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public showSelectAllCheckBoxAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f010037

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public updateActionbarLayout()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0808

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0a52

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0a50

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f0b0a51

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    const v1, 0x7f0b0088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBoxAllText:Landroid/widget/TextView;

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/b;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v2

    const v3, 0x7f0b0af9

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0800ad

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f060e10

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/sec/android/app/sbrowser/download/ui/b;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/sec/android/app/sbrowser/download/ui/b;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setClickable(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mIsSecretModeEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060bed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectItemCountText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f06013a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBoxAllText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView$3;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSelectAllDownloadList()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateToolbar(ZLandroid/view/View;)V

    return-void
.end method

.method public updateAppBarInfo(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1404a2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f120001

    invoke-virtual {v2, v4, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f140f8f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isHasDownloadedFiles()Z

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getDownloadedTodayCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilteredCount()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f1404a8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f14046d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mMainAppBarTitle:Landroid/widget/TextView;

    const v2, 0x7f120015

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getFilterType()I

    move-result p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_a

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120014

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120013

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120018

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120017

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    const v0, 0x7f120016

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getPluralString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSubAppBarTitle:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0603c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    return-void
.end method

.method public updateSelectAllText()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->updateSelectAllTextWithoutContentDescription()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mDownloadHistoryAdapter:Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->getCheckedText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f14105f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f140b8f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const v1, 0x7f141085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHAppBarView;->mSelectAllCheckBox:Landroid/widget/CheckBox;

    const v2, 0x7f141084

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
