.class public Lorg/chromium/ui/listmenu/BasicListMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/listmenu/ListMenu;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/listmenu/BasicListMenu$ListMenuItemType;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

.field private final mClickRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentView:Landroid/view/View;

.field private final mDelegate:Lorg/chromium/ui/listmenu/ListMenu$Delegate;

.field private final mListView:Landroid/widget/ListView;


# virtual methods
.method public addContentViewClickRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mClickRunnables:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public getMaxItemWidth()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    iget-object p0, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p0}, Lorg/chromium/ui/UiUtils;->computeListAdapterContentDimensions(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;)[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mDelegate:Lorg/chromium/ui/listmenu/ListMenu$Delegate;

    iget-object p2, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mAdapter:Lorg/chromium/ui/modelutil/ModelListAdapter;

    invoke-virtual {p2, p3}, Lorg/chromium/ui/modelutil/ModelListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;

    iget-object p2, p2, Lorg/chromium/ui/modelutil/MVCListAdapter$ListItem;->model:Lorg/chromium/ui/modelutil/PropertyModel;

    invoke-interface {p1, p2}, Lorg/chromium/ui/listmenu/ListMenu$Delegate;->onItemSelected(Lorg/chromium/ui/modelutil/PropertyModel;)V

    iget-object p0, p0, Lorg/chromium/ui/listmenu/BasicListMenu;->mClickRunnables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method
