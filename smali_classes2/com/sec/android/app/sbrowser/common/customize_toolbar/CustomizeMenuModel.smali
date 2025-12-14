.class Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_EXTENSION_HIDDEN_MENU:[Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAvailableMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenu:Landroid/view/Menu;

.field private mPrefAvailableMenus:Ljava/lang/String;

.field private mPrefCustomized:Ljava/lang/String;

.field private mPrefToolbarLeft:Ljava/lang/String;

.field private mPrefToolbarRight:Ljava/lang/String;

.field private mPrefToolsPrimary:Ljava/lang/String;

.field private mPrefToolsSecondary:Ljava/lang/String;

.field private final mToolbarLeftItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolbarRightItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsPrimaryMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mToolsSecondaryMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "khmmfcceknncifmkiimjnnjldibgajpl"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->DEFAULT_EXTENSION_HIDDEN_MENU:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    new-instance v0, Ls/i;

    invoke-direct {v0, p1}, Ls/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->menuInflate()V

    return-void
.end method

.method private addDefaultExtHiddenMenu(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f0b0077

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultExtHiddenMenuItems()Ljava/util/List;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0, p0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addExtensionMenuItem(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;)V
    .locals 9

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    :cond_0
    move-object v2, v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->isFirstParty()Z

    move-result v8

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getIcon(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;ZLandroid/graphics/Bitmap;ZZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getResourceId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getName()Ljava/lang/String;

    move-result-object p1

    const v3, 0x7f0b04f1

    invoke-interface {p0, v3, v1, v2, p1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method private getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getItemIdFromResourceName(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method private getDefaultExtHiddenMenuItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->DEFAULT_EXTENSION_HIDDEN_MENU:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    const-string v5, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isBrowsingAssistSupported()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getItemIdFromResourceName(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v5, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private getDefaultExtToolsMenuItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    const v4, 0x7f0b04f1

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v3

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isExtensionDefaultHidden(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getDefaultHiddenMenus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0b05cb

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultMenus(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->addDefaultExtHiddenMenu(Ljava/util/List;)V

    return-object v0
.end method

.method private getDefaultMenus(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v2}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getDefaultToolbarLeft()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0b0d8c

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultMenus(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0b0047

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b005e

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getDefaultToolbarRight()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0b0d9a

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultMenus(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b004f

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method private getDefaultToolsPrimaryMenus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    const v0, 0x7f0b08fc

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultMenus(I)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b004f

    invoke-interface {p0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getDefaultToolsSecondaryMenus()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    const v1, 0x7f0b0ac4

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultMenus(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultExtToolsMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getItemIdFromResourceName(Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getMenuIdFromActionId(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    const v5, 0x7f0b04f1

    if-eq v4, v5, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private initialzie()V
    .locals 1

    const-string v0, "tools_primary_item_list"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsPrimary:Ljava/lang/String;

    const-string v0, "tools_secondary_item_list"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    const-string v0, "new_toolbar_l_item"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarLeft:Ljava/lang/String;

    const-string v0, "new_toolbar_r_item"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarRight:Ljava/lang/String;

    const-string v0, "new_hidden_menu_item_list"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefAvailableMenus:Ljava/lang/String;

    const-string v0, "pref_new_menu_customized"

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefCustomized:Ljava/lang/String;

    return-void
.end method

.method private isMenuCustomized()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefCustomized:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->getBooleanPref(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isNewItem(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setMenuList(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->clear()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateBackForwardIconsIfneeded()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/LocalizationUtils;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b0047

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    const v2, 0x7f08030c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b005e

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0802d1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private updateExtensionMenuIfNeeded()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b04f1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeGroup(I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isSIXEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CustomizeMenuModel"

    const-string v0, "Six disabled, do not update extensions menu"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getExtensionsMenu(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;->getInstallSource()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->isDefaultExtEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->addExtensionMenuItem(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionActionItem;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private updateHiddenMenus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefAvailableMenus:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultHiddenMenus()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateMenuItems()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateExtensionMenuIfNeeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuManager;->updateMenuVisibility(Landroid/content/Context;Landroid/view/Menu;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateBackForwardIconsIfneeded()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIUtil;->isAwesomeIntelligenceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0b0050

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1401d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isCompactLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    const v0, 0x7f0b0069

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_1

    const v0, 0x7f080262

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method

.method private updateNewItemIfNeeded()V
    .locals 6

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isNewItem(Landroid/view/MenuItem;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "new menu: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CustomizeMenuModel"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;

    move-result-object v4

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;->getActionIdFromMenuId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isExtensionDefaultHidden(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->saveNewMenuItems(Ljava/lang/String;Ljava/util/List;)V

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefAvailableMenus:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->saveNewMenuItems(Ljava/lang/String;Ljava/util/List;)V

    :cond_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b04f1 -> :sswitch_2
        0x7f0b05cb -> :sswitch_1
        0x7f0b08fc -> :sswitch_0
        0x7f0b0ac4 -> :sswitch_0
        0x7f0b0d8c -> :sswitch_0
        0x7f0b0d9a -> :sswitch_0
    .end sparse-switch
.end method

.method private updateToolbarLeftItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarLeft:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultToolbarLeft()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateToolbarRightItems()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarRight:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultToolbarRight()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateToolsPrimaryMenus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsPrimary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultToolsPrimaryMenus()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private updateToolsSecondaryMenus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->isMenuCustomized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getCustomizedMenus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultToolsSecondaryMenus()Ljava/util/List;

    move-result-object v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public clearIfNeeded(Landroid/app/Activity;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {p0}, Landroid/view/Menu;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public extensionMenuUpdated()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateMenuItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateMenuLists()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsPrimary:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public getAllToolbarItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getToolbarLeftItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getToolbarRightItems()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getHiddenMenus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public getToolbarLeftItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    return-object p0
.end method

.method public getToolbarRightItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    return-object p0
.end method

.method public getToolsPrimaryMenus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    return-object p0
.end method

.method public getToolsSecondaryMenus()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    return-object p0
.end method

.method public isExtensionDefaultHidden(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->getDefaultExtHiddenMenuItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->getItemResourceNameFromId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public menuInflate()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->initialzie()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    const v1, 0x7f100013

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateMenuItems()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateMenuLists()V

    return-void
.end method

.method public reloadMenu()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->menuInflate()V

    return-void
.end method

.method public resetMenu()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefCustomized:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->setBooleanPref(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateMenuLists()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsPrimary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarLeft:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarRight:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefAvailableMenus:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->clearPreference(Ljava/util/ArrayList;)V

    return-void
.end method

.method public save()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsPrimary:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolsSecondary:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarLeft:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefToolbarRight:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefAvailableMenus:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->saveMenuList(Ljava/lang/String;Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mPrefCustomized:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->setBooleanPref(Ljava/lang/String;Z)V

    return-void
.end method

.method public saveNewMenuItems(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getStringArrayPref(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuHelper;->getItemResourceNameFromId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p0, p1, v0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/MoreMenuPreference;->setStringArrayPref(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public setMenuList(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setMenuList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsPrimaryMenus:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolsSecondaryMenus:Ljava/util/List;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarLeftItems:Ljava/util/List;

    invoke-direct {p0, p1, p3}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mToolbarRightItems:Ljava/util/List;

    invoke-direct {p0, p1, p4}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->mAvailableMenus:Ljava/util/List;

    invoke-direct {p0, p1, p5}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->setMenuList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public updateMenuLists()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateToolsPrimaryMenus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateToolsSecondaryMenus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateToolbarLeftItems()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateToolbarRightItems()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateHiddenMenus()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/customize_toolbar/CustomizeMenuModel;->updateNewItemIfNeeded()V

    return-void
.end method
