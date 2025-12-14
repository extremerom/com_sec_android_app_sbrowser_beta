.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback;
.super Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;
    }
.end annotation


# instance fields
.field mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;)V
    .locals 0
    .param p2    # Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderCallback;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabReorderListener;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_list/TabListReorderCallback$Delegate;->isMultiSpan()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    :goto_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/recyclerview/widget/U;->makeMovementFlags(II)I

    move-result p0

    return p0
.end method
