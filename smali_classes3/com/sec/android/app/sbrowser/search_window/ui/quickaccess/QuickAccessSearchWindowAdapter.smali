.class public Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;,
        Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$ItemType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation


# instance fields
.field private mViewHolder:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;I)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->b(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->c(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;ILjava/util/List;)V
    .locals 1
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;
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
            "Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->onBindViewHolder(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;I)V

    return-void

    :cond_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "quick_access"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->b(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V

    goto :goto_0

    :cond_2
    const-string p3, "search_history"

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->c(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e05a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v0, LZ3/x;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Landroidx/lifecycle/y0;

    invoke-direct {v0, p2}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p2, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, p2}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    new-instance v1, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$1;-><init>(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    return-object v0
.end method

.method public requestFocusToBottomLayer()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter;->mViewHolder:Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;->a(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowAdapter$QuickAccessSearchWindowViewHolder;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
