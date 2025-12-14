.class final Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/content/browser/TinExtensionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubmenuPanelViewHelper"
.end annotation


# instance fields
.field private final mCalculator:Landroid/view/View;

.field private final mContextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconSize:I

.field private final mIconTextSpacing:I

.field private final mSidePadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$dimen;->submenu_popup_item_side_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mSidePadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$dimen;->submenu_popup_item_icon_text_spacing:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconTextSpacing:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$dimen;->submenu_popup_item_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconSize:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->createMenuButton(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mCalculator:Landroid/view/View;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null for SubmenuPanelViewHelper"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private createMenuButton(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)Landroid/view/View;
    .locals 6

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "TinExtensionHandler"

    const-string p1, "Context is null in createMenuButton, cannot create button."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/view/View;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_0
    iget v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconTextSpacing:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->shouldShowIcon()Z

    move-result v4

    iget v5, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconSize:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->createMenuItemButton(Landroid/content/Context;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)Landroid/view/View;

    move-result-object p1

    iget p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mSidePadding:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method private createMenuItemButton(Landroid/content/Context;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)Landroid/view/View;
    .locals 8

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$layout;->submenu_popup_menu_button:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->updateMenuItemButton(Landroid/view/View;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)V

    :cond_0
    return-object p1
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mContextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method private setSize(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p3, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private shouldShowIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private updateMenuItemButton(Landroid/view/View;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)V
    .locals 4

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const-string p0, "TinExtensionHandler"

    const-string p2, "SubmenuPanelViewHelper context is null, cannot update menu item button."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    sget v2, Lcom/sec/terrace/R$id;->submenu_popup_menu_item_image:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getMenuIcon()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getMenuIcon()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_1

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v1, v0, p4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v1, v3, v3, p5, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v2, p5, p5}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->setSize(Landroid/view/View;II)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move p0, v3

    :goto_1
    sget p4, Lcom/sec/terrace/R$id;->submenu_popup_menu_item_text:I

    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p4

    invoke-virtual {p1, p3, p0, p2, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p3

    invoke-virtual {p1, v3, p0, p2, p3}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_2
    return-void
.end method


# virtual methods
.method public calculateWidth(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)I
    .locals 6

    iget-object v1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mCalculator:Landroid/view/View;

    iget v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconTextSpacing:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->shouldShowIcon()Z

    move-result v4

    iget v5, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconSize:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->updateMenuItemButton(Landroid/view/View;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)V

    iget-object p1, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mCalculator:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    iget-object p0, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mCalculator:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    return p0
.end method

.method public getView(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;Landroid/view/View;)Landroid/view/View;
    .locals 6

    if-eqz p2, :cond_0

    iget v3, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconTextSpacing:I

    invoke-direct {p0}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->shouldShowIcon()Z

    move-result v4

    iget v5, p0, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->mIconSize:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->updateMenuItemButton(Landroid/view/View;Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;IZI)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinExtensionHandler$SubmenuPanelViewHelper;->createMenuButton(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionContextMenuItem;)Landroid/view/View;

    move-result-object p2

    :goto_0
    return-object p2
.end method
