.class public abstract Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceContextMenuPopulator;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private final mEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEventX:F

.field private mEventY:F

.field private mInvisibleBarcodeMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

.field private mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

.field protected mMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

.field protected mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

.field private mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

.field protected mVisibleGroupId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventListenerList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    return-void
.end method

.method public static synthetic a(Landroid/view/MenuItem;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->lambda$isExtractMenuEnabled$0(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mInvisibleBarcodeMenuItems:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;)Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    return-object p0
.end method

.method private createDetectBarcodeListener(Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)V
    .locals 11

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v0

    new-instance v10, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$2;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v10}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->setBarcodeDetectionListener(Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler$BarcodeDetectionListener;)V

    return-void
.end method

.method private customizeMenu(Landroid/view/Menu;)V
    .locals 5
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mInvisibleBarcodeMenuItems:Ljava/util/List;

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const v4, 0x7f0b0314

    if-ne v3, v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mInvisibleBarcodeMenuItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const v4, 0x7f0b0327

    if-ne v3, v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mInvisibleBarcodeMenuItems:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const v4, 0x7f0b0356

    if-eq v3, v4, :cond_4

    const v4, 0x7f0b0320

    if-ne v3, v4, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f1403c1

    goto :goto_2

    :cond_5
    const v3, 0x7f1403c0

    :goto_2
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->performExtensionMenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->showContextMenu(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private isExtractMenuEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic lambda$isExtractMenuEnabled$0(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result p0

    const v0, 0x7f0b0343

    if-eq p0, v0, :cond_1

    const v0, 0x7f0b031b

    if-ne p0, v0, :cond_0

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

.method private performExtensionMenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 2
    .param p1    # Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "ContextMenuPopulator"

    if-nez p1, :cond_0

    const-string p0, "[performExtensionMenu] extension item is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->showExtensionSubmenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "[performExtensionMenu] - ["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeCommand(I)V

    :goto_0
    return-void
.end method

.method private showContextMenu(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v7, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;

    invoke-direct {v7, p0, p5}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator$1;-><init>(Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;Lcom/sec/terrace/TerraceContextMenuParams;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->initialize()V

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/terrace/TerraceContextMenuParams;Ljava/util/List;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuItemClickListener;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;->onShown()V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p5

    const p6, 0x7f0b0314

    if-ne p5, p6, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForShowAddEsim(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const p5, 0x7f0b0327

    if-ne p2, p5, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForShowAddBoardingPassToWallet(Landroid/content/Context;)V

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    invoke-virtual {p0, p3, p4}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->showContextMenu(FF)Z

    move-result p0

    return p0

    :cond_7
    :goto_2
    const-string p0, "ContextMenuPopulator"

    const-string p1, "[showContextMenu] - mMenuItems is empty"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private showExtensionSubmenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 4

    const-string v0, "ContextMenuPopulator"

    const-string v1, "[showExtensionSubMenu]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->initializeMenu()Landroid/view/Menu;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->addExtensionItemsInMenu(Landroid/view/Menu;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->initialize()V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {v0}, Landroid/view/Menu;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    invoke-interface {v0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItems:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->showContextSubMenu(Ljava/util/List;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sec/android/app/sbrowser/common/listener/context_menu/ContextMenuEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public buildContextMenu(Landroid/view/ContextMenu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 4
    .param p1    # Landroid/view/ContextMenu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventListenerList:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;-><init>(Lcom/sec/android/app/sbrowser/tab/Tab;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Ljava/util/List;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->initializeMenu()Landroid/view/Menu;

    move-result-object p1

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->buildContextMenuInternal(Landroid/view/Menu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->initializeExtensionMenu(Landroid/view/Menu;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    iget p3, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    invoke-virtual {p2, p1, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->addOtherSelectionMenuIfNeeded(Landroid/view/Menu;I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->customizeMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public buildContextMenuInternal(Landroid/view/Menu;Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    if-nez v0, :cond_1

    const-string p0, "ContextMenuPopulator"

    const-string p1, "[buildContextMenuInternal] tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "tel:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mailto:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sms:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->selectText()V

    return-void

    :cond_3
    instance-of p2, p1, Landroid/view/ContextMenu;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->createHeaderText(Lcom/sec/terrace/TerraceContextMenuParams;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/ContextMenu;

    invoke-interface {v0, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_4
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getVisibleGroup(Lcom/sec/terrace/TerraceContextMenuParams;)I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->buildContextMenu(Landroid/view/Menu;ILcom/sec/terrace/TerraceContextMenuParams;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForLongPress(Landroid/content/Context;I)V

    return-void
.end method

.method public clearDeepSkyInfo()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->clearDeepSkyInfo()V

    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ContextMenuPopulator"

    const-string v1, "[dismiss]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->dismiss()V

    return-void
.end method

.method public dismissWithExtractText()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->isExtractMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ContextMenuPopulator"

    const-string v1, "[dismissWithExtractText]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuUiHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuUiHandler;->dismiss()V

    :cond_0
    return-void
.end method

.method public abstract getEventName(Lcom/sec/terrace/TerraceContextMenuParams;I)Ljava/lang/String;
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public handleExtra(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0b035b

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->zoom()Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->share(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->saveWebpage()Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->refresh()Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->print()Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->installWebApk(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->goForward()Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->goBackward()Z

    move-result p0

    return p0

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->addShortcut()Z

    move-result p0

    return p0

    :pswitch_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->addBookMark(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->saveVideoAs(Ljava/lang/String;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b032d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b0333
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0b0339
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleImageLink(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 6
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0b0343

    if-eq p2, v0, :cond_1

    const v0, 0x7f0b035a

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventX:F

    iget v5, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventY:F

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->startImageToolkit(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;IFF)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->shareLink(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->shareImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getSrcUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->downloadImage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->downloadAllImages(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->copyLink(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->copyImage(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->startObjectCapture(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->launchBarcodeIntent()Z

    move-result p0

    return p0

    :cond_0
    :pswitch_9
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceContextMenuParams;->getLinkUrl()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->saveLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_1
    :pswitch_a
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->startExtractText(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f0b0314
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b0319
        :pswitch_4
        :pswitch_3
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0b0323
        :pswitch_9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f0b033c
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f0b0368
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleOpenInSBrowser(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f1403c2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mVisibleGroupId:I

    invoke-virtual {p2, v0, p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInSBrowser(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public handleOpenLink(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 0
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInTabGroup(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInSecretMode(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInOtherWindow(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInNewWindow(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInNewTab(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openInBackground(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->openImage(Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x7f0b031c
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b0351
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0b0354
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleSelection(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 1
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NonConstantResourceId"
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f0b0312

    if-eq p2, v0, :cond_2

    const v0, 0x7f0b0332

    if-eq p2, v0, :cond_1

    const v0, 0x7f0b0338

    if-eq p2, v0, :cond_0

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->webSearch(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->shareSelection(Landroid/content/Context;)Z

    move-result p0

    return p0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuBuildHelper:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuBuildHelper;->getDictionaryPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->dictionary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :pswitch_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->cut()Z

    move-result p0

    return p0

    :pswitch_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->copy()Z

    move-result p0

    return p0

    :pswitch_5
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->addToNote(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)Z

    move-result p0

    return p0

    :pswitch_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->selectText()Z

    move-result p0

    return p0

    :pswitch_7
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->paste()Z

    move-result p0

    return p0

    :pswitch_8
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->showClipboard()Z

    move-result p0

    return p0

    :cond_0
    :pswitch_9
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->selectAll()Z

    move-result p0

    return p0

    :cond_1
    :pswitch_a
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->find()Z

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->translate()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b033f
        :pswitch_8
        :pswitch_7
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0b035c
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isContextMenuCustomUiEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onItemSelected(Lcom/sec/terrace/TerraceContextMenuParams;I)Z
    .locals 2
    .param p1    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->handleOpenInSBrowser(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result v0

    const-string v1, "ContextMenuPopulator"

    if-eqz v0, :cond_0

    const-string v0, "[onItemSelected] handleOpenInSBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->handleOpenLink(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "[onItemSelected] handleOpenLink"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->handleImageLink(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "[onItemSelected] handleImageLink"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->handleSelection(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "[onItemSelected] handleSelection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->handleExtra(Lcom/sec/terrace/TerraceContextMenuParams;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "[onItemSelected] handleExtra"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->getEventName(Lcom/sec/terrace/TerraceContextMenuParams;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/context_menu/util/ContextMenuSALogging;->sendEventLogForItem(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEnabled:Z

    return-void
.end method

.method public setMenuVisible(Landroid/view/Menu;IZ)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method public setTab(Lcom/sec/android/app/sbrowser/tab/Tab;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/tab/Tab;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTab:Lcom/sec/android/app/sbrowser/tab/Tab;

    return-void
.end method

.method public setTabDelegate(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    return-void
.end method

.method public shouldShowContextMenu(Landroid/app/Activity;Lcom/sec/terrace/TerraceContextMenuParams;)Z
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isContentUrl(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getUnfilteredLinkUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getPageUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSourceType()I

    move-result p0

    if-ne p0, v1, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->getSourceType()I

    move-result p0

    if-eq p0, v1, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isAnchor()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isVideo()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isEditable()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceContextMenuParams;->isSelectedText()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0
.end method

.method public showContextMenuCustomUi(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;)Z
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/terrace/TerraceContextMenuParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object v0, p0

    const-string v1, "ContextMenuPopulator"

    const-string v2, "[showContextMenuCustomUi]"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->isExtractMenuEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mMenuItemHandler:Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mContext:Landroid/content/Context;

    move-object v7, p5

    invoke-virtual {v1, v2, p5}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuItemHandler;->initializeLiveTextIfNeeded(Landroid/content/Context;Lcom/sec/terrace/TerraceContextMenuParams;)V

    :goto_0
    move v5, p3

    goto :goto_1

    :cond_0
    move-object v7, p5

    goto :goto_0

    :goto_1
    iput v5, v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventX:F

    move v6, p4

    iput v6, v0, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->mEventY:F

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    invoke-virtual {p5}, Lcom/sec/terrace/TerraceContextMenuParams;->isImage()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getBarcodeDetectionHandler()Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/barcode_detect/BarcodeDetectionHandler;->isDetectionInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p0

    move-object/from16 v1, p7

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->createDetectBarcodeListener(Lcom/sec/terrace/context_menu/TerraceContextMenuCallback;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/context_menu/ContextMenuPopulator;->showContextMenu(Landroid/app/Activity;Landroid/view/View;FFLcom/sec/terrace/TerraceContextMenuParams;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
