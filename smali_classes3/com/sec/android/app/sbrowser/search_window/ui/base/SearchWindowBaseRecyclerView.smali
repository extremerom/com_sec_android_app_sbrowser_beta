.class public abstract Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/I;


# instance fields
.field private final mLifecycleRegistry:Landroidx/lifecycle/L;

.field protected mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroidx/lifecycle/L;

    invoke-direct {p2, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModelProvider;->get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/D;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mLifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method
