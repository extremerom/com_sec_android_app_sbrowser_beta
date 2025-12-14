.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;
.super Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;
.implements Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

.field private mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

.field private mIsAddrBarAtBottom:Z

.field private mIsCalledByOnTrans:Z

.field private mIsInitialTalkbackGiven:Z

.field private mIsTranslated:Z

.field private mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

.field private mListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

.field private mModeSwitchInTopLevel:Z

.field private mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

.field private mPrevWindowSize:I

.field private mShouldTransBarEnabled:Z

.field private mSourceSpinnerInTopLevel:Z

.field private mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

.field private mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

.field private mTargetTransLayout:Landroid/widget/LinearLayout;

.field private mTransBarArrowImage:Landroid/widget/ImageView;

.field private mTransBarCloseButton:Landroid/widget/LinearLayout;

.field private mTransBarCloseImage:Landroid/widget/ImageView;

.field private mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

.field private mTransBarSourceButton:Landroid/widget/TextView;

.field private mTransBarSourceLayout:Landroid/widget/FrameLayout;

.field private mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

.field private mTransBarTarget:Landroid/widget/LinearLayout;

.field private mTransBarTargetButton:Landroid/widget/TextView;

.field private mTransBarTargetLayout:Landroid/widget/FrameLayout;

.field private mTransBarViewStub:Landroid/view/View;

.field private mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

.field private mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

.field private mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mShouldTransBarEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsCalledByOnTrans:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSourceSpinnerInTopLevel:Z

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mModeSwitchInTopLevel:Z

    iput v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mPrevWindowSize:I

    iput-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsInitialTalkbackGiven:Z

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->init()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onCloseFab()V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onShowLangList(Z)V

    return-void
.end method

