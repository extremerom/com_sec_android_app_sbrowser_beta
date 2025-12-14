.class public final Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;,
        Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u00002\u00020\u0001:\u0002 !B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J+\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\r2\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0003R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001a8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\""
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ldb/r;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "onDestroyView",
        "Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;",
        "binding",
        "Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;",
        "adapter",
        "Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;",
        "threatDescriptorDao$delegate",
        "Ldb/f;",
        "getThreatDescriptorDao",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;",
        "threatDescriptorDao",
        "RecyclerViewAdapter",
        "RecyclerViewHolder",
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
.field private adapter:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final threatDescriptorDao$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/p;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/p;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->threatDescriptorDao$delegate:Ldb/f;

    return-void
.end method

.method public static final synthetic access$getAdapter$p(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->adapter:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    return-object p0
.end method

.method public static final synthetic access$getThreatDescriptorDao(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->getThreatDescriptorDao()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    move-result-object p0

    return-object p0
.end method

.method private final getThreatDescriptorDao()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->threatDescriptorDao$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->threatDescriptorDao_delegate$lambda$0(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    move-result-object p0

    return-object p0
.end method

.method private static final threatDescriptorDao_delegate$lambda$0(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "getApplicationContext(...)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase$Companion;->getDatabase(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingDatabase;->saferBrowsingDatabaseDao()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/SaferBrowsingDatabaseDao;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p1

    if-eqz p1, :cond_0

    const v0, 0x7f140da0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/J0;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/E;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p3}, Landroidx/recyclerview/widget/E;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/F0;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;

    invoke-direct {p2, p0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onCreateView$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;)V

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter$AdapterListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->adapter:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->adapter:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/u0;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->binding:Lcom/sec/android/app/sbrowser/databinding/SaferBrowsingDebugDatabaseLayoutBinding;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;->adapter:Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$RecyclerViewAdapter;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p1

    const-string p2, "getViewLifecycleOwner(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/lifecycle/l0;->i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onViewCreated$1;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment$onViewCreated$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/SaferBrowsingDebugDatabaseFragment;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v0, v0, p2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
