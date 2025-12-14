.class public Lcom/sec/android/app/sbrowser/download/ui/DHMainView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/download/ui/IDHMainView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/download/ui/DHMainView$DownloadDeleteTransition;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFilterSpinnerBar:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mFilterTitlesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mForceFullScreen:Z

.field private mItemTouchListener:Landroidx/recyclerview/widget/N0;

.field private mLayoutMargin:I

.field private final mMainHandler:Landroid/os/Handler;

.field private mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$1;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private addListItemsDecoration(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lq/d;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lq/d;-><init>(Landroid/content/Context;)V

    new-instance v2, Lq/d;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lq/d;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$5;

    invoke-direct {v3, p0, v2, p1, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$5;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Lq/d;ILq/d;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->lambda$setLayoutChangeListener$2(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/MenuItem;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->lambda$setOnMenuItemClickListener$1(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private dispatchMoreKeyEvent()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSearchViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getFilteredCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->openOptionsMenu()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterTitlesList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getFilterArrayAdaptor(I)Landroid/widget/ArrayAdapter;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0807be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f060236

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterTitlesList:Ljava/util/List;

    move-object v2, v0

    move-object v3, p0

    move v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$3;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Landroid/content/Context;ILjava/util/List;ZLandroid/graphics/drawable/Drawable;)V

    const p0, 0x7f0e01fc

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    return-object v0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "8821"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$setLayoutChangeListener$2(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x22

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p1

    const/16 p2, 0x77f

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    const/high16 p2, 0x40800000    # 4.0f

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mLayoutMargin:I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->updateLayoutMargin(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mLayoutMargin:I

    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->needMarginLayout(Landroid/content/Context;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->setLayoutMargin(Z)V

    return-void
.end method

.method private synthetic lambda$setOnMenuItemClickListener$1(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v0, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->renameDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return v0

    :pswitch_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->openDownloadItem(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    return v0

    :pswitch_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeDeleteAction(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->deleteItemFromContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x7f0b0462
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setLayoutChangeListener()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/k;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/download/ui/k;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private setLayoutMargin(Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mLayoutMargin:I

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v5, 0x7f0b0433

    invoke-virtual {v4, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, LR0/d;

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "DownloadHistoryUi"

    if-nez p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, " standard LayoutMargin for root "

    invoke-static {v2, p0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_3
    :goto_1
    const-string p0, " standard LayoutMargin for subview "

    invoke-static {v2, p0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method

.method private setOnMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/j;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/download/ui/j;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public addRecyclerViewRoundCorners()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0609cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const v0, 0x7f060e1e

    goto :goto_0

    :cond_1
    const v0, 0x7f060e26

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->addListItemsDecoration(I)V

    return-void
.end method

.method public createDeleteDialogListener(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$4;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x71

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x3b

    if-eq v2, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v4

    :goto_3
    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->setCtrlKeyPressed(Z)V

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->setIsShiftPressed(Z)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_6

    sparse-switch v0, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->dispatchMoreKeyEvent()Z

    move-result p0

    return p0

    :sswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getFilteredCount()I

    move-result p1

    if-lez p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->showSearchView()V

    goto :goto_6

    :sswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeDeleteAction(Z)V

    return v4

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSelectAllChecked()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0, v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->executeSelectAll(Z)V

    return v4

    :cond_6
    :goto_6
    const/16 p1, 0x3ee

    if-ne v0, p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSearchViewShowing()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->requestSearchEditTextDataFocus()V

    return v3

    :cond_7
    return v4

    :cond_8
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x7fffffe3 -> :sswitch_3
        -0x7fffffe0 -> :sswitch_2
        -0x7fffffde -> :sswitch_1
        -0x7fffffd7 -> :sswitch_0
        0x54 -> :sswitch_1
        0x70 -> :sswitch_2
    .end sparse-switch
.end method

.method public focusSpinner()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getMainListItemTouchListener()Landroidx/recyclerview/widget/N0;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mItemTouchListener:Landroidx/recyclerview/widget/N0;

    return-object p0
.end method

.method public onCreate()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "should_force_fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mForceFullScreen:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->supportPopOverOptions()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getParentActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mForceFullScreen:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v1, v4, v5}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->addObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v1

    const-string v4, "should_animate"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f01010f

    goto :goto_0

    :cond_0
    const v1, 0x7f010110

    :goto_0
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0439

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinnerBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinnerBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setBackgroundDrawable(Landroid/content/Context;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0438

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0e01f3

    goto :goto_1

    :cond_2
    const v0, 0x7f0e01f2

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/download/DownloadFilter;->getFilterTitles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterTitlesList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->getFilterArrayAdaptor(I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const v2, 0x7f080189

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setPopupBackgroundResource(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const v2, 0x7f08016c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    const v2, 0x7f070489

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getDimensFromResources(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownHorizontalOffset(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/sec/android/app/sbrowser/download/ui/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/download/ui/f;-><init>(Lcom/sec/android/app/sbrowser/download/ui/IDownloadHistoryView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140546

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView$2;-><init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->setLayoutChangeListener()V

    return-void
.end method

.method public onCreateItemContextMenu(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/ContextMenu;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10000d

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isActionModeShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getSelectedItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    const v0, 0x7f0b0464

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-interface {p2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->setOnMenuItemClickListener(Landroid/view/MenuItem;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mForceFullScreen:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->getInstance()Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowManager;->removeObserver(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/multiwindow/MultiWindowObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    :cond_1
    return-void
.end method

.method public setCtrlKeyPressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    return-void
.end method

.method public setDownloadFilterEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setEnabled(Z)V

    return-void
.end method

.method public setIsShiftPressed(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setIsShiftPressed(Ljava/lang/Boolean;)V

    return-void
.end method

.method public setTalkbackOnLongPress(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f140e6f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f14107e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f140b8f

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showHideSpinnerBar(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mFilterSpinnerBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public startActionModeAnimation(LY2/d0;Landroid/view/ViewGroup;Z)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    if-eqz p3, :cond_0

    const v1, 0x7f010037

    goto :goto_0

    :cond_0
    const v1, 0x7f010035

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-static {p3}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getChangeBounds(Z)LY2/i;

    move-result-object v1

    invoke-virtual {v1, p1}, LY2/f0;->addListener(LY2/d0;)LY2/f0;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, p1, :cond_4

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {v5, v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadItemForView(Landroid/view/View;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    const v5, 0x7f0b0441

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz p3, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0x8

    :goto_2
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {p2, v1}, LY2/j0;->a(Landroid/view/ViewGroup;LY2/f0;)V

    return-void
.end method

.method public updateWindowLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHUiUtils;->getParentActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->mSitesWindowObserver:Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sites/SitesWindowObserver;->updateWindowLayout()V

    :cond_0
    return-void
.end method
