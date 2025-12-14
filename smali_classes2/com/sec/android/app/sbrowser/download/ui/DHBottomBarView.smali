.class public Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDHBottomBarView;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBottomBar:Landroid/widget/LinearLayout;

.field private mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

.field private mBottomBarDelete:Landroid/widget/LinearLayout;

.field private mBottomBarDeleteIcon:Landroid/widget/ImageView;

.field private mBottomBarDeleteTextView:Landroid/widget/TextView;

.field private mBottomBarDivider:Landroid/view/View;

.field private mBottomBarHandler:Landroid/os/Handler;

.field private mBottomBarMarginView:Landroid/view/View;

.field private mBottomBarMove:Landroid/widget/LinearLayout;

.field private mBottomBarMoveIcon:Landroid/widget/ImageView;

.field private mBottomBarMoveText:Landroid/widget/TextView;

.field private mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

.field private mBottomBarRemoveFromHistoryIcon:Landroid/widget/ImageView;

.field private mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

.field private mBottomBarRename:Landroid/widget/LinearLayout;

.field private mBottomBarRenameIcon:Landroid/widget/ImageView;

.field private mBottomBarRenameTextView:Landroid/widget/TextView;

.field private mBottomBarRetry:Landroid/widget/LinearLayout;

.field private mBottomBarRetryIcon:Landroid/widget/ImageView;

.field private mBottomBarRetryTextView:Landroid/widget/TextView;

.field private mBottomBarShare:Landroid/widget/LinearLayout;

.field private mBottomBarShareIcon:Landroid/widget/ImageView;

.field private mBottomBarShareTextView:Landroid/widget/TextView;

.field private mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mHandler:Landroid/os/Handler;

.field private mRenameDownloadDialog:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

.field private mSecretModeEnabled:Z

