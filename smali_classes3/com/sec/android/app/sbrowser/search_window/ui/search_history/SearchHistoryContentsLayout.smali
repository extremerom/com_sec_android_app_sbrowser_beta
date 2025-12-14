.class public final Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/J;
.implements Landroidx/lifecycle/I;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001d\u0008\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u000f\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0011J\u000f\u0010\u0014\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0011J\u000f\u0010\u0015\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0011J\u000f\u0010\u0016\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0011R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008!\u0010\u001c\u001a\u0004\u0008\"\u0010#R\u0018\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0018\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u0010.\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0014\u00105\u001a\u0002028VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;",
        "Landroid/widget/FrameLayout;",
        "Landroidx/lifecycle/J;",
        "Landroidx/lifecycle/I;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "",
        "isEmpty",
        "Ldb/r;",
        "updateContainerLayout",
        "(Z)V",
        "setItemsViewVisibility",
        "updateLayout",
        "()V",
        "updateHideButton",
        "updateBackgroundColor",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onFinishInflate",
        "Landroidx/lifecycle/L;",
        "lifecycleRegistry",
        "Landroidx/lifecycle/L;",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel$delegate",
        "Ldb/f;",
        "getSearchHistoryViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;",
        "searchHistoryViewModel",
        "Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel$delegate",
        "getSearchWindowViewModel",
        "()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;",
        "searchWindowViewModel",
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;",
        "searchHistoryAdapter",
        "Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;",
        "Landroidx/recyclerview/widget/J0;",
        "searchHistoryLayoutManager",
        "Landroidx/recyclerview/widget/J0;",
        "Landroid/view/View;",
        "historyNoItemView",
        "Landroid/view/View;",
        "historyItemView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "historyRecyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Landroidx/lifecycle/D;",
        "getLifecycle",
        "()Landroidx/lifecycle/D;",
        "lifecycle",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private historyItemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private historyNoItemView:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private historyRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lifecycleRegistry:Landroidx/lifecycle/L;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private searchHistoryAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private searchHistoryLayoutManager:Landroidx/recyclerview/widget/J0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final searchHistoryViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final searchWindowViewModel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroidx/lifecycle/L;

    invoke-direct {p2, p0}, Landroidx/lifecycle/L;-><init>(Landroidx/lifecycle/J;)V

    sget-object v0, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->lifecycleRegistry:Landroidx/lifecycle/L;

    new-instance p2, LJ2/L;

    const/16 v0, 0xc

    invoke-direct {p2, v0, p0}, LJ2/L;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryViewModel$delegate:Ldb/f;

    new-instance p2, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/c;-><init>(Landroid/content/Context;I)V

    invoke-static {p2}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchWindowViewModel$delegate:Ldb/f;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->onAttachedToWindow$lambda$3(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->updateHideButton$lambda$11$lambda$10(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->onFinishInflate$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic g(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchWindowViewModel_delegate$lambda$2(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    return-object p0
.end method

.method private final getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private final getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchWindowViewModel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private static final onAttachedToWindow$lambda$3(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Ljava/util/List;)Ldb/r;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/h0;->submitList(Ljava/util/List;)V

    check-cast p1, Ljava/util/Collection;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->setItemsViewVisibility(Z)V

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :cond_3
    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->updateContainerLayout(Z)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final onFinishInflate$lambda$6$lambda$5(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->deleteAll()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->isFromWidget()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p1, "751"

    goto :goto_0

    :cond_0
    const-string p1, "201"

    :goto_0
    if-eqz p0, :cond_1

    const-string p0, "7514"

    goto :goto_1

    :cond_1
    const-string p0, "8352"

    :goto_1
    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final searchHistoryViewModel_delegate$lambda$1(Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;
    .locals 1

    new-instance v0, LZ3/x;

    invoke-static {p0}, Landroidx/lifecycle/l0;->h(Landroid/view/View;)Landroidx/lifecycle/y0;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    return-object p0
.end method

.method private static final searchWindowViewModel_delegate$lambda$2(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;
    .locals 2

    new-instance v0, LZ3/x;

    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.ViewModelStoreOwner"

    invoke-static {p0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/lifecycle/y0;

    invoke-direct {v0, p0}, LZ3/x;-><init>(Landroidx/lifecycle/y0;)V

    const-class p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    invoke-virtual {v0, p0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    return-object p0
.end method

.method private final setItemsViewVisibility(Z)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyItemView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyNoItemView:Landroid/view/View;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private final updateBackgroundColor()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->getSearchWindowViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchWindowViewModel;->isDarkTheme()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0604d3

    goto :goto_0

    :cond_0
    const p0, 0x7f0604c8

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_1
    return-void
.end method

.method private final updateContainerLayout(Z)V
    .locals 1

    const v0, 0x7f0b0a92

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const-string v0, "findViewById(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    :goto_0
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private final updateHideButton()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->isFromWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0b0a8f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0b0a94

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1405c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/artificial_intelligence/read_aloud/ui/f;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0a93

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080050

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0601bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private static final updateHideButton$lambda$11$lambda$10(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setSaveRecentSearches(Z)V

    return-void
.end method

.method private final updateLayout()V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->updateHideButton()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->updateBackgroundColor()V

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/D;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->lifecycleRegistry:Landroidx/lifecycle/L;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->lifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v1, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->getSearchHistoryViewModel()Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/search_window/viewmodel/SearchHistoryViewModel;->getHistory()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, LC9/b;

    const/16 v2, 0xe

    invoke-direct {v1, v2, p0}, LC9/b;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout$sam$androidx_lifecycle_Observer$0;

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->lifecycleRegistry:Landroidx/lifecycle/L;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->g(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 5

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    const v0, 0x7f0b0a98

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyNoItemView:Landroid/view/View;

    const v0, 0x7f0b0a97

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyItemView:Landroid/view/View;

    const v0, 0x7f0b0a9a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f140bd2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f14058d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout$onFinishInflate$1$1;

    invoke-direct {v2, v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout$onFinishInflate$1$1;-><init>(Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v0, 0x7f0b0a91

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1402f1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1402b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/save_image/d;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/save_image/d;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0a90

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Lcom/sec/android/app/sbrowser/common/widget/AutoScaleTextView;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0601bc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;

    new-instance v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setFlexWrap(I)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setAlignItems(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->setJustifyContent(I)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryLayoutManager:Landroidx/recyclerview/widget/J0;

    const v0, 0x7f0b0a99

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryAdapter:Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->searchHistoryLayoutManager:Landroidx/recyclerview/widget/J0;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetPenSelectionEnabled(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/ui/search_history/SearchHistoryContentsLayout;->historyRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method
