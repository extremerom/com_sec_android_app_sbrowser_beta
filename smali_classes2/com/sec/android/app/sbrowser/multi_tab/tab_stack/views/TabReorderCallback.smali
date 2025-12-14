.class public abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;
.super Landroidx/recyclerview/widget/U;
.source "SourceFile"


# instance fields
.field private mActionState:I

.field private final mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;)V
    .locals 1

    invoke-direct {p0}, Landroidx/recyclerview/widget/U;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mActionState:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    return-void
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    if-lez p3, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->getBottomPaddingHeight()I

    move-result p0

    sub-int/2addr p3, p0

    const/4 p0, 0x0

    invoke-static {p3, p0}, Ljava/lang/Math;->max(II)I

    move-result p3

    :cond_0
    int-to-float p0, p3

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    mul-int/lit8 p0, p0, 0xa

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
    .locals 8
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

    const/4 v0, 0x0

    cmpg-float v0, p5, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mActionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v5, p5

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-interface {v0, p2, p3, p5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->getAdjustedY(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;F)F

    move-result p5

    goto :goto_0

    :goto_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    move v7, p7

    invoke-super/range {v0 .. v7}, Landroidx/recyclerview/widget/U;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z
    .locals 6
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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z

    move-result p0

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/U;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mListener:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;->onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V

    iput p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;->mActionState:I

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
