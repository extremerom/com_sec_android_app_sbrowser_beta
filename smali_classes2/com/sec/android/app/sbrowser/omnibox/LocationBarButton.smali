.class public abstract Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mButton:Landroid/widget/ImageButton;

.field protected mContext:Landroid/content/Context;

.field protected mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

.field protected mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

.field protected mParent:Landroid/view/View;

.field protected mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getUrlBar()Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getUrlBarParent()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    return-void
.end method

.method private getIconColorForEditMode()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f060d63

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f060d61

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v0, 0x7f060d62

    goto :goto_0

    :cond_2
    const v0, 0x7f0604d0

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public clearFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public getButton()Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getIconBackground()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isDarkBackground()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080772

    goto :goto_0

    :cond_0
    const p0, 0x7f080773

    :goto_0
    return p0
.end method

.method public getIconColor()I
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->getIconColorForEditMode()I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v4

    if-nez v4, :cond_c

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const v0, 0x7f060d63

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNewQuickAccessPage()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isDefaultMobileLayout(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    const v0, 0x7f0604d2

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    const v0, 0x7f060d61

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    if-ne v2, v4, :cond_7

    const v0, 0x7f060d62

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_8
    const v0, 0x7f060d5f

    goto :goto_2

    :cond_9
    if-eqz v3, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_a
    const v0, 0x7f060d5e

    goto :goto_2

    :cond_b
    const v0, 0x7f0604d0

    goto :goto_2

    :cond_c
    :goto_1
    const v0, 0x7f0604d1

    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getScreenID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->getScreenID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSecureColor()I
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    const v0, 0x7f060d87

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const v0, 0x7f060d89

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    const v0, 0x7f060d8c

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    const v0, 0x7f060d8a

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    const v0, 0x7f060d8b

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_7
    const v0, 0x7f060d88

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_9
    const v0, 0x7f060d86

    goto :goto_1

    :cond_a
    const v0, 0x7f060d85

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getVisibility()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    return p0
.end method

.method public hasFocus()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDarkBackground()Z
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v5}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v5

    if-nez v5, :cond_8

    if-ne v4, v6, :cond_5

    goto :goto_3

    :cond_5
    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    :goto_2
    return v1

    :cond_8
    :goto_3
    return v2
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mUrlBar:Lcom/sec/android/app/sbrowser/omnibox/UrlBar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/UrlBar;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPortalPage()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isMultiCpUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isUnifiedHomepageUrl()Z

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

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mDelegate:Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract setButtonResource()V
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setEventListener(Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mEventListener:Lcom/sec/android/app/sbrowser/common/toolbar/LocationBarEventListener;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mButton:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method public abstract updateButtonColor()V
.end method
