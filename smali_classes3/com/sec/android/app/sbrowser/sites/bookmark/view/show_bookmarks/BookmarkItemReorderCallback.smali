.class public Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;
.super Landroidx/recyclerview/widget/U;
.source "SourceFile"


# instance fields
.field private final mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;)V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/U;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z

    move-result p0

    return p0
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/U;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;)V

    iget-object p0, p2, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const p1, 0x7f0b0414

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

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

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/U;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method

.method public interpolateOutOfBoundsScroll(Landroidx/recyclerview/widget/RecyclerView;IIIJ)I
    .locals 0

    int-to-float p0, p3

    invoke-static {p0}, Ljava/lang/Math;->signum(F)F

    move-result p0

    float-to-int p0, p0

    mul-int/lit8 p0, p0, 0xf

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
    .locals 9

    move-object v0, p0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;FFIZ)F

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    move/from16 v7, p7

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v4

    invoke-virtual {p3}, Landroidx/recyclerview/widget/h1;->getAdapterPosition()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;Landroidx/recyclerview/widget/h1;II)Z

    move-result p0

    return p0
.end method

.method public onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V

    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/U;->onMoved(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/h1;ILandroidx/recyclerview/widget/h1;III)V

    return-void
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkItemReorderCallback;->mAdapter:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarkReorderInterface;->onSelectedChanged(Landroidx/recyclerview/widget/h1;I)V

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
