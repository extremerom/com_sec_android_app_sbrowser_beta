.class public Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field mContinueButton:Landroid/widget/Button;

.field mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

.field private mIsMoreButton:Z

.field mPageView:Landroid/view/View;

.field mScrollInner:Landroid/widget/LinearLayout;

.field mScrollView:Landroid/widget/ScrollView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mIsMoreButton:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->lambda$onMoreButtonClicked$0()V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mIsMoreButton:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->onMoreButtonClicked()V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->updateButtonText()V

    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onMoreButtonClicked$0()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->fullScroll(I)Z

    return-void
.end method

.method private onMoreButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateButtonText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mIsMoreButton:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContinueButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const v0, 0x7f1405ac

    goto :goto_0

    :cond_0
    const v0, 0x7f14059a

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updatePaddingTop()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0705fd

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollInner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updatePermissionView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.LOCATION"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.CAMERA"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.MICROPHONE"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.STORAGE"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.READ_MEDIA_VISUAL"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "android.permission-group.READ_MEDIA_AURAL"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "android.permission-group.NEARBY_DEVICES"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f1405bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$4;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$4;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05af

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    :cond_1
    :goto_0
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "android.permission-group.PHONE"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->getGroupLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    :goto_1
    const/16 v1, 0x20

    if-le v0, v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f1400db

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$5;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$5;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;Landroid/widget/TextView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v2, 0x7f0b05b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    :cond_4
    :goto_2
    const/16 v1, 0x21

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->hideView(Landroid/view/View;)V

    :goto_3
    return-void
.end method

.method private updateScrollViewWidth()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    goto :goto_0

    :cond_0
    const-wide v0, 0x3fb999999999999aL    # 0.1

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method private updateTitleView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f1405c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->combineAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0705fc

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v1, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    return-object p0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollInner:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContinueButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->updateScrollViewWidth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->updatePaddingTop()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->updateTitleView()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->updatePermissionView()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$2;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mContinueButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView$3;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onAgreeButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPermissionBaseView;->mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;->onAgreeButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method
