.class public Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModelProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method
