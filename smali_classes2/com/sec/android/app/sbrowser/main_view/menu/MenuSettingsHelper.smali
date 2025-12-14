.class public Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public static synthetic a(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V
    .locals 6

    move-object v0, p3

    move-object v1, p1

    move-object v2, p4

    move-object v3, p0

    move-object v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$onExtensionsItemClicked$2(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Z)V

    return-void
.end method

.method public static synthetic b(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V
    .locals 6

    move-object v0, p3

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$onExtensionsItemClicked$0(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Z)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Z)V
    .locals 6

    move-object v0, p3

    move-object v1, p4

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$handleDefaultExtensionClicked$3(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Z)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$handleDefaultExtensionClicked$4(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$onExtensionsItemClicked$1(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 0

    invoke-direct {p0, p2, p1, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->lambda$handleDefaultExtensionClicked$5(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    return-void
.end method

.method private handleDefaultExtensionClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 10

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result v0

    const-string v1, "MenuSettingsHelper"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "handleDefaultExtensionClicked - default Translator switch off"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v7, Lcom/sec/android/app/sbrowser/main_view/menu/k;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/main_view/menu/k;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "handleDefaultExtensionClicked - default Translator: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->isSamsungAccountLogin()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isRetailMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "handleDefaultExtensionClicked - default Translator off"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->updateDefaultTranslatorStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v3, 0x3e8

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/k;

    move-object v4, v1

    move-object v5, p0

    move-object v6, p1

    move-object v7, p4

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/main_view/menu/k;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    int-to-long p0, v3

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private handleExtensionsItemClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getInstalled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v4, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->showSixDlDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void

    :cond_0
    invoke-interface/range {p4 .. p4}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v4

    iget-object v5, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->checkAndShowTrunOnMsgInSecretMode(ZLandroid/app/Activity;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getMainToolbarAction(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const-string v6, "20050"

    const-string v7, "On-device"

    const/4 v8, 0x1

    if-eq v4, v5, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getInstance()Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->getModeImpl()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "Server"

    goto :goto_0

    :cond_3
    const-string v7, "Addons"

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Mode"

    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Result"

    const-string v2, "Translate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "201"

    invoke-static {v1, v6, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void

    :cond_4
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getContextMenu(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object v4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isPageTransActionItem(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslateV2()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v1

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v6, v7}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->runPageTrans(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    if-nez v4, :cond_6

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeAction(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    return-void

    :cond_6
    new-instance v5, Landroid/widget/PopupMenu;

    iget-object v6, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v6, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v6, Landroid/view/View;

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v7

    const v9, 0x7f0b0348

    const v10, 0x7f14005a

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11, v11, v10}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result v6

    const v7, 0x7f0b0349

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object v4

    move v6, v11

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v8}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v8, Landroid/view/View;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v10}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v10

    add-int/lit8 v12, v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v13}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v7, v10, v12, v13}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    new-instance v6, Landroid/view/View;

    iget-object v9, v0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v9

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v10

    invoke-virtual {v4}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v9, v7, v10, v8, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_9
    new-instance v4, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;

    invoke-direct {v4, p0, p1, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    new-instance v6, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;

    invoke-direct {v6, p0, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result v0

    :goto_2
    if-ge v11, v0, :cond_b

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-interface {v1, v11}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_c

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v8, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;

    invoke-interface/range {p3 .. p3}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->getRenderView()Landroid/widget/FrameLayout;

    move-result-object v3

    move-object v0, v8

    move-object/from16 v1, p2

    move-object v2, v3

    move-object v3, v7

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;-><init>(Landroid/view/View;Landroid/view/View;Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Lcom/sec/android/app/sbrowser/extensions/SixContextMenuUiHandler;->showContextMenu()Z

    :cond_c
    return-void
.end method

.method private synthetic lambda$handleDefaultExtensionClicked$3(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Z)V
    .locals 1

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p5

    const/4 v0, 0x1

    invoke-virtual {p5, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTranslatorEnabled(Z)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleDefaultExtensionClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$handleDefaultExtensionClicked$4(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 10

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v9, Lcom/sec/android/app/sbrowser/main_view/menu/j;

    const/4 v8, 0x2

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/menu/j;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;I)V

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->getTranslateTurnOnDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private synthetic lambda$handleDefaultExtensionClicked$5(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->stopReadAloud(Ljava/lang/String;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleExtensionsItemClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    return-void
.end method

.method private synthetic lambda$onExtensionsItemClicked$0(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Z)V
    .locals 1

    if-nez p5, :cond_0

    return-void

    :cond_0
    const-string p5, "MenuSettingsHelper"

    const-string v0, "onExtensionsItemClicked - OK on FTU popup"

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleDefaultExtensionClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    return-void
.end method

.method private synthetic lambda$onExtensionsItemClicked$1(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 10

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->detectArticleAndUpdateAiButton(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isBrowsingAssistFTU()Z

    move-result v0

    const-string v1, "MenuSettingsHelper"

    if-eqz v0, :cond_0

    const-string v0, "onExtensionsItemClicked - BrowsingAssistFTU case"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->INSTANCE:Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v9, Lcom/sec/android/app/sbrowser/main_view/menu/j;

    const/4 v8, 0x1

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/main_view/menu/j;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;I)V

    invoke-virtual {v0, v1, v9}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController;->showFTUDialog(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;)V

    goto :goto_0

    :cond_0
    const-string v0, "onExtensionsItemClicked - non-BrowsingAssistFTU case"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleDefaultExtensionClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onExtensionsItemClicked$2(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Z)V
    .locals 7

    const-string v0, "MenuSettingsHelper"

    if-eqz p5, :cond_0

    const-string p5, "onExtensionsItemClicked - BrowsingAssist ready"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v6, Lcom/sec/android/app/sbrowser/main_view/menu/k;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/main_view/menu/k;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    invoke-virtual {p5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    const-string p0, "onExtensionsItemClicked - BrowsingAssist not ready"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "Mode"

    const-string p2, "OFF"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Result"

    const-string p2, "SamsungAccount"

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "201"

    const-string p2, "20050"

    invoke-static {p1, p2, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-void
.end method

.method private stopReadAloud(Ljava/lang/String;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isTranslatorExt(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->stopReadAloud()V

    :cond_0
    return-void
.end method


# virtual methods
.method public launchExtensionsActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b005d

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public onExtensionsItemClicked(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;ILandroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V
    .locals 8

    const-string v0, "MenuSettingsHelper"

    const-string v1, "onExtensionsItemClicked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->createContextMenu()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionItemFromMenuId(I)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    move-result-object v5

    if-nez v5, :cond_0

    const-string p0, "onExtensionsItemClicked - failed to find selectedItem"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p2

    invoke-virtual {v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getContextMenu(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;->closeOptionsMenu()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p2

    invoke-virtual {v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isDefaultTranslator(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/j;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/main_view/menu/j;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;)V

    const/4 p0, 0x1

    invoke-static {p2, p0, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil;->promptUserConsentAndSamsungAccountLogin(Landroid/app/Activity;ZLcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;)Z

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "onExtensionsItemClicked - non-default ext "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->stopReadAloud(Ljava/lang/String;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    invoke-direct {p0, v5, p3, p4, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper;->handleExtensionsItemClicked(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;Landroid/view/View;Lcom/sec/android/app/sbrowser/main_view/menu/MenuSettingsHelper$Delegate;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    :goto_0
    return-void
.end method
