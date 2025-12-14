.class public Lorg/chromium/ui/listmenu/ListMenuItemAdapter;
.super Lorg/chromium/ui/modelutil/ModelListAdapter;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static synthetic a(Lorg/chromium/ui/listmenu/ListMenuItemAdapter;ILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/ui/listmenu/ListMenuItemAdapter;->lambda$getView$0(ILandroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$getView$0(ILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object v0, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->MENU_ITEM_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {p0, v0}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    int-to-long v0, p0

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, p3, p1, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lorg/chromium/ui/listmenu/ListMenuItemAdapter;->isEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p1, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->MENU_ITEM_ID:Lorg/chromium/ui/modelutil/PropertyModel$WritableIntPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;)I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/history/view/b;

    invoke-direct {v0, p0, p1, p3}, Lcom/sec/android/app/sbrowser/sites/history/view/b;-><init>(Lorg/chromium/ui/listmenu/ListMenuItemAdapter;ILandroid/view/ViewGroup;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lorg/chromium/ui/listmenu/ListMenuItemAdapter;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/View;->setEnabled(Z)V

    return-object p2
.end method

.method public isEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p0, p0, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    sget-object p1, Lorg/chromium/ui/listmenu/ListMenuItemProperties;->ENABLED:Lorg/chromium/ui/modelutil/PropertyModel$WritableBooleanPropertyKey;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modelutil/PropertyModel;->get(Lorg/chromium/ui/modelutil/PropertyModel$ReadableBooleanPropertyKey;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
