.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$Companion;,
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Y\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0008\u0006*\u0001*\u0008\u0007\u0018\u0000 -2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0002-.B\u001f\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001d\u0010\u0016\u001a\u00020\u00102\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0013H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u001f\u0010\u001b\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u001f\u0010\"\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\"\u0010#R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010$R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010%R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010&R\u001c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\u00140\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0014\u0010+\u001a\u00020*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,\u00a8\u0006/"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Landroidx/recyclerview/widget/h1;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "viewModel",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "listener",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V",
        "",
        "position",
        "",
        "isMoreButtonItem",
        "(I)Z",
        "Ldb/r;",
        "registerLiveDataObservers",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "newList",
        "updateList",
        "(Ljava/util/List;)V",
        "Landroid/view/ViewGroup;",
        "parent",
        "viewType",
        "onCreateViewHolder",
        "(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;",
        "getItemCount",
        "()I",
        "getItemViewType",
        "(I)I",
        "holder",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;",
        "",
        "syncedTabList",
        "Ljava/util/List;",
        "com/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1",
        "adapterDelegate",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;",
        "Companion",
        "SyncedTabAdapterDelegate",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final adapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private syncedTabList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;)V
    .locals 1
    .param p1    # Landroid/content/Context;
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

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->registerLiveDataObservers()V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->adapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->registerLiveDataObservers$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->listener:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;

    return-object p0
.end method

.method public static final synthetic access$getSyncedTabList$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getViewModel$p(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0
.end method

.method private final isMoreButtonItem(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getItemType()Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    move-result-object p0

    sget-object p1, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;->MORE_BUTTON:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private final registerLiveDataObservers()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getSyncedTabItems()Landroidx/lifecycle/S;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->context:Landroid/content/Context;

    const-string v2, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    invoke-static {v1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroidx/lifecycle/J;

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;

    const/4 v3, 0x3

    invoke-direct {v2, v3, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/i;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$sam$androidx_lifecycle_Observer$0;

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$sam$androidx_lifecycle_Observer$0;-><init>(Lsb/k;)V

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method private static final registerLiveDataObservers$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;Ljava/util/List;)Ldb/r;
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->updateList(Ljava/util/List;)V

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final updateList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "item size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SyncedTabItemAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/SyncedTabItemDiffCallback;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/SyncedTabItemDiffCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/x;)Landroidx/recyclerview/widget/z;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Landroidx/recyclerview/widget/c;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->isMoreButtonItem(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0e04a2

    return p0

    :cond_0
    const p0, 0x7f0e04a1

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->syncedTabList:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getOgImage()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getDominantColor()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainNameFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "getDomainNameFirstLetter(...)"

    invoke-static {v6, p0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;->bind(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;->update()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/h1;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0e04a2

    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-ne p2, v0, :cond_0

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabMoreItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabMoreLayoutBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object p2

    :cond_0
    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v2}, Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;

    move-result-object p1

    invoke-static {p1, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->adapterDelegate:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$adapterDelegate$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter;->viewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-direct {p2, p1, v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/viewholder/SyncedTabItemViewHolder;-><init>(Lcom/sec/android/app/sbrowser/databinding/MainviewSyncedTabItemViewBinding;Lcom/sec/android/app/sbrowser/quickaccess/ui/page/SyncedTabItemAdapter$SyncedTabAdapterDelegate;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;)V

    return-object p2
.end method