.method private cancelAnimation()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "cancelAnimation:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    const-string v2, "TransBarContainerV2"

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->endLoadingAnimation(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslate(Z)V

    :cond_0
    return-void
.end method

.method private changeBg(II)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private changeContainerBackground(Z)V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    const-string v0, "pref_address_bar_bottom"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitBtn(Landroid/view/View;Landroid/view/View;ZZZ)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->notifyUpdateExt()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSecretMode()Z

    move-result p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const p1, 0x7f080789

    goto :goto_1

    :cond_3
    :goto_0
    const p1, 0x7f080784

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setPopupPadding()V

    goto :goto_3

    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getReaderThemeColor()I

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "TransBarContainerV2"

    const-string v1, "changeContainerBackground - reader page"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->handleInReaderPage(I)V

    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const p1, 0x7f08078c

    goto :goto_2

    :cond_6
    const p1, 0x7f080792

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    const p1, 0x7f080795

    goto :goto_2

    :cond_8
    const p1, 0x7f08079b

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    return-void
.end method

.method private changeSpinnerTextColor(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getReaderThemeColor()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSecretMode()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const v0, 0x7f060db8

    goto :goto_1

    :cond_1
    const v0, 0x7f060db5

    goto :goto_1

    :cond_2
    :goto_0
    const v0, 0x7f060db7

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarSourceButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_2
    return-void
.end method

.method private changeTheme(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeContainerBackground(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTransBtnStatus(Z)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeSpinnerTextColor(Z)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeSpinnerTextColor(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updateIconTint()V

    return-void
.end method

.method private changeTransBtnStatus(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getReaderThemeColor()I

    move-result v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSecretMode()Z

    move-result p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->changeTransBtnStatus(ZIZ)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->runOnTranslatePage()V

    return-void
.end method

.method private endLoadingAnimation(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSupportedLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->endLoadingAnimation()V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslate(Z)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onChangeSplitBtn()V

    return-void
.end method

.method private getAnimationShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isTransAnimationShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getMoreButton()Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->getMoreButton()Landroid/widget/LinearLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getReaderThemeColor()I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->getReaderThemeColor()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getTransBtnFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private handleInReaderPage(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const p1, 0x7f080792

    const v0, 0x7f08079b

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeBg(II)V

    goto :goto_0

    :cond_0
    const p1, 0x7f08078f

    const v0, 0x7f080798

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeBg(II)V

    goto :goto_0

    :cond_1
    const p1, 0x7f08078c

    const v0, 0x7f080795

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeBg(II)V

    :goto_0
    return-void
.end method

.method private init()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mModeSwitchInTopLevel:Z

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandlerClient;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getUXversion()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v0, v2, p0, v3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSourceSpinnerInTopLevel:Z

    xor-int/2addr v3, v1

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mModeSwitchInTopLevel:Z

    xor-int/2addr v1, v4

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandlerClient;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    return-void
.end method

.method private initializeCloseButton()V
    .locals 2

    const v0, 0x7f0b0db7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0db6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isOneUi7Style()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseImage:Landroid/widget/ImageView;

    const v1, 0x7f08050e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseImage:Landroid/widget/ImageView;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140869

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$4;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeMoreButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->initializeMoreButton(Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;)V

    :cond_0
    return-void
.end method

.method private initializeMoreMenu()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz v0, :cond_1

    const v1, 0x7f0b0dbc

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->getCollapseButton()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->initializeMoreMenu(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private initializeSourceButton()V
    .locals 2

    const v0, 0x7f0b0dbe

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarSourceButton:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$2;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initializeSpinner(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0b0dbd

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarSourceLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isFocused(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateLangList(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarSourceLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->initializeSourceSpinner(Landroid/view/View;Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const p1, 0x7f0b0dc2

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetLayout:Landroid/widget/FrameLayout;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isFocused(Landroid/app/Activity;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateLangList(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->initializeTargetSpinner(Landroid/view/View;Landroid/widget/FrameLayout;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeTargetButton()V
    .locals 2

    const v0, 0x7f0b0dc3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$3;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isTransAnimationAnimating()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLoading()Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isAnimating()Z

    move-result v0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSecretMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isSecretMode()Z

    move-result p0

    return p0
.end method

.method private isSupportedLoading()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getUXversion()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTablet()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletLayout(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTransBarEnableCondition()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isTransbarPopupType()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTransbarPopupType(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private onChangeSplitBtn()V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitBtn(Landroid/view/View;Landroid/view/View;ZZZ)V

    :cond_0
    return-void
.end method

.method private onChangeWindowSize(ZI)V
    .locals 6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->resetContainerLayoutIfNeeded(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTransBtnStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeWindowSize(Landroid/view/View;Landroid/view/View;ZIZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setX(F)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->onChangeWindowSize(Landroid/view/View;ZI)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updateBarPosition()V

    return-void
.end method

.method private onCloseFab()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsInitialTalkbackGiven:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsInitialTalkbackGiven:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onCloseFab(Landroid/view/View;Landroid/view/View;Z)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageExitTrans(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateSourceLang()V

    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onCloseFab()V

    :cond_3
    return-void
.end method

.method private onShowLangList(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onShowSpinner(Z)V

    return-void
.end method

.method private onTranslateIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->onTranslateIfNeeded()V

    :cond_0
    return-void
.end method

.method private onTranslatePage(Z)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageOnTrans(Landroid/content/Context;Z)V

    return-void
.end method

.method private resetContainerLayoutIfNeeded(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resetContainerLayoutIfNeeded - currWidth: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransBarContainerV2"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v3, 0x41880000    # 17.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/4 v5, -0x1

    const/16 v6, 0x24c

    if-gt p1, v6, :cond_0

    const-string v6, "container width : MATCH_PARENT"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-float v1, v0, v4

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    mul-float v1, v0, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_1

    :cond_0
    if-le p1, v6, :cond_2

    const/16 v6, 0x3bf

    if-le p1, v6, :cond_1

    const-string v6, "container width : 840"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x44520000    # 840.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_0

    :cond_1
    const-string v6, "container width : 86% of width"

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v1, p1

    const v6, 0x3f5c28f6    # 0.86f

    mul-float/2addr v1, v6

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :goto_0
    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v1, 0x41a80000    # 21.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/lit16 v6, p1, -0x20e

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v7

    if-nez v7, :cond_4

    if-gez v6, :cond_5

    :cond_4
    const/4 v6, 0x0

    :cond_5
    int-to-float v6, v6

    invoke-virtual {p0, v6}, Landroid/view/View;->setTranslationX(F)V

    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    mul-float/2addr v3, v0

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    if-eqz v1, :cond_6

    const v3, 0x44038000    # 526.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTarget:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result p0

    invoke-virtual {v1, p1, v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->resetTransBtnLayoutIfNeeded(IFZ)V

    :cond_8
    return-void
.end method

.method private runOnTranslatePage()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransBarEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-eqz v0, :cond_2

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTheme(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslatePage(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz v0, :cond_4

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-eqz p0, :cond_3

    const-string p0, "20061"

    goto :goto_0

    :cond_3
    const-string p0, "20060"

    :goto_0
    const-string v1, "SourceTarget"

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLogWithDimAndLangCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private setIconButtonBackground()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const v1, 0x7f08079f

    goto :goto_0

    :cond_0
    const v1, 0x7f08079e

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f0807a2

    goto :goto_1

    :cond_1
    const v0, 0x7f0807a1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setBackgroundResource(I)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private setPopupPadding()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07163b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07163c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1, v0, v1, v0}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private setTargetWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTransBtnWidth(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->setTransBtnWidth(I)V

    :cond_0
    return-void
.end method

.method private setupDragHandler(Landroid/view/View;)V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v5, v3

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getHeight(Landroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v6, v3

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->setupDragListeners(Landroid/content/Context;Landroid/view/View;Landroid/view/View;IILcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->getSplitButtonLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    :goto_0
    move-object v5, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->getExpandButton()Landroid/view/View;

    move-result-object v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->getCollapseButton()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getMoreButton()Landroid/widget/LinearLayout;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->setupViewModeDragListeners(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private setupSpinnerLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSourceSpinnerInTopLevel:Z

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayoutClient;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeSpinner(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeSpinner(Z)V

    return-void
.end method

.method private setupStatusQueue()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->setupStatusQueue(Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueueClient;)V

    return-void
.end method

.method private setupViewModeSwitcher()V
    .locals 11

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSourceSpinnerInTopLevel:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->getSplitButtonLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    move-object v6, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTarget:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTargetTransLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getMoreButton()Landroid/widget/LinearLayout;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v9

    move-object v2, p0

    move-object v10, p0

    invoke-virtual/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->setupSwitcher(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcherClient;)V

    :cond_2
    return-void
.end method

.method private setupVisibleHandler()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    :cond_0
    return-void
.end method

.method private shouldShowTransBarContainer()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isTransBarShowing(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isFullscreenVideoMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateBarPosition()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getDeviceHeight(Landroid/app/Activity;)I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v3, v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->updateBarPosition(Landroid/view/View;IIZZ)V

    return-void
.end method

.method private updateIconTint()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060da1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSecretMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060da2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz v0, :cond_2

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarArrowImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->updateIconTint(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public clearTranslate()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageClearTranslate(Landroid/content/Context;)V

    return-void
.end method

.method public disableSplitSwitcher()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabled(ZZ)V

    :cond_0
    return-void
.end method

.method public enableTransBarContainer(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mShouldTransBarEnabled:Z

    return-void
.end method

.method public enableTransBarContainerWithVisibility(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onCloseFab()V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v0, 0x3ecccccd    # 0.4f

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->enableWithVisibility(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarCloseButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setEnabled(ZZ)V

    :cond_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->enableTransBarContainer(Z)V

    return-void
.end method

.method public getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getUXversion()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public initializeSplitLayout()V
    .locals 7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportedSplit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransBarEnabled()Z

    move-result v4

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTablet()Z

    move-result v6

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setupSwitcher(Landroid/view/View;Landroid/view/View;ZZZ)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getUXversion()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setIsIconMode(Z)V

    return-void
.end method

.method public isExpanded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->isExpanded()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public isFullscreenVideoMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->isFullscreenVideoMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTransBarEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mShouldTransBarEnabled:Z

    return p0
.end method

.method public isTranslated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    return p0
.end method

.method public notifyBackgroundColorChanged()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTheme(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSecretMode()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setIsSecretMode(Z)V

    :cond_2
    return-void
.end method

.method public notifyChangeMode()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updateBarPosition()V

    return-void
.end method

.method public notifyCurrentUrlChanged(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    const-string v0, "notifyCurrentUrlChanged "

    const-string v1, "TransBarContainerV2"

    invoke-static {v0, v1, p2}, Landroidx/recyclerview/widget/P;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->notifyCurrentUrlChanged(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public notifyResizeLayout()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onChangeWindowSize(ZI)V

    return-void
.end method

.method public notifyTransBarClose()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onCloseFab()V

    return-void
.end method

.method public notifyVisibilityChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onUpdateLangList()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "TransBarContainerV2"

    const-string v0, "onConfigurationChanged"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->shouldShowTransBarContainer()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->notifyVisibilityChanged()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransBarEnableCondition()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->enableTransBarContainer(Z)V

    :cond_1
    return-void
.end method

.method public onExpand(Z)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->notifyResizeLayout()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isExpanded()Z

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitBtn(Landroid/view/View;Landroid/view/View;ZZZ)V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const-string v0, "TransBarContainerV2"

    const-string v1, "onFinishInflate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0b0dd2

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTarget:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0dd3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTargetTransLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0db5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarArrowImage:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mPrevWindowSize:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->setupLangListHandler()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeSourceButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeTargetButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isFocused(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateLangList(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setupSpinnerLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeMoreButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeCloseButton()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->onFinishInflate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->initializeTransBtn(Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setIconButtonBackground()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeSplitLayout()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setupViewModeSwitcher()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->initializeMoreMenu()V

    iget v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mPrevWindowSize:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->resetContainerLayoutIfNeeded(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setupVisibleHandler()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setupStatusQueue()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->startLoadingAnimation()V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result p1

    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p2

    iget p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mPrevWindowSize:I

    if-eq p3, p2, :cond_2

    iput p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mPrevWindowSize:I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onChangeWindowSize(ZI)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->isUpdatePos()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updateBarPosition()V

    :cond_3
    :goto_2
    return-void
.end method

.method public onLoadFinished(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->onLoadFinished(I)V

    :cond_0
    return-void
.end method

.method public onLoadingAnimationCancel()V
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsCalledByOnTrans:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->onLoadingAnimationCancel(ZZ)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTransBarLoadingUpdated(Z)V

    :cond_3
    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onMultiWindowModeChanged(ZLandroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onOffSplitMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onOffSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FFZZ)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_0

    move v9, v2

    goto :goto_0

    :cond_0
    move v9, v1

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->shouldShowTransBarContainer()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    move v1, v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    move-object v4, p0

    move v5, p1

    move v6, p2

    move v7, v1

    move v8, p4

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->onOffsetsForFullscreenChanged(Landroid/view/View;FFZZZ)V

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onVisibilityDelayed(ZZ)V

    :cond_2
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->onPause()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->dismissMoreMenu()V

    :cond_1
    return-void
.end method

.method public onPlayAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->onPlayAnimation()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onChangeSplitBtn()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslateIfNeeded()V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->shouldShowTransBarContainer()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onChangeSplitBtn()V

    :cond_0
    return-void
.end method

.method public onRunLoadingRunnable()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslate(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendEventLog(Z)V

    :cond_0
    return-void
.end method

.method public onRunVisibilityRunnable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->executeStatusQueue()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->notifyVisibilityChanged()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->isVisibleTriggered()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->notifyResizeLayout()V

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->updateVisibleTrigger(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onShowSpinner(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->onShowSourceSpinner()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->onShowTargetSpinner(Landroid/content/Context;)V

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->sendLangInfoEventLog(Z)V

    :cond_2
    return-void
.end method

.method public onTransBarLoadingUpdated(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;->onTransBarLoadingUpdated(Z)V

    :cond_0
    return-void
.end method

.method public onTranslate(Z)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getAnimationShown()Z

    move-result v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    if-eq v0, p1, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTheme(Z)V

    :cond_3
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f141070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsInitialTalkbackGiven:Z

    if-nez v1, :cond_6

    const-string v1, ", "

    invoke-static {v0, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsAddrBarAtBottom:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f14106e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f14106f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsInitialTalkbackGiven:Z

    :cond_6
    invoke-virtual {p0, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsCalledByOnTrans:Z

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->endLoadingAnimation(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->performAccessibilityAction()V

    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTransBtnStatus(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onChangeSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->getTransBtnFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsTranslated:Z

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->onOffSplitMode(Landroid/view/View;Landroid/view/View;Z)V

    :cond_8
    return-void
.end method

.method public onUpdateLang(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarSourceButton:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarTargetButton:Landroid/widget/TextView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onUpdateLangList()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isFocused(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->updateLangList(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updatedData(ZLjava/util/ArrayList;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLangList()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->getLanguage(Z)Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->updatedData(ZLjava/util/ArrayList;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V

    return-void
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isAnimating()Z

    move-result p1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public onVisibilityDelayed(ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->clearGoneCallback()V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->runShowCallbackDelayed()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->clearShowCallback()V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->clearStatusQueue()V

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->runGoneCallbackDelayed()V

    goto :goto_0

    :cond_4
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onOffSplitMode()V

    :cond_5
    :goto_0
    return-void
.end method

.method public revertTranslation()V
    .locals 2

    const-string v0, "TransBarContainerV2"

    const-string v1, "revertTranslation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->runOnTranslatePage()V

    return-void
.end method

.method public runStatusAction(Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;)V
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->LOADING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->startLoadingAnimation()V

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->ORIGIN:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslate(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public sendTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mVisibleHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;->sendTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDragHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarDragHandler;->sendTouchEvent(Landroid/view/MotionEvent;)V

    :cond_1
    return-void
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->setLangService(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mViewModeSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarViewModeSwitcher;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mLangService:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLangServiceHandler;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mMoreBtn:Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mDelegate:Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarMoreButton;->setDelegate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarDelegate;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->notifyBackgroundColorChanged()V

    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mListener:Lcom/sec/android/app/sbrowser/trans_bar/TransBarListener;

    return-void
.end method

.method public setupPopupLayout(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->setupDragHandler(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p2

    const-string v0, "setupPopupLayout - currWidth: "

    const-string v1, "TransBarContainerV2"

    invoke-static {p2, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isTransbarPopupType()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const v0, 0x44038000    # 526.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarViewStub:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    :cond_0
    return-void
.end method

.method public shouldCaptureLater()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public startLoadingAnimation()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->hasShowCallbacks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    if-eqz p0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->LOADING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->addStatusQueue(Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->isSplitted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->cancelAnimation()V

    return-void

    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->changeTheme(Z)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTransBarLoadingUpdated(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->isSupportedLoading()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->endLoadingAnimation(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTransBarLoadingUpdated(Z)V

    return-void

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mIsCalledByOnTrans:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBtnHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->startLoadingAnimation()V

    :cond_4
    return-void
.end method

.method public updateScrollSyncState()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSplitSwitcher:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSplitSwitcher;->updateScrollSyncState()V

    :cond_0
    return-void
.end method

.method public updateTransBarBtnStatus(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarHandler:Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarHandler;->hasShowCallbacks()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mTransBarStatusQueue:Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->TRANSLATING:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;->ORIGIN:Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarStatusQueue;->addStatusQueue(Lcom/sec/android/app/sbrowser/trans_bar/TransBarConstants$Status;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->onTranslate(Z)V

    return-void
.end method

.method public updatedData(ZLjava/util/ArrayList;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ">;",
            "Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;",
            ")V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainerV2;->mSpinnerLayout:Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarSpinnerLayout;->updatedData(Ljava/util/ArrayList;Lcom/sec/android/app/sbrowser/trans_bar/TransBarInfo;Z)V

    return-void
.end method
