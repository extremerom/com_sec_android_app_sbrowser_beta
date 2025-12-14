.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 _2\u00020\u0001:\u0001_B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J#\u0010\r\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ)\u0010\u0011\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000f2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001b\u0010\u0013\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001e\u001a\u00020\u001d2\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u000f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001aH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ?\u0010%\u001a\u00020\u000b2\u001c\u0010#\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0!\u0012\u0006\u0012\u0004\u0018\u00010\"0 2\u0010\u0008\u0002\u0010$\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0018\u0010\'\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008\'\u0010(J\u001e\u0010)\u001a\u00020\u000b2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u000fH\u0082@\u00a2\u0006\u0004\u0008)\u0010*J\u0010\u0010+\u001a\u00020\u000bH\u0082@\u00a2\u0006\u0004\u0008+\u0010,R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010-R\u001b\u00103\u001a\u00020.8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102R\'\u00108\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001a0\u000f048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00085\u00100\u001a\u0004\u00086\u00107R#\u0010;\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u00089\u00100\u001a\u0004\u0008:\u00107R\'\u0010A\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u00080<8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008>\u00100\u001a\u0004\u0008?\u0010@R-\u0010H\u001a\u000e\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020C0B8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008D\u00100\u0012\u0004\u0008G\u0010\u0016\u001a\u0004\u0008E\u0010FR!\u0010N\u001a\u0008\u0012\u0004\u0012\u00020J0I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008K\u00100\u001a\u0004\u0008L\u0010MR!\u0010R\u001a\u0008\u0012\u0004\u0012\u00020O0I8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008P\u00100\u001a\u0004\u0008Q\u0010MR)\u0010T\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000f0S8\u0006\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u0012\u0004\u0008X\u0010\u0016\u001a\u0004\u0008V\u0010WR\u0017\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020J0Y8F\u00a2\u0006\u0006\u001a\u0004\u0008Z\u0010[R\u0017\u0010^\u001a\u0008\u0012\u0004\u0012\u00020O0Y8F\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010[\u00a8\u0006`"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/app/Application;LNc/x;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
        "clickedViewHolderItem",
        "Lkotlin/Function0;",
        "Ldb/r;",
        "adapterCallback",
        "viewHolderItemClicked",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lsb/a;)V",
        "",
        "clickedViewHolderItems",
        "viewHolderItemsSelected",
        "(Ljava/util/List;Lsb/a;)V",
        "controlBarCheckboxClicked",
        "(Lsb/a;)V",
        "deleteButtonClicked",
        "()V",
        "",
        "getCheckedItemsCount",
        "()I",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
        "itemsDevicesInfo",
        "oldDbItemsDeviceInfoOwn",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;",
        "generateAuxiliaryData",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;",
        "Lkotlin/Function1;",
        "Lib/c;",
        "",
        "handleClick",
        "callback",
        "executeOnClick",
        "(Lsb/k;Lsb/a;)V",
        "handleViewHolderItemClick",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)Ljava/lang/Object;",
        "handleViewHolderItemsSelected",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "handleControlBarCheckboxClick",
        "(Lib/c;)Ljava/lang/Object;",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "repository$delegate",
        "Ldb/f;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "repository",
        "LQc/h;",
        "itemDeviceNamesWithDeviceIdNotOwn$delegate",
        "getItemDeviceNamesWithDeviceIdNotOwn",
        "()LQc/h;",
        "itemDeviceNamesWithDeviceIdNotOwn",
        "oldDbItemDeviceNameWithDeviceIdOwn$delegate",
        "getOldDbItemDeviceNameWithDeviceIdOwn",
        "oldDbItemDeviceNameWithDeviceIdOwn",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "deviceIdToViewHolderItemMap$delegate",
        "getDeviceIdToViewHolderItemMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "deviceIdToViewHolderItemMap",
        "Ljava/util/concurrent/ConcurrentHashMap$KeySetView;",
        "",
        "checkedItems$delegate",
        "getCheckedItems",
        "()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;",
        "getCheckedItems$annotations",
        "checkedItems",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;",
        "_syncMainUIEventLiveData$delegate",
        "get_syncMainUIEventLiveData",
        "()Landroidx/lifecycle/X;",
        "_syncMainUIEventLiveData",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;",
        "_quickAccessSyncRemoveDevicesFragmentItem$delegate",
        "get_quickAccessSyncRemoveDevicesFragmentItem",
        "_quickAccessSyncRemoveDevicesFragmentItem",
        "LQc/i0;",
        "quickAccessSyncDeviceItemList",
        "LQc/i0;",
        "getQuickAccessSyncDeviceItemList",
        "()LQc/i0;",
        "getQuickAccessSyncDeviceItemList$annotations",
        "Landroidx/lifecycle/S;",
        "getSyncMainUIEventLiveData",
        "()Landroidx/lifecycle/S;",
        "syncMainUIEventLiveData",
        "getQuickAccessSyncRemoveDevicesFragmentItem",
        "quickAccessSyncRemoveDevicesFragmentItem",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _quickAccessSyncRemoveDevicesFragmentItem$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _syncMainUIEventLiveData$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkedItems$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceIdToViewHolderItemMap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemDeviceNamesWithDeviceIdNotOwn$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldDbItemDeviceNameWithDeviceIdOwn$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final quickAccessSyncDeviceItemList:LQc/i0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LNc/x;)V
    .locals 11
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x4

    const-string v1, "application"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "coroutineDispatcher"

    invoke-static {p2, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->repository$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/r;

    invoke-direct {p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/r;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->itemDeviceNamesWithDeviceIdNotOwn$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/r;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/r;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->oldDbItemDeviceNameWithDeviceIdOwn$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/4 v3, 0x3

    invoke-direct {p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->deviceIdToViewHolderItemMap$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->checkedItems$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/4 v3, 0x5

    invoke-direct {p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_syncMainUIEventLiveData$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/4 v3, 0x6

    invoke-direct {p1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_quickAccessSyncRemoveDevicesFragmentItem$delegate:Ldb/f;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getItemDeviceNamesWithDeviceIdNotOwn()LQc/h;

    move-result-object p1

    invoke-static {p1}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getOldDbItemDeviceNameWithDeviceIdOwn()LQc/h;

    move-result-object v3

    invoke-static {v3}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$quickAccessSyncDeviceItemList$2;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$quickAccessSyncDeviceItemList$2;

    new-instance v7, LL2/l;

    invoke-direct {v7, p1, v3, v4, v1}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$quickAccessSyncDeviceItemList$3;

    const/4 v3, 0x0

    invoke-direct {p1, p0, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$quickAccessSyncDeviceItemList$3;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

    sget v4, LQc/J;->a:I

    new-instance v6, LQc/I;

    invoke-direct {v6, p1, v3, v2}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance p1, LRc/n;

    sget-object v8, Lib/i;->a:Lib/i;

    sget-object v10, LPc/a;->SUSPEND:LPc/a;

    const/4 v9, -0x2

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    new-instance v2, LK9/f;

    const/16 v4, 0x12

    invoke-direct {v2, v4}, LK9/f;-><init>(I)V

    new-instance v4, LQc/s;

    invoke-direct {v4, v2, p1, v3}, LQc/s;-><init>(Lsb/k;LRc/n;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, v0, v4}, LQc/k;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p2}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p1, p2}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$special$$inlined$map$1;

    invoke-direct {p2, p1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$special$$inlined$map$1;-><init>(LQc/h;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p1

    const/4 v0, 0x2

    const-wide/16 v2, 0x1388

    invoke-static {v0, v2, v3}, LQc/q0;->a(IJ)LQc/x0;

    move-result-object v5

    invoke-static {p2}, LQc/n0;->j(LQc/h;)LZ4/i;

    move-result-object p2

    iget-object v0, p2, LZ4/i;->c:Ljava/lang/Object;

    check-cast v0, LPc/a;

    iget v2, p2, LZ4/i;->a:I

    invoke-static {v1, v2, v0}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object v0

    sget-object v8, LQc/n0;->a:LQ6/i;

    iget-object v1, p2, LZ4/i;->b:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, LQc/h;

    sget-object v1, LQc/q0;->a:LQc/s0;

    invoke-virtual {v5, v1}, LQc/x0;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LNc/D;->DEFAULT:LNc/D;

    goto :goto_0

    :cond_0
    sget-object v1, LNc/D;->UNDISPATCHED:LNc/D;

    :goto_0
    new-instance v2, LQc/V;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v7, v0

    invoke-direct/range {v4 .. v9}, LQc/V;-><init>(LQc/r0;LQc/h;LQc/e0;Ljava/lang/Object;Lib/c;)V

    iget-object p2, p2, LZ4/i;->d:Ljava/lang/Object;

    check-cast p2, Lib/h;

    invoke-static {p1, p2, v1, v2}, LNc/E;->x(LNc/B;Lib/h;LNc/D;Lsb/n;)LNc/C0;

    new-instance p1, LQc/g0;

    invoke-direct {p1, v0}, LQc/g0;-><init>(LQc/e0;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->quickAccessSyncDeviceItemList:LQc/i0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;-><init>(Landroid/app/Application;LNc/x;)V

    return-void
.end method

.method private static final _quickAccessSyncRemoveDevicesFragmentItem_delegate$lambda$6()Landroidx/lifecycle/X;
    .locals 1

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    return-object v0
.end method

.method private static final _syncMainUIEventLiveData_delegate$lambda$5()Landroidx/lifecycle/X;
    .locals 1

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    return-object v0
.end method

.method public static final synthetic access$generateAuxiliaryData(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->generateAuxiliaryData(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdToViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getDeviceIdToViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_quickAccessSyncRemoveDevicesFragmentItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)Landroidx/lifecycle/X;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->get_quickAccessSyncRemoveDevicesFragmentItem()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleControlBarCheckboxClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->handleControlBarCheckboxClick(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->handleViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleViewHolderItemsSelected(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->handleViewHolderItemsSelected(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$quickAccessSyncDeviceItemList$lambda$7(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->quickAccessSyncDeviceItemList$lambda$7(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->repository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_quickAccessSyncRemoveDevicesFragmentItem_delegate$lambda$6()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method private static final checkedItems_delegate$lambda$4()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->checkedItems_delegate$lambda$4()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    return-object v0
.end method

.method private static final deviceIdToViewHolderItemMap_delegate$lambda$3()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->deviceIdToViewHolderItemMap_delegate$lambda$3()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private final executeOnClick(Lsb/k;Lsb/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$executeOnClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$executeOnClick$1;-><init>(Lsb/k;Lsb/a;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;)J
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->quickAccessSyncDeviceItemList$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic g()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_syncMainUIEventLiveData_delegate$lambda$5()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method private final generateAuxiliaryData(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;",
            ")",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;"
        }
    .end annotation

    move-object/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItems()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-static {v1}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    if-nez v0, :cond_0

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3, v0}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    new-instance v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;-><init>(IIILtb/f;)V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ne v6, v8, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v6, v0

    check-cast v6, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v10, v5

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v12, v10, 0x1

    if-ltz v10, :cond_5

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;

    new-instance v15, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/4 v14, 0x0

    const/16 v19, 0x7

    const/16 v20, 0x0

    move-object v13, v11

    move-object/from16 p0, v15

    move-object/from16 v15, v16

    move-wide/from16 v16, v17

    move/from16 v18, v19

    move-object/from16 v19, v20

    invoke-static/range {v13 .. v19}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;Ljava/lang/String;Ljava/lang/String;JILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;

    move-result-object v14

    if-nez v10, :cond_2

    move/from16 v16, v8

    goto :goto_2

    :cond_2
    move/from16 v16, v5

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v8

    if-ne v10, v13, :cond_3

    move/from16 v17, v8

    goto :goto_3

    :cond_3
    move/from16 v17, v5

    :goto_3
    const/16 v19, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x2

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;ZZZILtb/f;)V

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v13, v10}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->setChecked(Z)V

    invoke-virtual {v13}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;->isChecked()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->incrementCheckedItemCount()I

    :cond_4
    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v10, v12

    goto :goto_1

    :cond_5
    invoke-static {}, Lfb/o;->l()V

    throw v7

    :cond_6
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;

    invoke-direct {v0, v9, v4, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;Ljava/util/Set;)V

    return-object v0
.end method

.method public static synthetic getCheckedItems$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getDeviceIdToViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->deviceIdToViewHolderItemMap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final getItemDeviceNamesWithDeviceIdNotOwn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->itemDeviceNamesWithDeviceIdNotOwn$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method private final getOldDbItemDeviceNameWithDeviceIdOwn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->oldDbItemDeviceNameWithDeviceIdOwn$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->repository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    return-object p0
.end method

.method private final get_quickAccessSyncRemoveDevicesFragmentItem()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_quickAccessSyncRemoveDevicesFragmentItem$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/X;

    return-object p0
.end method

.method private final get_syncMainUIEventLiveData()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->_syncMainUIEventLiveData$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->itemDeviceNamesWithDeviceIdNotOwn_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private final handleControlBarCheckboxClick(Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleControlBarCheckboxClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

    invoke-static {v0, v1, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleViewHolderItemClick$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleViewHolderItemClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleViewHolderItemsSelected(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleViewHolderItemsSelected$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$handleViewHolderItemsSelected$2;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->oldDbItemDeviceNameWithDeviceIdOwn_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final itemDeviceNamesWithDeviceIdNotOwn_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getItemDeviceNamesAndDeviceIdsNotOwn()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final oldDbItemDeviceNameWithDeviceIdOwn_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getOldDbItemDeviceNameAndDeviceIdOwn()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final synthetic quickAccessSyncDeviceItemList$lambda$7(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDeviceInfo;Lib/c;)Ljava/lang/Object;
    .locals 0

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final quickAccessSyncDeviceItemList$lambda$8(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;)J
    .locals 2

    const-string v0, "<destruct>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModelItem;->component3()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesFragmentItem;->getTotalItemCount()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method private static final repository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2$Companion;Landroid/content/Context;LNc/x;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final controlBarCheckboxClicked(Lsb/a;)V
    .locals 2
    .param p1    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "adapterCallback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$controlBarCheckboxClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$controlBarCheckboxClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lib/c;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->executeOnClick(Lsb/k;Lsb/a;)V

    return-void
.end method

.method public final deleteButtonClicked()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItems()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v1

    invoke-static {v1}, Lfb/n;->k0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->deleteDevicesFromSync(Ljava/util/Set;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->get_syncMainUIEventLiveData()Landroidx/lifecycle/X;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItems()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    return-void
.end method

.method public final getCheckedItems()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap$KeySetView<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->checkedItems$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    return-object p0
.end method

.method public final getCheckedItemsCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->getCheckedItems()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap$KeySetView;->size()I

    move-result p0

    return p0
.end method

.method public final getQuickAccessSyncDeviceItemList()LQc/i0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/i0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->quickAccessSyncDeviceItemList:LQc/i0;

    return-object p0
.end method

.method public final getQuickAccessSyncRemoveDevicesFragmentItem()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->get_quickAccessSyncRemoveDevicesFragmentItem()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public final getSyncMainUIEventLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->get_syncMainUIEventLiveData()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public final viewHolderItemClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lsb/a;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "clickedViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterCallback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$viewHolderItemClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$viewHolderItemClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;Lib/c;)V

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->executeOnClick(Lsb/k;Lsb/a;)V

    return-void
.end method

.method public final viewHolderItemsSelected(Ljava/util/List;Lsb/a;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewHolderItem;",
            ">;",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string v0, "clickedViewHolderItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterCallback"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$viewHolderItemsSelected$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel$viewHolderItemsSelected$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;Ljava/util/List;Lib/c;)V

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncRemoveDevicesViewModel;->executeOnClick(Lsb/k;Lsb/a;)V

    return-void
.end method
