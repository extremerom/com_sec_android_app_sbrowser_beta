.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;
.super Landroidx/recyclerview/widget/U;
.source "SourceFile"


# instance fields
.field private mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

.field private mSelectedViewHolder:Landroidx/recyclerview/widget/h1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/U;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    invoke-interface {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->canDrag(Landroidx/recyclerview/widget/h1;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    move p0, p1

    :goto_0
    invoke-static {p0, p1}, Landroidx/recyclerview/widget/U;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLongPressDragEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;FFIZ)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/U;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;FFIZ)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object p2, p3, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    const/4 p2, 0x1

    aget p1, p1, p2

    iget-object p2, p3, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->requestScroll(II)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    invoke-interface {p1, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->canDrag(Landroidx/recyclerview/widget/h1;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->onItemMoved(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->dragStart(Landroidx/recyclerview/widget/h1;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mSelectedViewHolder:Landroidx/recyclerview/widget/h1;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mSelectedViewHolder:Landroidx/recyclerview/widget/h1;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;

    invoke-interface {p2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/IQuickAccessDragAndDropDelegate;->dragEnd(Landroidx/recyclerview/widget/h1;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/IQuickAccessItemTouchCallback;->mSelectedViewHolder:Landroidx/recyclerview/widget/h1;

    :cond_1
    :goto_0
    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
