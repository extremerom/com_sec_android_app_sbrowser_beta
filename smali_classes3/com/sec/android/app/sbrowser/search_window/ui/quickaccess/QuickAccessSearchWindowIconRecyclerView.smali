.class public Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;
.super Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static synthetic E(Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerView;->onQuickAccessListChanged(Ljava/util/List;)V

    return-void
.end method

.method private onQuickAccessListChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/u0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/quickaccess/QuickAccessSearchWindowIconRecyclerAdapter;->onQuickAccessListUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->getQuickAccessItems()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/q;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Landroidx/lifecycle/q;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->requestQuickAccessBackgroundInfo()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/base/SearchWindowBaseRecyclerView;->mViewModel:Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isSecretMode()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    :goto_1
    const-string p0, "201"

    const-string v2, "1106"

    invoke-static {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
