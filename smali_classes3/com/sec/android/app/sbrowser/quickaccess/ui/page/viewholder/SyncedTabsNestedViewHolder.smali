.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;
.super Landroidx/recyclerview/widget/h1;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000C\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0008\u0004*\u0001\u001b\u0008\u0007\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\r\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\r\u0010\u0010\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0010\u0010\u000cR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\r8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0016\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;",
        "Landroidx/recyclerview/widget/h1;",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;",
        "viewBinding",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "listener",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V",
        "Ldb/r;",
        "updateSyncedTabHeaderTextColor",
        "()V",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "getRecyclerView",
        "()Landroidx/recyclerview/widget/RecyclerView;",
        "updateUI",
        "Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;",
        "innerAdapter",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;",
        "",
        "isScrollEnabled",
        "Z",
        "com/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1",
        "scrollDisabler",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1;",
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


# instance fields
.field private final innerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isScrollEnabled:Z

.field private final recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollDisabler:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/h1;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->syncedTabsNestedRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "syncedTabsNestedRecyclerview"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->innerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->isScrollEnabled:Z

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->scrollDisabler:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder$scrollDisabler$1;

    new-instance p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    const/4 p3, 0x0

    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/N0;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->syncedTabsHeaderTitle:Landroid/widget/TextView;

    const p2, 0x7f140562

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessFormatUtils;->setContentDescriptionForAccessibility(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method public static final synthetic access$isScrollEnabled$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->isScrollEnabled:Z

    return p0
.end method

.method private final updateSyncedTabHeaderTextColor()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->syncedTabsHeaderTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getIsSolidColorLightThemed()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f060895

    goto :goto_0

    :cond_0
    const p0, 0x7f060887

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method public final updateUI()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getEditMode()Landroidx/lifecycle/S;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;->shouldShowEditableView()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->viewBinding:Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabsNestedRecyclerViewBinding;->syncedTabsHeaderTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const v2, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->isScrollEnabled:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->innerAdapter:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabsNestedViewHolder;->updateSyncedTabHeaderTextColor()V

    return-void
.end method
