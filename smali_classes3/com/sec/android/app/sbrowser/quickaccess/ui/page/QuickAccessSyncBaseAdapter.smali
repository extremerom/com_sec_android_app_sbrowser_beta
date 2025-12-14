.class public abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;
.super Landroidx/recyclerview/widget/u0;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/u0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010!\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0008\'\u0018\u0000 <2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001<B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001d\u0010\t\u001a\u00020\u00082\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001f\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\'\u0010\u0017\u001a\u00020\u00082\u000c\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018JE\u0010\u001d\u001a\u00020\u00082\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u001a\u001a\u00020\u000b2\u0010\u0008\u0002\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u001bH\u0004\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0015\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u001f\u0010#\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008#\u0010$J-\u0010#\u001a\u00020\u00082\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u000b2\u000c\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00100%H\u0016\u00a2\u0006\u0004\u0008#\u0010\'J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008(\u0010)R\u001b\u0010/\u001a\u00020*8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.R(\u00100\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00080\u00101\u001a\u0004\u00082\u0010\"\"\u0004\u00083\u0010\nR(\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00084\u00101\u001a\u0004\u00085\u0010\"\"\u0004\u00086\u0010\nR\"\u00107\u001a\u00020\u000b8\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u00087\u00108\u001a\u0004\u00089\u0010 \"\u0004\u0008:\u0010;\u00a8\u0006="
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;",
        "Landroidx/recyclerview/widget/u0;",
        "Landroidx/recyclerview/widget/h1;",
        "<init>",
        "()V",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
        "newList",
        "Ldb/r;",
        "updateList",
        "(Ljava/util/List;)V",
        "",
        "position",
        "getItem",
        "(I)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
        "holder",
        "",
        "payload",
        "bindViewHolder",
        "(Landroidx/recyclerview/widget/h1;Ljava/lang/Object;)V",
        "latestList",
        "",
        "shouldCopy",
        "submitList",
        "(Ljava/util/List;Z)V",
        "oldList",
        "currentUpdateCount",
        "Lkotlin/Function0;",
        "updateCallback",
        "dispatchListUpdates",
        "(Ljava/util/List;Ljava/util/List;ILsb/a;)V",
        "getItemCount",
        "()I",
        "getItems",
        "()Ljava/util/List;",
        "onBindViewHolder",
        "(Landroidx/recyclerview/widget/h1;I)V",
        "",
        "payloads",
        "(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V",
        "getItemViewType",
        "(I)I",
        "Landroidx/recyclerview/widget/c;",
        "adapterCallback$delegate",
        "Ldb/f;",
        "getAdapterCallback",
        "()Landroidx/recyclerview/widget/c;",
        "adapterCallback",
        "currentList",
        "Ljava/util/List;",
        "getCurrentList",
        "setCurrentList",
        "currentReadOnlyList",
        "getCurrentReadOnlyList",
        "setCurrentReadOnlyList",
        "totalUpdateCount",
        "I",
        "getTotalUpdateCount",
        "setTotalUpdateCount",
        "(I)V",
        "Companion",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final adapterCallback$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private totalUpdateCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/recyclerview/widget/u0;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/I;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/I;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->adapterCallback$delegate:Ldb/f;

    sget-object v0, Lfb/v;->a:Lfb/v;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentReadOnlyList:Ljava/util/List;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->submitList$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final adapterCallback_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;)Landroidx/recyclerview/widget/c;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/c;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/c;-><init>(Landroidx/recyclerview/widget/u0;)V

    return-object v0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;)Landroidx/recyclerview/widget/c;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->adapterCallback_delegate$lambda$0(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;)Landroidx/recyclerview/widget/c;

    move-result-object p0

    return-object p0
.end method

.method private final bindViewHolder(Landroidx/recyclerview/widget/h1;Ljava/lang/Object;)V
    .locals 0

    const-string p0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.quickaccess.ui.page.QuickAccessSyncViewHolder"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncViewHolder;

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncViewHolder;->bind(Ljava/lang/Object;)V

    return-void
.end method

.method private final getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;

    return-object p0
.end method

.method public static synthetic submitList$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->submitList(Ljava/util/List;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: submitList"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final submitList$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Ljava/util/List;)Ldb/r;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->updateList(Ljava/util/List;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final updateList(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    if-eqz v2, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    const/16 v10, 0x3f

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    move-result-object v1

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz v2, :cond_1

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    const/16 v9, 0x1f

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v10}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;ZZZZILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    move-result-object v1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz v2, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v9}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;ZZZILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentReadOnlyList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final dispatchListUpdates(Ljava/util/List;Ljava/util/List;ILsb/a;)V
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;I",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "oldList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LNc/N;->c:LWc/e;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p0

    move-object v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter$dispatchListUpdates$1;-><init>(Ljava/util/List;Ljava/util/List;ILcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;Lsb/a;Lib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v8, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final getAdapterCallback()Landroidx/recyclerview/widget/c;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->adapterCallback$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/c;

    return-object p0
.end method

.method public final getCurrentList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    return-object p0
.end method

.method public final getCurrentReadOnlyList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentReadOnlyList:Ljava/util/List;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;

    move-result-object p0

    instance-of p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    instance-of p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    instance-of p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :goto_0
    return p0

    :cond_2
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    return-object p0
.end method

.method public final getTotalUpdateCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->totalUpdateCount:I

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->bindViewHolder(Landroidx/recyclerview/widget/h1;Ljava/lang/Object;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/h1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/h1;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payloads"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->onBindViewHolder(Landroidx/recyclerview/widget/h1;ILjava/util/List;)V

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->bindViewHolder(Landroidx/recyclerview/widget/h1;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final setTotalUpdateCount(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->totalUpdateCount:I

    return-void
.end method

.method public submitList(Ljava/util/List;Z)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "latestList"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->totalUpdateCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->totalUpdateCount:I

    if-eqz p2, :cond_0

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->currentReadOnlyList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->updateList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getAdapterCallback()Landroidx/recyclerview/widget/c;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->updateList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->getAdapterCallback()Landroidx/recyclerview/widget/c;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Landroidx/recyclerview/widget/c;->b(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncBaseAdapter;->dispatchListUpdates(Ljava/util/List;Ljava/util/List;ILsb/a;)V

    :goto_0
    return-void
.end method
