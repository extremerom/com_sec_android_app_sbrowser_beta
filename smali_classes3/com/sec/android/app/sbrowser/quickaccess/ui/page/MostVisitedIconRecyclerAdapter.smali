.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;
.super Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;
.implements Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/MultiSelectionDelegate;


# instance fields
.field private final mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

.field private final mContext:Landroid/content/Context;

.field private mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

.field private final mIsForPreview:Ljava/lang/Boolean;

.field private final mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->lambda$onBindViewHolder$0(I)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;ILandroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->lambda$onBindViewHolder$1(ILandroid/view/View;Z)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    return-object p0
.end method

.method private executeItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;->onItemSelected(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContextMenu:Lcom/sec/android/app/sbrowser/quickaccess/ui/contextmenu/QuickAccessContextMenu;

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->executeItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V

    return-void
.end method

.method private getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "Invalid position : "

    const-string v0, "MostVisitedIconRecyclerAdapter"

    invoke-static {p1, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move-result-object p0

    return-object p0
.end method

.method private handleKeyEvent(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessEditModeOwner;->canEnterEditMode(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    return v0

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->handleKeyEvent(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1(ILandroid/view/View;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/d;

    const/4 v0, 0x1

    invoke-direct {p3, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/d;-><init>(IILjava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateItems(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/MostVisitedIconItemDiffCallback;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/MostVisitedIconItemDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/x;)Landroidx/recyclerview/widget/z;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    return-void
.end method


# virtual methods
.method public canDrag(Landroidx/recyclerview/widget/h1;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public deleteItems(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->deleteMostVisitedItems(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    const-string v1, "7067"

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dragEnd(Landroidx/recyclerview/widget/h1;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->ONE_TIME_PROGRESSING:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    return-void
.end method

.method public dragStart(Landroidx/recyclerview/widget/h1;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->getEditMode()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NONE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemId(I)J
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p0, 0x7f0e04d8

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mIsForPreview:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Z)V

    iget-object p1, p1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/e;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V

    return-void

    :cond_0
    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    invoke-virtual {p1, p0, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;->bind(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public onCheckedMostVisitedListChanged(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "uncheck"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "check"

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 13
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v1, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemNewBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v11, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mListener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    iget-object v12, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mAdapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;

    move-object v7, p2

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/MostvisitedIconViewItemBinding;Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AdapterDelegate;)V

    return-object p2
.end method

.method public onMostVisitedListUpdated(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->updateItems(Ljava/util/List;)V

    return-void
.end method

.method public onMultiSelected(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsMostVisitedIconViewHolder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->isChecked()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->setChecked(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->addCheckedItem(Lcom/sec/android/app/sbrowser/quickaccess/domain/MostVisitedIconItem;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->NORMAL:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/NewMostVisitedIconViewHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->shiftScroll(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/h1;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/MostVisitedIconViewHolder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/AbsIconViewHolder;->shiftScroll(Landroid/view/View;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/BaseRecyclerAdapter;->setEditMode(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/MostVisitedIconRecyclerAdapter;->mItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, "editmode"

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method
