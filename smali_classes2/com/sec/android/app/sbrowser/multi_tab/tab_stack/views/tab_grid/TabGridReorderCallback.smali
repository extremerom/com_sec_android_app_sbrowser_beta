.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_grid/TabGridReorderCallback;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;)V

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

    const/16 p0, 0xf

    const/4 p1, 0x2

    invoke-static {p1, p0}, Landroidx/recyclerview/widget/U;->makeFlag(II)I

    move-result p0

    return p0
.end method
