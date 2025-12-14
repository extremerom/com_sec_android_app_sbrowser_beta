.class public Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;
.super Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;
.source "SourceFile"


# instance fields
.field private mOfflineButton:Landroid/widget/TextView;

.field private mOfflineButtonColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/omnibox/LocationBarInterface;)V

    return-void
.end method

.method private getOfflineButton()Landroid/widget/TextView;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mParent:Landroid/view/View;

    const v1, 0x7f0b0849

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->updateOfflineButtonColor()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    return-object p0
.end method

.method private updateOfflineButtonColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButtonColor:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->getOfflineColor()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButtonColor:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private updateOfflineButtonVisibility(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateOfflineButtonVisibility : visibility - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OfflineButton"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->getOfflineButton()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getOfflineColor()I
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

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v2

    const v4, 0x7f0604d6

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isSecretModeEnabled()Z

    move-result v2

    const v4, 0x7f0604d5

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    const v2, 0x7f0604d4

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_5
    if-eqz v1, :cond_7

    :cond_6
    move v4, v2

    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getTextButton()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    return-object p0
.end method

.method public isVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

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

.method public setButtonResource()V
    .locals 0

    return-void
.end method

.method public updateButtonColor()V
    .locals 0

    return-void
.end method

.method public updateOfflineButtonStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isOfflineMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isTabAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButton;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->updateOfflineButtonVisibility(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->updateOfflineButtonColor()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->mOfflineButton:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/omnibox/OfflineButton;->updateOfflineButtonVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method
