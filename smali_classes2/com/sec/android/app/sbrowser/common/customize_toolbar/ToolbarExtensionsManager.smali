.class public Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;
    }
.end annotation


# instance fields
.field private mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

.field private final mTransClients:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;",
            ">;"
        }
    .end annotation
.end field

.field private mTransShowed:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mTransShowed:Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mTransClients:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->lambda$runPageTrans$0(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;-><init>()V

    return-object v0
.end method

.method public static synthetic c(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->lambda$runPageTrans$1(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    return-void
.end method

.method private createContextMenu()V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->createContextMenu()V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    return-object v0
.end method

.method private static synthetic lambda$runPageTrans$0(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V
    .locals 0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageTrans()V

    return-void
.end method

.method private static synthetic lambda$runPageTrans$1(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    return-void
.end method


# virtual methods
.method public addTransClient(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mTransClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->getInstanceId(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public executeAction(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeAction(Ljava/lang/String;)V

    return-void
.end method

.method public executeCommand(I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->showBrowsingAssistDialogIfNeeded(Landroid/app/Activity;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ToolbarExtensionsManager"

    const-string p1, "Translate is blocked by ParentalControl"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeCommand(I)V

    return-void
.end method

.method public getActionIdFromMenuId(I)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getActionList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public getActionItemFromActionId(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getMenuIdFromActionId(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionItemFromMenuId(I)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    move-result-object p0

    return-object p0
.end method

.method public getActionItemFromMenuId(I)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getActionList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public getChatAIActionItem()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;
    .locals 1

    const-string v0, "pbdmmocnckldejnojbjmbighbljdjckl"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionItemFromActionId(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    move-result-object p0

    return-object p0
.end method

.method public getContextMenuItemFromActionId(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->createContextMenu()V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getContextMenu(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromActionId(Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtensionsMenu(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getActionList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFilteredIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public getFilteredIconWithRId(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getFilteredIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;ZLandroid/graphics/Bitmap;ZZZ)Landroid/graphics/drawable/Drawable;
    .locals 7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz p7, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getIconColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;ZZZ)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getFilteredIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getIconColor(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;ZZZ)I
    .locals 1

    if-nez p5, :cond_e

    const p0, 0x7f060d5d

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto/16 :goto_0

    :cond_0
    const p0, 0x7f060d66

    goto/16 :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentTheme()Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;

    move-result-object p5

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_2

    const p0, 0x7f06019a

    goto :goto_0

    :cond_2
    const p0, 0x7f060d67

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p4, :cond_4

    const p0, 0x7f060199

    goto :goto_0

    :cond_4
    const p0, 0x7f060d60

    goto :goto_0

    :cond_5
    if-eqz p3, :cond_7

    if-eqz p4, :cond_6

    const p0, 0x7f06019d

    goto :goto_0

    :cond_6
    const p0, 0x7f060d68

    goto :goto_0

    :cond_7
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_9

    if-eqz p4, :cond_8

    const p0, 0x7f06019b

    goto :goto_0

    :cond_8
    const p0, 0x7f060d61

    goto :goto_0

    :cond_9
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getReaderThemeColor()I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_b

    if-eqz p4, :cond_a

    const p0, 0x7f06019c

    goto :goto_0

    :cond_a
    const p0, 0x7f060d62

    goto :goto_0

    :cond_b
    if-eqz p5, :cond_f

    if-eqz p4, :cond_c

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_c
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getBottomTextColor()I

    move-result p0

    return p0

    :cond_d
    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->getMoreTextColor()I

    move-result p0

    return p0

    :cond_e
    const p0, 0x7f060d8f

    :cond_f
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public getMainToolbarAction(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getPageTransItem()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public getMenuIdFromActionId(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getActionList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public getPageTransItem()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;
    .locals 2

    const-string v0, "khmmfcceknncifmkiimjnnjldibgajpl"

    const-string v1, "contextMenuPage"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p0

    return-object p0
.end method

.method public getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mTransClients:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->getInstanceId(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransResourceId()I
    .locals 1

    const-string v0, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getMenuIdFromActionId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isDefaultExt(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "default_ext"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "default_ext_from_six"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isDefaultExtEnabled(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->isDefaultExtEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPageTransActionItem(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSIXEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->isSIXEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportMainSwitch()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->isSupportMainSwitch()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public removeTransClient(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mTransClients:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->getInstanceId(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public runPageChangeLang(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageChangeLang(Z)V

    return-void

    :cond_0
    const-string p1, "khmmfcceknncifmkiimjnnjldibgajpl"

    if-eqz p2, :cond_1

    const-string p2, "CM-Page-CH-Source"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "CM-Page-CH-Target"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_2
    return-void
.end method

.method public runPageClearTranslate(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageClearTranslate()V

    return-void

    :cond_0
    const-string p1, "khmmfcceknncifmkiimjnnjldibgajpl"

    const-string v0, "CM-Page-Clear-Trans"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_1
    return-void
.end method

.method public runPageExitTrans(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageExitTrans()V

    return-void

    :cond_0
    const-string p1, "khmmfcceknncifmkiimjnnjldibgajpl"

    const-string v0, "CM-Page-Exit"

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_1
    return-void
.end method

.method public runPageOnTrans(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageOnTrans(Z)V

    return-void

    :cond_0
    const-string p1, "khmmfcceknncifmkiimjnnjldibgajpl"

    if-eqz p2, :cond_1

    const-string p2, "CM-Page-On-Trans"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p2, "CM-Page-On-Origin"

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_2
    return-void
.end method

.method public runPageSplitMode(Landroid/content/Context;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageSplitMode(Z)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "CM-Page-Enter-Split"

    goto :goto_0

    :cond_1
    const-string p1, "CM-Page-Exit-Split"

    :goto_0
    const-string p2, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_2
    return-void
.end method

.method public runPageTrans(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->updateTransMode()V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getTransClient(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;

    move-result-object p1

    const-wide/16 p3, 0x1f4

    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->setTargetLang(Ljava/lang/String;)V

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p2, LG6/e;

    const/16 v0, 0x16

    invoke-direct {p2, v0, p1}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtTransClient;->runPageTrans()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getPageTransItem()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p1

    const-string v0, "ToolbarExtensionsManager"

    const-string v1, "khmmfcceknncifmkiimjnnjldibgajpl"

    if-nez p1, :cond_3

    const-string p1, "runPageTrans : mainItem is null"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExtEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "runPageTrans - six record:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->getAppStatusLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f140f9f

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showAppStatusLog(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;->reloadExtIfNeeded(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->setTargetLang(Ljava/lang/String;)V

    const-string p1, "contextMenuPageW-T"

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, LG6/e;

    const/16 v0, 0x17

    invoke-direct {p2, v0, p0}, LG6/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_4
    const-string p0, "runPageTrans :  item is null"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :goto_1
    return-void
.end method

.method public runTransUpdateState()V
    .locals 2

    const-string v0, "khmmfcceknncifmkiimjnnjldibgajpl"

    const-string v1, "contextMenuUpdateStatus"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getContextMenuItemFromKey(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->executeCommand(I)V

    :cond_0
    return-void
.end method

.method public setSixDelegate(Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->mSixDelegate:Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;

    return-void
.end method