.field private final mShareButtonTouchPoint:Landroid/graphics/Point;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarHandler:Landroid/os/Handler;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mShareButtonTouchPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mSecretModeEnabled:Z

    new-instance p1, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-direct {p1, p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mRenameDownloadDialog:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$4()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$5(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$6(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$1()V

    return-void
.end method

.method private hideBottomBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mVisible:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f071354

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getDimensFromResources(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setGoToTopAndHoverBottomPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->hide()V

    return-void
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->lambda$initializeBottomBar$7(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private initializeBottomBar()Landroid/view/View;
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e01ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0d3a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0d46

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0d45

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameTextView:Landroid/widget/TextView;

    const v1, 0x7f0b05f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteIcon:Landroid/widget/ImageView;

    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v4, 0x7f140bf1

    const-string v5, ", "

    invoke-static {v3, v4, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f140be5

    invoke-static {v3, v6, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0d44

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f140478

    invoke-static {v3, v6, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0d47

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/f;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/f;-><init>(Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0d43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/e;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/download/ui/e;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v6, 0x7f140053

    invoke-static {v3, v6, v2, v5}, Lcom/sec/android/app/sbrowser/autofill/password/k;->r(Landroid/app/Activity;ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDivider:Landroid/view/View;

    const v1, 0x7f0b05fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    const v1, 0x7f0b05fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    const v1, 0x7f0b05f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    const v1, 0x7f0b05fb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    const v1, 0x7f0b05f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBottomBarIconButtonColor(Landroid/widget/ImageView;)V

    return-object v0
.end method

.method public static bridge synthetic j(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMarginView:Landroid/view/View;

    return-object p0
.end method

.method private synthetic lambda$initializeBottomBar$0(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isSaveAllProgressItem()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getParentActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->onAction(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTerraceDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/download/TerraceDownloadItem;->getDownloadInfo()Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->retryDownload(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    return-void
.end method

.method private synthetic lambda$initializeBottomBar$1()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getCurrentActionModeType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mSecretModeEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/download/DownloadSettings;->isSecretDownloadEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteIcon:Landroid/widget/ImageView;

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showDeleteMoreMenuPopup(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeDeleteAction(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$initializeBottomBar$2(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8824"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/g;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$initializeBottomBar$3(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mRenameDownloadDialog:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->showRenameDialog(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeBottomBar$4()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeDeleteAction(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initializeBottomBar$5(Landroid/view/View;)V
    .locals 3

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/g;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;I)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private lambda$initializeBottomBar$6(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "8823"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x1f4

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f14047a

    invoke-virtual {p0, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p1, p0, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->createShareIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isCrownUxAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->hideActionModeIfNeeded()V

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->startShareIntent(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$initializeBottomBar$7(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mShareButtonTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    aget v3, v0, v1

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Point;->x:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mShareButtonTouchPoint:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    const/4 p2, 0x1

    aget p2, v0, p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Point;->y:I

    :cond_0
    return v1
.end method

.method private synthetic lambda$initializeBottomBar$8(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeMoveAction()V

    return-void
.end method

.method private setBackgroundColor()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mSecretModeEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isDarkModeEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060be1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0609cb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0601ff

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0601fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :goto_0
    return-void
.end method

.method private showBottomBar()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mVisible:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mVisible:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f07135b

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getDimensFromResources(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setGoToTopAndHoverBottomPadding(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->show(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController$BottomBarAnimationListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->updateBottomMargin(Z)V

    return-void
.end method

.method private startShareIntent(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f140053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->chooserIntent(Landroid/content/Intent;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->bringToFront()Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sem_extra_chooser_content_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v1, "sem_extra_chooser_content_size"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isLaunchedFromMainMoreMenu()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityShare(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mShareButtonTouchPoint:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {p1, v3, v1}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->getGridAreaDirection(Landroid/content/Context;II)I

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;IZLandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private updateShareAndRetryVisiblity(I)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isFailed()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move v3, v5

    if-eqz v2, :cond_0

    :cond_2
    :goto_0
    if-eq p1, v5, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x5

    if-eq p1, v0, :cond_7

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const/16 p1, 0x8

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v5, :cond_6

    if-nez v2, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public isVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mVisible:Z

    return p0
.end method

.method public onCreate()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatInvalid"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->initializeBottomBar()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b047f

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMarginView:Landroid/view/View;

    const v2, 0x7f0b01bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->getSmallestDeviceWidthDp(Landroid/content/Context;)I

    move-result v2

    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isLaunchedFromMainMoreMenu()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    check-cast v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->isOpenedFromNotification()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070f3e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    if-nez v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBar:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMarginView:Landroid/view/View;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarController:Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBackgroundColor()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->setBackgroundForShowButtonShapes()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public postOnBottomBarHandler(Ljava/lang/Runnable;J)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setBackgroundForShowButtonShapes()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareTextView:Landroid/widget/TextView;

    const v1, 0x7f08009d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShareTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0600ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistoryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetryTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMoveText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRenameTextView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setBottomBarIconButtonColor(Landroid/widget/ImageView;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0600ec

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method

.method public setGoToTopAndHoverBottomPadding(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetGoToTopBottomPadding(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetHoverBottomPadding(I)V

    return-void
.end method

.method public showRename(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mRenameDownloadDialog:Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->showRenameDialog(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return-void
.end method

.method public startBottomBarDelete()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public startBottomBarRemoveFromHistory()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    return-void
.end method

.method public updateBottomBar(IZ)V
    .locals 5

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->showBottomBar()V

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eq p1, p2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRename:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSelectAllDownloadList()Z

    move-result v2

    if-ne p1, p2, :cond_7

    if-eqz v2, :cond_6

    const p2, 0x7f14046e

    goto :goto_0

    :cond_6
    const p2, 0x7f14004f

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    const p2, 0x7f140434

    goto :goto_0

    :cond_8
    const p2, 0x7f140433

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    const-string v3, ", "

    invoke-static {p2, v3}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->updateShareAndRetryVisiblity(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDelete:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarShare:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRetry:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDivider:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarRemoveFromHistory:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarMove:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->mBottomBarDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :cond_b
    :goto_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHBottomBarView;->hideBottomBar()V

    return-void
.end method
