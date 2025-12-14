.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Landroid/content/Context;Z)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;->toActivity(Landroid/content/Context;)Lm/n;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    new-instance p1, LZ3/x;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;-><init>()V

    invoke-direct {p1, p0, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageSecretViewModelImpl;

    invoke-virtual {p1, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0

    :cond_0
    new-instance p1, LZ3/x;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;-><init>()V

    invoke-direct {p1, p0, v0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-virtual {p1, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0
.end method
