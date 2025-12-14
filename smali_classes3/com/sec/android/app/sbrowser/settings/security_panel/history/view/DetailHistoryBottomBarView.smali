.class public Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

.field private mBaseMainView:Landroid/view/View;

.field private mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mBottomDeleteButton:Landroid/widget/LinearLayout;

.field private mBottomDeleteView:Landroid/widget/LinearLayout;

.field private mDeleteTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private final mKeyListener:Landroid/view/View$OnKeyListener;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/f;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/f;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mKeyListener:Landroid/view/View$OnKeyListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->lambda$showBottomDeleteButton$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->lambda$hideBottomBar$2()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method private hideBottomBar()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mVisible:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/e;-><init>(ILjava/lang/Object;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$hideBottomBar$2()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->requestFocusOnSelectAll()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showBottomDeleteButton$1(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->onClickDeleteButton()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->deleteSelectedData()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->isActionMode()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->destroySelectionMode()V

    :cond_0
    return-void
.end method

.method private showBottomBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView$1;-><init>(Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method


# virtual methods
.method public requestFocusOnDelete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteButton:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public setBottomBarDeleteText(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    const p1, 0x7f140434

    goto :goto_0

    :cond_0
    const p1, 0x7f140433

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteButton:Landroid/widget/LinearLayout;

    const-string v1, ", "

    invoke-static {p1, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1402b1

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDeleteVisibility(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->showBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07135b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    :goto_0
    float-to-int p1, p1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->hideBottomBar()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071354

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    :cond_1
    return-void
.end method

.method public showBottomDeleteButton(Landroid/view/LayoutInflater;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->getMainView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseUi:Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailCommonUi;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseListView:Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0e01e8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f0b0ad3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBaseMainView:Landroid/view/View;

    const v2, 0x7f0b047f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarMarginView:Landroid/view/View;

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteView:Landroid/widget/LinearLayout;

    invoke-direct {v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    const v1, 0x7f0b02da

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteButton:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteButton:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mBottomDeleteButton:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f14004e

    const-string v5, ", "

    invoke-static {v3, v4, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b03e5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mDeleteTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/view/DetailHistoryBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->setDeleteTextBackground(Landroid/app/Activity;Landroid/widget/TextView;)V

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
