.class public Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mButtonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

.field private mNeedNightModeToast:Z

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mIconMap:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mNeedNightModeToast:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->lambda$removeRemainRipple$0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private isSIXEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isErrorPage()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isSplitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isWebUIUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isFileUrl(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v0

    :cond_4
    :goto_2
    return v1
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$removeRemainRipple$0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private removeRemainRipple(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/toolbar/g;

    invoke-direct {v1, p1, p0}, Lcom/sec/android/app/sbrowser/toolbar/g;-><init>(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setDownloadButtonEnabled(Z)V
    .locals 1

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private setEnabledWithAlpha(Landroid/view/View;Z)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const p0, 0x3ef0a3d7    # 0.47f

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    if-nez p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->isHovered()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setHovered(Z)V

    :cond_1
    return-void
.end method

.method private setHistoryButtonEnabled(Z)V
    .locals 1

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private updateAddToButton()V
    .locals 2

    const v0, 0x7f0b0046

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->getAddToAvailable()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateBackwardButton()V
    .locals 3

    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08030c

    goto :goto_0

    :cond_1
    const v1, 0x7f0802d1

    :goto_0
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoBack()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setBackwardButtonEnabled(Z)V

    return-void
.end method

.method private updateCloseAppButton()V
    .locals 2

    const v0, 0x7f0b0055

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentBlockerButton()V
    .locals 3

    const v0, 0x7f0b0057

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :goto_0
    return-void
.end method

.method private updateDownloadButton()V
    .locals 1

    const v0, 0x7f0b005b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSecretModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setDownloadButtonEnabled(Z)V

    return-void
.end method

.method private updateExtensionsButton()V
    .locals 4

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "badge_view_icon"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0802c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isExtensionsVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method private updateFindButton()V
    .locals 2

    const v0, 0x7f0b050d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isFindAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateForwardButton()V
    .locals 3

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0802d1

    goto :goto_0

    :cond_1
    const v1, 0x7f08030c

    :goto_0
    check-cast v0, Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->canCurrentTabGoForward()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setForwardButtonEnabled(Z)V

    return-void
.end method

.method private updateHistoryButton()V
    .locals 1

    const v0, 0x7f0b005f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSecretModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHistoryButtonEnabled(Z)V

    return-void
.end method

.method private updatePrintButton()V
    .locals 2

    const v0, 0x7f0b08fe

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isPrintMenuAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRefreshButton()V
    .locals 2

    const v0, 0x7f0b006f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isRefreshMenuAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSIXButtons()V
    .locals 12

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getExtensionsMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const v3, 0x7f0b01d5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-nez v3, :cond_3

    const v3, 0x7f0b0d87

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    :goto_1
    move v9, v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x1

    goto :goto_1

    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSecretModeEnabled()Z

    move-result v7

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->isFirstParty()Z

    move-result v11

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;ZLandroid/graphics/Bitmap;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Extension icon is updated, id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "si__ButtonsManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSIXEnabled()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSecretModeEnabled()Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getActionStatus(ZLandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0x3ef0a3d7    # 0.47f

    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method private updateShareButton()V
    .locals 2

    const v0, 0x7f0b0074

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isShareMenuAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateTemporarilyAllowAdsButton()V
    .locals 5

    const v0, 0x7f0b0079

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockPreferenceUtils;->isContentBlockerEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getInstance()Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/sec/android/app/sbrowser/blockers/content_block/ContentBlockManager;->getCurrentTemporarilyUnblockAds(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f140226

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f08036b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f141096

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f08036a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isTemporarilyAllowAdsAvailable()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updateTextSizeButton()V
    .locals 2

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isReaderPage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateZoomButton()V
    .locals 2

    const v0, 0x7f0b0e86

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isZoomMenuAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addButton(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public applySecretModeStatus(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setDownloadButtonEnabled(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHistoryButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSecretModeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    return-void
.end method

.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mNeedNightModeToast:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getAiButton()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getBackwardButton()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getButtonById(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getButtonByIndex(I)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public getButtonList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getFirstEnabledButton()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getForwardButton()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getIdByButton(Landroid/view/View;)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getLastEnabledButton()Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getMoreMenuButton()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getTabsButton()Landroid/view/View;
    .locals 1

    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mButtonList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isFirstEnabledButton(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getFirstEnabledButton()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0d91

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isLastEnabledButton(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getLastEnabledButton()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b0d91

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    :cond_2
    if-ne p1, p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public isNightModeToastNeeded()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mNeedNightModeToast:Z

    return p0
.end method

.method public onContentBlockerStateChanged()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateContentBlockerButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateExtensionsButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    return-void
.end method

.method public onCurrentTabChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateShareButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateAddToButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePrintButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateRefreshButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public onHighContrastModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateNightModeButton()V

    return-void
.end method

.method public onLoadFailed()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateShareButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateAddToButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePrintButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateRefreshButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public onLoadFinished()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateShareButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateAddToButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePrintButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateRefreshButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public onLoadStarted()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateShareButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateAddToButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePrintButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateRefreshButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public onReaderPageVisibilityChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBackwardButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateForwardButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    return-void
.end method

.method public onSIXIconUpdated()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    return-void
.end method

.method public onSplitModeStatusChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSIXButtons()V

    return-void
.end method

.method public setBackwardButtonEnabled(Z)V
    .locals 1

    const v0, 0x7f0b0047

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public setForwardButtonEnabled(Z)V
    .locals 1

    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    instance-of p0, p1, Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setListener(Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    return-void
.end method

.method public updateBrowsingAssistButton()V
    .locals 3

    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateBrowsingAssistButton: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isBrowsingAssistAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ButtonsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f1401d4

    goto :goto_0

    :cond_2
    const v2, 0x7f1402a0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isBrowsingAssistAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateButtonState(Landroid/view/View;ILcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 1

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSIXEnabled()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeToolbarManager;->getTitleFromMenuId(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    :cond_1
    sparse-switch p2, :sswitch_data_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p3, p2, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isToolbarButtonVisible(ILandroid/content/Context;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto/16 :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateZoomButton()V

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePcVersionButton()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updatePrintButton()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateMyanmarFontButton()V

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateFindButton()V

    goto :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTextSizeButton()V

    goto :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateTemporarilyAllowAdsButton()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSummaryButton()V

    goto :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateShareButton()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateSecretModeButton()V

    goto :goto_0

    :sswitch_a
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateRefreshButton()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadHighlightsAloudButton()V

    goto :goto_0

    :sswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateReadAloudButton()V

    goto :goto_0

    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateNightModeButton()V

    goto :goto_0

    :sswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateHistoryButton()V

    goto :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateForwardButton()V

    goto :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateExtensionsButton()V

    goto :goto_0

    :sswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateDownloadButton()V

    goto :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateContentBlockerButton()V

    goto :goto_0

    :sswitch_13
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateCloseAppButton()V

    goto :goto_0

    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBrowsingAssistButton()V

    goto :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateBackwardButton()V

    goto :goto_0

    :sswitch_16
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->updateAddToButton()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b0046 -> :sswitch_16
        0x7f0b0047 -> :sswitch_15
        0x7f0b0050 -> :sswitch_14
        0x7f0b0055 -> :sswitch_13
        0x7f0b0057 -> :sswitch_12
        0x7f0b005b -> :sswitch_11
        0x7f0b005d -> :sswitch_10
        0x7f0b005e -> :sswitch_f
        0x7f0b005f -> :sswitch_e
        0x7f0b006b -> :sswitch_d
        0x7f0b006d -> :sswitch_c
        0x7f0b006e -> :sswitch_b
        0x7f0b006f -> :sswitch_a
        0x7f0b0072 -> :sswitch_9
        0x7f0b0074 -> :sswitch_8
        0x7f0b0077 -> :sswitch_7
        0x7f0b0079 -> :sswitch_6
        0x7f0b007b -> :sswitch_5
        0x7f0b050d -> :sswitch_4
        0x7f0b07c3 -> :sswitch_3
        0x7f0b08fe -> :sswitch_2
        0x7f0b09f8 -> :sswitch_1
        0x7f0b0e86 -> :sswitch_0
    .end sparse-switch
.end method

.method public updateMyanmarFontButton()V
    .locals 5

    const v0, 0x7f0b07c3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isSupportMyanmarFont()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void

    :cond_1
    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isPageUsesMyanmarUnicode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1407ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f08037f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1407b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080370

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Landroid/widget/ImageButton;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    return-void
.end method

.method public updateNightModeButton()V
    .locals 6

    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f14067a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080312

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140423

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080319

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_2

    :cond_3
    xor-int/lit8 v1, v2, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    iput-boolean v5, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mNeedNightModeToast:Z

    goto :goto_3

    :cond_4
    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mNeedNightModeToast:Z

    :goto_3
    return-void
.end method

.method public updatePcVersionButton()V
    .locals 4

    const v0, 0x7f0b09f8

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getUseDesktopUserAgent()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140872

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080315

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140873

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f0802e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isPcVersionAvailable()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateReadAloudButton()V
    .locals 5

    const v0, 0x7f0b006d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateReadAloudButton: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isReadAloudAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ButtonsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadAloudSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isReadAloudAvailable()Z

    move-result v1

    const v2, 0x7f0b01d7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0802cd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateReadHighlightsAloudButton()V
    .locals 5

    const v0, 0x7f0b006e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateReadHighlightsAloudButton: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isReadArticlesAloudAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ButtonsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isReadArticlesAloudSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isReadArticlesAloudAvailable()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->shouldShowEnabledReadArticlesAloudMenu(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->shouldSupportReadArticleAloudMenuClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move-object v2, v0

    check-cast v2, Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f080339

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f140088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateSecretModeButton()V
    .locals 4

    const v0, 0x7f0b0072

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140867

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080346

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140868

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    const v3, 0x7f080347

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setHoverTooltipAndContentDescription(Landroid/view/View;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRunningInDexOnPc(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3ef0a3d7    # 0.47f

    goto :goto_2

    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->removeRemainRipple(Landroid/view/View;)V

    return-void
.end method

.method public updateSummaryButton()V
    .locals 3

    const v0, 0x7f0b0077

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->getButtonById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateSummaryButton: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isSummaryAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "si__ButtonsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->isSummaryAvailable()Z

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->shouldShowEnabledSummaryMenu(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->mListener:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->shouldSupportSummaryMenuClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/toolbar/ButtonsManager;->setEnabledWithAlpha(Landroid/view/View;Z)V

    :cond_3
    :goto_1
    return-void
.end method
