.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mIsEnabled:Z

.field private mIsIconMode:Z

.field private mIsInMultiWindowMode:Z

.field private mIsNativeScrollSync:Z

.field private mIsScrollSync:Z

.field private mIsSecretMode:Z

.field private mIsSplitIconShown:Z

.field private mIsSplitted:Z

.field private mIsTablet:Z

.field private mIsTranslated:Z

.field private mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

.field private mScrollSync:Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;

.field private mSplitButton:Landroid/widget/TextView;

.field private mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

.field private mSplitIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsInMultiWindowMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitIconShown:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitted:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsEnabled:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsScrollSync:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTablet:Z

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsIconMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSecretMode:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsNativeScrollSync:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;

    invoke-direct {p1}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mScrollSync:Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isNativeScrollSync()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsNativeScrollSync:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsEnabled:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    return p0
.end method

.method private isSupportedByWindowSize(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTablet:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    int-to-float p0, p1

    const p1, 0x43888000    # 273.0f

    mul-float/2addr v0, p1

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_1

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    int-to-float p0, p1

    const/high16 p1, 0x43830000    # 262.0f

    mul-float/2addr v0, p1

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private isTranslateV2()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private offAllTabIfNotSupported(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSupportedByWindowSize(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSplitIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080353

    goto :goto_0

    :cond_0
    const p0, 0x7f080352

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method


# virtual methods
.method public changeSplitBtnBgColor(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public changeSplitBtnText(Landroid/view/View;Z)V
    .locals 1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    const v0, 0x7f0b0dbf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1405c7

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1405c9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140f5d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f140f5e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitIconShown:Z

    if-nez p2, :cond_4

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsIconMode:Z

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    const p2, 0x7f1502ec

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public changeSplitBtnTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public getSplitButtonLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getTransBarSplitScrollSyncEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getTransBarSplitScrollSyncEnabled()Z

    move-result p0

    return p0
.end method

.method public isNativeScrollSync()Z
    .locals 0

    const-string p0, "Samsung Scroll Sync"

    invoke-static {p0}, Lcom/sec/terrace/TerraceFeatureList;->isEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isReaderPage()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isReaderPage()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSplitted()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSplitMode()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyCurrentUrlChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    xor-int/lit8 p2, p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onLoadUrl(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public notifyUpdateExt()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->notifyUpdateExtImpl(Z)V

    return-void
.end method

.method public notifyUpdateExtImpl(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsScrollSync:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->runPageSplitMode(Z)V

    :cond_0
    return-void
.end method

.method public onChangeSplitBtn(Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    check-cast p5, Landroid/app/Activity;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p5

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsInMultiWindowMode:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isReaderPage()Z

    move-result p5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez p5, :cond_1

    iget-boolean p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsInMultiWindowMode:Z

    if-nez p5, :cond_1

    if-nez p4, :cond_1

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result p4

    const/4 p5, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p0, p5, v1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    :cond_2
    move v1, p5

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitted:Z

    if-eqz p2, :cond_1

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setEnabled(Z)V

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Landroid/view/View;->setClickable(Z)V

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->changeSplitBtnText(Landroid/view/View;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->updateSplitIcon()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->updateSplitIconTint()V

    return-void
.end method

.method public onChangeWindowSize(Landroid/view/View;Landroid/view/View;ZIZ)V
    .locals 0

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p3, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->offAllTabIfNotSupported(Landroid/view/View;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSupportedByWindowSize(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p5, :cond_1

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitIconShown:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onCloseFab(Landroid/view/View;Landroid/view/View;Z)V
    .locals 2

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1, v1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onTransSplitMode(ZZZ)V

    :goto_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/view/View;Landroid/view/View;Z)V
    .locals 3

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1, v0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsInMultiWindowMode:Z

    return-void
.end method

.method public onOffSplitMode(Landroid/view/View;Landroid/view/View;Z)V
    .locals 3

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitted:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onToggleSplitMode(ZZZ)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onTransSplitMode(ZZZ)V

    :goto_0
    return-void
.end method

.method public onToggleSplitMode(ZZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitted:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isTranslateV2()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onTransSplitMode(ZZZ)V

    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->notifyUpdateExtImpl(Z)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->notifyUpdateExtImpl(Z)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onTransSplitMode(ZZZ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onTransSplitMode(ZZZ)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p2, p1, p0, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onTransSplitMode(ZZZ)V

    :cond_0
    return-void
.end method

.method public runPageSplitMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsNativeScrollSync:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getLeftTabId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getRightTabId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eq v1, v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mScrollSync:Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/terrace/browser/scroll_sync/ScrollSyncBridge;->triggerScrollSyncForTab(IIZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageSplitMode(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendEventLog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v1, 0x0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendSplitModeEventLog(ZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v1, 0x1

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendSplitModeEventLog(ZZ)V

    :goto_0
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    return-void
.end method

.method public setEnabled(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsEnabled:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    :cond_1
    return-void
.end method

.method public setEnabledImpl(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    and-int/2addr v0, p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_1
    const v1, 0x3ecccccd    # 0.4f

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setIsSplitIconShown(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsEnabled:Z

    return-void
.end method

.method public setIsIconMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsIconMode:Z

    return-void
.end method

.method public setIsSecretMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSecretMode:Z

    return-void
.end method

.method public setIsSplitIconShown(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSplitIconShown:Z

    return-void
.end method

.method public setLangService(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    return-void
.end method

.method public setSplitBtnWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setupSwitcher(Landroid/view/View;Landroid/view/View;ZZZ)V
    .locals 2

    const-string v0, "TransBarSplitSwitcher"

    const-string v1, "setupSwitcher"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTranslated:Z

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsTablet:Z

    const p5, 0x7f0b0dc1

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitIcon:Landroid/widget/ImageView;

    const p5, 0x7f0b0dc0

    invoke-virtual {p1, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/FrameLayout;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;ZLandroid/view/View;Landroid/view/View;)V

    invoke-virtual {p5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsInMultiWindowMode:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabledImpl(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitButtonFrameLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->getTransBarSplitScrollSyncEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsScrollSync:Z

    return-void
.end method

.method public updateScrollSyncState()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->getTransBarSplitScrollSyncEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsScrollSync:Z

    if-eq v1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->runPageSplitMode(Z)V

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsScrollSync:Z

    :cond_0
    return-void
.end method

.method public updateSplitIconTint()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f060db6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mIsSecretMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f060db7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mContext:Landroid/content/Context;

    const v1, 0x7f060db5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->mSplitIcon:Landroid/widget/ImageView;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
