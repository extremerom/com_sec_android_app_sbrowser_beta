.class abstract Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/help_intro/page/IHelpIntroPage;


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAgreeButton:Landroid/widget/Button;

.field mContext:Landroid/content/Context;

.field mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

.field mPageView:Landroid/view/View;

.field mSaLoginDescriptionView:Landroid/widget/TextView;

.field mScrollInner:Landroid/widget/LinearLayout;

.field mScrollView:Landroid/widget/ScrollView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->onMoreButtonClicked()V

    return-void
.end method

.method private onMoreButtonClicked()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$5;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updatePaddingTop()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0705fd

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollInner:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method private updateScrollViewWidth()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowWidth(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method private updateTitleView()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0705fc

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/TypedValueUtils;->getFloat(Landroid/content/Context;I)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->getWindowHeight(Landroid/content/Context;)I

    move-result v2

    int-to-double v2, v2

    mul-double/2addr v2, v0

    double-to-int v0, v2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v0}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f1400d3

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPageView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    return-object p0
.end method

.method public init()V
    .locals 2

    const-string v0, "si__HelpIntroPageBaseView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b059b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b059a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollInner:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b059c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b0586

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mPageView:Landroid/view/View;

    const v1, 0x7f0b05c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mSaLoginDescriptionView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updateScrollViewWidth()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updatePaddingTop()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->updateTitleView()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isTabASeries()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mSaLoginDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->getSamsungAccountName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/help_intro/utils/HelpIntroUtil;->recordSatNoticeShown(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$2;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$3;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$4;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public isDarkMode()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result p0

    return p0
.end method

.method public onAgreeButtonClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mHelpIntroButtonListener:Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroButtonListener;->onAgreeButtonClicked()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setHighlightColor(Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0601c1

    goto :goto_0

    :cond_0
    const v0, 0x7f0601c0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setHighlightColor(I)V

    return-void
.end method

.method public setUpDownKeyListener(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView$6;-><init>(Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public updateButtonText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mAgreeButton:Landroid/widget/Button;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/page/HelpIntroPageBaseView;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1405ac

    goto :goto_0

    :cond_0
    const p0, 0x7f14059a

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
