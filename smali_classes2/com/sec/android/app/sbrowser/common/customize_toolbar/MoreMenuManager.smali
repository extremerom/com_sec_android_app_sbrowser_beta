.class public Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    return-object v0
.end method

.method private isBrowsingAssistSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isBrowsingAssistSupported()Z

    move-result p0

    return p0
.end method

.method private isChinaExitVisible(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isChinaExitVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isNotificationVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isNotificationVisible()Z

    move-result p0

    return p0
.end method

.method private isReadAloudSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isReadAloudSupported()Z

    move-result p0

    return p0
.end method

.method private isReadArticlesAloudSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isReadArticlesAloudSupported()Z

    move-result p0

    return p0
.end method

.method private isSecretModeVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isSecretModeVisible()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public isCloseInternetVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isCloseInternetVisible()Z

    move-result p0

    return p0
.end method

.method public isContentBlockerVisible(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isExtensionsVisible(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isExtensionsVisible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSupportMyanmarFont()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isSupportMyanmarFont()Z

    move-result p0

    return p0
.end method

.method public isTemporarilyUnblockAdsVisible(Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;->isTemporarilyUnblockAdsEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isToolbarButtonVisible(ILandroid/content/Context;)Z
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x1

    return p0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isSupportMyanmarFont()Z

    move-result p0

    return p0

    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isNotificationVisible()Z

    move-result p0

    return p0

    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isTemporarilyUnblockAdsVisible(Landroid/content/Context;)Z

    move-result p0

    return p0

    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isExtensionsVisible(Landroid/content/Context;)Z

    move-result p0

    return p0

    :sswitch_4
    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isChinaExitVisible(Landroid/content/Context;)Z

    move-result p0

    return p0

    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result p0

    return p0

    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isCloseInternetVisible()Z

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        0x7f0b0055 -> :sswitch_6
        0x7f0b0057 -> :sswitch_5
        0x7f0b005c -> :sswitch_4
        0x7f0b005d -> :sswitch_3
        0x7f0b0079 -> :sswitch_2
        0x7f0b067b -> :sswitch_1
        0x7f0b07c3 -> :sswitch_0
    .end sparse-switch
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->mDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager$MenuVisibleDelegate;

    return-void
.end method

.method public updateMenuVisibility(Landroid/content/Context;Landroid/view/Menu;)V
    .locals 4

    const-string v0, "MoreMenuManager"

    const-string v1, "updateMenuVisibility"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/view/Menu;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const v0, 0x7f0b0057

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isContentBlockerVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0079

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isTemporarilyUnblockAdsVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b005d

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isExtensionsVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b07c3

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isSupportMyanmarFont()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0072

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isSecretModeVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b005c

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isChinaExitVisible(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0055

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isCloseInternetVisible()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0050

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isBrowsingAssistSupported()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b0077

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isBrowsingAssistSupported()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b006d

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isReadAloudSupported()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b006e

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isReadArticlesAloudSupported()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    const v0, 0x7f0b067b

    invoke-interface {p2, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->isNotificationVisible()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getExtensionsMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getInstallSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v2

    :goto_4
    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result p1

    invoke-interface {p2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setMenuItemVisible(Landroid/view/MenuItem;Z)V

    goto :goto_2

    :cond_5
    :goto_5
    return-void
.end method
