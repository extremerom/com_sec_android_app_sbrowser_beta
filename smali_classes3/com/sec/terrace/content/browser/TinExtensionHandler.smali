.class abstract Lcom/sec/terrace/content/browser/TinExtensionHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;
    }
.end annotation


# instance fields
.field private mContentContainer:Landroid/view/ViewGroup;

.field private final mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mParentView:Landroid/view/View;

.field private mPopupBgSidePadding:I

.field private mPopupItemHeight:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowMarginBottom:I

.field private mPopupWindowVerticalSize:Landroid/util/Size;

.field private mPositionX:I

.field private mPositionY:I

.field private mShouldShowSubmenu:Z

.field private mSubmenuLayoutInitialized:Z

.field private mSubmenuPanel:Landroid/view/ViewGroup;

.field private mSubmenuPanelListView:Landroid/widget/ListView;

.field private mSubmenuPanelSize:Landroid/util/Size;

.field private mSubmenuPanelViewHelper:Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mParentView:Landroid/view/View;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/content/browser/TinExtensionHandler;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->lambda$createSubmenuPanel$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method private addExtensionItemsInMenu(Landroid/view/Menu;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p0, "TinExtensionHandler"

    const-string p1, "There are no menu items for extensions."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->isFirstParty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->addExtensionMenuItemAtOrder(Landroid/view/Menu;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->addExtensionMenuItemAtOrder(Landroid/view/Menu;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private addExtensionMenuItemAtOrder(Landroid/view/Menu;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;I)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "TinExtensionHandler"

    const-string p1, "Context is null, cannot add extension menu item."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getMenuIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v2, p0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sget p0, Lcom/sec/terrace/R$id;->tin_select_action_popup_extension_menus:I

    add-int/lit8 p3, p3, 0x32

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1, p3, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/content/browser/TinExtensionHandler;)Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelViewHelper:Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;

    return-object p0
.end method

.method private calculatePopupPosition()V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getCurrentVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v3, v2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, v3

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v2, v5, :cond_0

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    sub-int v3, v5, v2

    :cond_0
    const/4 v2, 0x0

    if-gez v3, :cond_1

    move v3, v2

    :cond_1
    new-array v5, v4, [I

    iget-object v6, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mParentView:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, v5, v2

    add-int/2addr v3, v2

    iput v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionX:I

    const/4 v2, 0x1

    aget v2, v5, v2

    iput v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowMarginBottom:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    if-le v2, v3, :cond_2

    iget v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowMarginBottom:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    return-void

    :cond_2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowMarginBottom:I

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    if-ge v2, v0, :cond_3

    iget v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    return-void

    :cond_3
    iget v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v4

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    return-void
.end method

.method private checkPositionAndShowPopup()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getCurrentVisibleViewRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->calculatePopupPosition()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->positionAtCursor()V

    return-void
.end method

.method private createContentContainer()Landroid/view/ViewGroup;
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "TinExtensionHandler"

    const-string v1, "Context is null, cannot create content container."

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v1, Lcom/sec/terrace/R$layout;->submenu_popup_container:I

    invoke-virtual {p0, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    return-object p0
.end method

.method private createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 4

    new-instance p0, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private createSubmenuPanel()Landroid/view/ViewGroup;
    .locals 4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "TinExtensionHandler"

    const-string v2, "Context is null, cannot create submenu panel."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    return-object v0

    :cond_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/sec/terrace/R$layout;->submenu_popup_panel:I

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget v3, Lcom/sec/terrace/R$id;->submenu_popup_panel_list_view:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setDividerHeight(I)V

    new-instance v1, Lcom/sec/terrace/content/browser/TinExtensionHandler$1;

    invoke-direct {v1, p0, v0, v3}, Lcom/sec/terrace/content/browser/TinExtensionHandler$1;-><init>(Lcom/sec/terrace/content/browser/TinExtensionHandler;Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    new-instance v1, Lcom/sec/terrace/content/browser/d;

    invoke-direct {v1, p0}, Lcom/sec/terrace/content/browser/d;-><init>(Lcom/sec/terrace/content/browser/TinExtensionHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v2
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private getSubmenuPanelWidth()I
    .locals 5

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    iget-object v4, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelViewHelper:Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;

    invoke-virtual {v4, v3}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->calculateWidth(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private initializeSubmenuLayout()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuLayoutInitialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "TinExtensionHandler"

    const-string v0, "Context is null, cannot initialize submenu layout."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/terrace/R$dimen;->submenu_popup_item_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupItemHeight:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/terrace/R$dimen;->submenu_popup_background_side_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupBgSidePadding:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/terrace/R$dimen;->submenu_popup_margin_bottom:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowMarginBottom:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->createContentContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mContentContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->createSubmenuPanel()Landroid/view/ViewGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanel:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;

    invoke-direct {v1, v0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelViewHelper:Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuLayoutInitialized:Z

    return-void
.end method

.method private synthetic lambda$createSubmenuPanel$0(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    iget-object p2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->performExtension(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    return-void
.end method

.method private layoutExtensionMenuItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->layoutSubmenuPanelItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->preparePopupContent()V

    return-void
.end method

.method private layoutSubmenuPanelItems(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getCurrentVisibleViewRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupBgSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->getSubmenuPanelWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupItemHeight:I

    mul-int/2addr v0, v1

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p1, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelSize:Landroid/util/Size;

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelListView:Landroid/widget/ListView;

    invoke-direct {p0, p1, v1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->setSize(Landroid/view/View;Landroid/util/Size;)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupBgSidePadding:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanelSize:Landroid/util/Size;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    iget v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupBgSidePadding:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    return-void
.end method

.method private positionAtCursor()V
    .locals 4

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindowVerticalSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mParentView:Landroid/view/View;

    iget v2, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionX:I

    iget p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPositionY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    const-string p0, "TinExtensionHandler"

    const-string v0, "Extension submenu has been shown"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private preparePopupContent()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mContentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mContentContainer:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private showExtensionSubmenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 2

    const-string v0, "TinExtensionHandler"

    const-string v1, "showExtensionSubMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getSubmenu()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->destroyActionModeAndKeepSelection()V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->initializeSubmenuLayout()V

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->layoutExtensionMenuItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->checkPositionAndShowPopup()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mShouldShowSubmenu:Z

    return-void
.end method


# virtual methods
.method public abstract destroyActionModeAndKeepSelection()V
.end method

.method public abstract getCurrentVisibleViewRect()Landroid/graphics/Rect;
.end method

.method public abstract getSelectionRect()Landroid/graphics/Rect;
.end method

.method public hideSubmenuLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuLayoutInitialized:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public initializeExtensionMenu(Landroid/view/Menu;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getExtensionMenuItems()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->addExtensionItemsInMenu(Landroid/view/Menu;Ljava/util/List;)V

    return-void
.end method

.method public isExtensionSubmenuShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuLayoutInitialized:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public performExtension(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mShouldShowSubmenu:Z

    const-string v0, "TinExtensionHandler"

    if-nez p1, :cond_0

    const-string p0, "Extension item is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->hasSubmenu()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->showExtensionSubmenu(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "performExtension - ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->destroyActionModeAndKeepSelection()V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getCommandId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->executeCommand(I)V

    :goto_0
    return-void
.end method

.method public repositionAndShowSubmenuIfRequired()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mSubmenuLayoutInitialized:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mShouldShowSubmenu:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->checkPositionAndShowPopup()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetAndRemoveSubmenuLayout()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mShouldShowSubmenu:Z

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->hideSubmenuLayout()V

    return-void
.end method

.method public setScrollInProgress(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->hideSubmenuLayout()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler;->repositionAndShowSubmenuIfRequired()V

    :goto_0
    return-void
.end method

.method public shouldShowSubmenu()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler;->mShouldShowSubmenu:Z

    return p0
.end method
