.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ba\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u000f\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u0088\u00012\u00020\u0001:\u0002\u0088\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001b\u0010\u000f\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J3\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00182\u0006\u0010\u001a\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001b\u0010\u001e\u001a\u00020\n2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0018\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\r\u0010 \u001a\u00020\n\u00a2\u0006\u0004\u0008 \u0010!J\r\u0010\"\u001a\u00020\n\u00a2\u0006\u0004\u0008\"\u0010!J\r\u0010#\u001a\u00020\n\u00a2\u0006\u0004\u0008#\u0010!J\r\u0010$\u001a\u00020\n\u00a2\u0006\u0004\u0008$\u0010!J\r\u0010%\u001a\u00020\n\u00a2\u0006\u0004\u0008%\u0010!J\r\u0010&\u001a\u00020\n\u00a2\u0006\u0004\u0008&\u0010!J\u000f\u0010\'\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\'\u0010!JS\u0010/\u001a\u00020.2\u001e\u0010+\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\r0(0\r2\u0006\u0010,\u001a\u00020\u00162\u001a\u0010-\u001a\u0016\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\r\u0018\u00010(H\u0002\u00a2\u0006\u0004\u0008/\u00100JO\u00107\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00028\u000206\"\u0004\u0008\u0000\u00101\"\u0004\u0008\u0001\u00102\"\u0004\u0008\u0002\u001032\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010(2\u0006\u00105\u001a\u00028\u0002H\u0002\u00a2\u0006\u0004\u00087\u00108J?\u0010>\u001a\u00020\n2\u001c\u0010<\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0:\u0012\u0006\u0012\u0004\u0018\u00010;092\u0010\u0008\u0002\u0010=\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0018H\u0002\u00a2\u0006\u0004\u0008>\u0010?J\u0018\u0010@\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\u0008H\u0082@\u00a2\u0006\u0004\u0008@\u0010AJ\u001e\u0010B\u001a\u00020\n2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00080\rH\u0082@\u00a2\u0006\u0004\u0008B\u0010CJ\u0018\u0010D\u001a\u00020\n2\u0006\u0010\u0012\u001a\u00020\u0011H\u0082@\u00a2\u0006\u0004\u0008D\u0010EJ(\u0010F\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u001a\u001a\u00020\u0016H\u0082@\u00a2\u0006\u0004\u0008F\u0010GJ\u0010\u0010H\u001a\u00020\nH\u0082@\u00a2\u0006\u0004\u0008H\u0010IJ1\u0010N\u001a\u00020\n\"\u0004\u0008\u0000\u0010J*\u0008\u0012\u0004\u0012\u00028\u00000K2\u0006\u0010L\u001a\u00020\u00162\u0008\u0008\u0002\u0010M\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008N\u0010OR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010PR\u001b\u0010V\u001a\u00020Q8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008R\u0010S\u001a\u0004\u0008T\u0010UR\'\u0010\\\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020X0K0W8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010S\u001a\u0004\u0008Z\u0010[R9\u0010a\u001a \u0012\u001c\u0012\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\r0(0\r0]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008^\u0010S\u001a\u0004\u0008_\u0010`R!\u0010d\u001a\u0008\u0012\u0004\u0012\u00020\u00160]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008b\u0010S\u001a\u0004\u0008c\u0010`R5\u0010g\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020*0\r\u0018\u00010(0]8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008e\u0010S\u001a\u0004\u0008f\u0010`R\'\u0010m\u001a\u000e\u0012\u0004\u0012\u00020i\u0012\u0004\u0012\u00020\u00110h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008j\u0010S\u001a\u0004\u0008k\u0010lR-\u0010p\u001a\u0014\u0012\u0004\u0012\u00020i\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\r0h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008n\u0010S\u001a\u0004\u0008o\u0010lR-\u0010s\u001a\u0014\u0012\u0004\u0012\u00020i\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\r0h8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008q\u0010S\u001a\u0004\u0008r\u0010lR-\u0010w\u001a\u000e\u0012\u0004\u0012\u00020i\u0012\u0004\u0012\u00020\u00080h8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008t\u0010S\u0012\u0004\u0008v\u0010!\u001a\u0004\u0008u\u0010lR!\u0010{\u001a\u0008\u0012\u0004\u0012\u00020x0W8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008y\u0010S\u001a\u0004\u0008z\u0010[R!\u0010\u007f\u001a\u0008\u0012\u0004\u0012\u00020|0W8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008}\u0010S\u001a\u0004\u0008~\u0010[R!\u0010\u0083\u0001\u001a\u000f\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020X0K0\u0080\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001R\u001b\u0010\u0085\u0001\u001a\t\u0012\u0004\u0012\u00020x0\u0080\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0084\u0001\u0010\u0082\u0001R\u001b\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020|0\u0080\u00018F\u00a2\u0006\u0008\u001a\u0006\u0008\u0086\u0001\u0010\u0082\u0001\u00a8\u0006\u0089\u0001"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;",
        "Landroidx/lifecycle/a;",
        "Landroid/app/Application;",
        "application",
        "LNc/x;",
        "coroutineDispatcher",
        "<init>",
        "(Landroid/app/Application;LNc/x;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
        "clickedItemViewHolderItem",
        "Ldb/r;",
        "itemViewHolderItemClicked",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)V",
        "",
        "clickedItemViewHolderItems",
        "itemViewHolderItemsSelected",
        "(Ljava/util/List;)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
        "clickedHeaderViewHolderItem",
        "headerViewHolderCheckboxClicked",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)V",
        "headerViewHolderItem",
        "",
        "headerPosition",
        "Lkotlin/Function0;",
        "headerCallback",
        "itemListVisibility",
        "setGroupItemListVisibility",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)V",
        "controlBarCallback",
        "controlBarCheckboxClicked",
        "(Lsb/a;)V",
        "addButtonClicked",
        "()V",
        "replaceButtonClicked",
        "turnOnSyncButtonClicked",
        "refreshButtonClicked",
        "triggerFragmentItemObserver",
        "cancelButtonClicked",
        "setupQuickAccessSyncDeviceList",
        "Ldb/j;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;",
        "itemsGroupByDeviceId",
        "itemCountInDevice",
        "oldDbItemsInDevice",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;",
        "generateAuxiliaryData",
        "(Ljava/util/List;ILdb/j;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;",
        "T1",
        "T2",
        "T3",
        "ab",
        "c",
        "Ldb/p;",
        "generateTriple",
        "(Ldb/j;Ljava/lang/Object;)Ldb/p;",
        "Lkotlin/Function1;",
        "Lib/c;",
        "",
        "handleClick",
        "callback",
        "executeOnClick",
        "(Lsb/k;Lsb/a;)V",
        "handleItemViewHolderItemClick",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;",
        "handleItemViewHolderItemsSelected",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "handleHeaderViewHolderCheckboxClick",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lib/c;)Ljava/lang/Object;",
        "handleHeaderViewHolderIndicatorClick",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;IILib/c;)Ljava/lang/Object;",
        "handleControlBarCheckboxClick",
        "(Lib/c;)Ljava/lang/Object;",
        "T",
        "",
        "fromIndex",
        "elementCount",
        "removeAll",
        "(Ljava/util/List;II)V",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "repository$delegate",
        "Ldb/f;",
        "getRepository",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;",
        "repository",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewHolderItem;",
        "_quickAccessSyncCombinedList$delegate",
        "get_quickAccessSyncCombinedList",
        "()Landroidx/lifecycle/X;",
        "_quickAccessSyncCombinedList",
        "LQc/h;",
        "itemsGroupByDeviceIdNotOwn$delegate",
        "getItemsGroupByDeviceIdNotOwn",
        "()LQc/h;",
        "itemsGroupByDeviceIdNotOwn",
        "itemCountByDeviceIdOwn$delegate",
        "getItemCountByDeviceIdOwn",
        "itemCountByDeviceIdOwn",
        "oldDbItemsByDeviceOwn$delegate",
        "getOldDbItemsByDeviceOwn",
        "oldDbItemsByDeviceOwn",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "",
        "deviceIdToHeaderViewHolderItemMap$delegate",
        "getDeviceIdToHeaderViewHolderItemMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "deviceIdToHeaderViewHolderItemMap",
        "urlToItemViewHolderItemMap$delegate",
        "getUrlToItemViewHolderItemMap",
        "urlToItemViewHolderItemMap",
        "deviceIdToItemViewHolderItemsMap$delegate",
        "getDeviceIdToItemViewHolderItemsMap",
        "deviceIdToItemViewHolderItemsMap",
        "checkedItemMap$delegate",
        "getCheckedItemMap",
        "getCheckedItemMap$annotations",
        "checkedItemMap",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;",
        "_syncMainUIEventLiveData$delegate",
        "get_syncMainUIEventLiveData",
        "_syncMainUIEventLiveData",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;",
        "_quickAccessSyncFragmentItem$delegate",
        "get_quickAccessSyncFragmentItem",
        "_quickAccessSyncFragmentItem",
        "Landroidx/lifecycle/S;",
        "getQuickAccessSyncCombinedList",
        "()Landroidx/lifecycle/S;",
        "quickAccessSyncCombinedList",
        "getSyncMainUIEventLiveData",
        "syncMainUIEventLiveData",
        "getQuickAccessSyncFragmentItem",
        "quickAccessSyncFragmentItem",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _quickAccessSyncCombinedList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _quickAccessSyncFragmentItem$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _syncMainUIEventLiveData$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final checkedItemMap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coroutineDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceIdToHeaderViewHolderItemMap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceIdToItemViewHolderItemsMap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemCountByDeviceIdOwn$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final itemsGroupByDeviceIdNotOwn$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oldDbItemsByDeviceOwn$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final repository$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final urlToItemViewHolderItemMap$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LNc/x;)V
    .locals 1
    .param p1    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "application"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance p2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/q;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->repository$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncCombinedList$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemsGroupByDeviceIdNotOwn$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemCountByDeviceIdOwn$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/s;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->oldDbItemsByDeviceOwn$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToHeaderViewHolderItemMap$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0xb

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->urlToItemViewHolderItemMap$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0xc

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToItemViewHolderItemsMap$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0xd

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->checkedItemMap$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_syncMainUIEventLiveData$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncFragmentItem$delegate:Ldb/f;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;-><init>(Landroid/app/Application;LNc/x;)V

    return-void
.end method

.method private static final _quickAccessSyncCombinedList_delegate$lambda$1()Landroidx/lifecycle/X;
    .locals 1

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    return-object v0
.end method

.method private static final _quickAccessSyncFragmentItem_delegate$lambda$10()Landroidx/lifecycle/X;
    .locals 1

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    return-object v0
.end method

.method private static final _syncMainUIEventLiveData_delegate$lambda$9()Landroidx/lifecycle/X;
    .locals 1

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    return-object v0
.end method

.method public static final synthetic access$generateAuxiliaryData(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ljava/util/List;ILdb/j;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->generateAuxiliaryData(Ljava/util/List;ILdb/j;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdToHeaderViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getDeviceIdToHeaderViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDeviceIdToItemViewHolderItemsMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getDeviceIdToItemViewHolderItemsMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getRepository(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getUrlToItemViewHolderItemMap(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getUrlToItemViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_quickAccessSyncCombinedList(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Landroidx/lifecycle/X;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_quickAccessSyncCombinedList()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$get_quickAccessSyncFragmentItem(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)Landroidx/lifecycle/X;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_quickAccessSyncFragmentItem()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleControlBarCheckboxClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->handleControlBarCheckboxClick(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleHeaderViewHolderCheckboxClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->handleHeaderViewHolderCheckboxClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleHeaderViewHolderIndicatorClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;IILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->handleHeaderViewHolderIndicatorClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;IILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleItemViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->handleItemViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleItemViewHolderItemsSelected(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->handleItemViewHolderItemsSelected(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$removeAll(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ljava/util/List;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->removeAll(Ljava/util/List;II)V

    return-void
.end method

.method public static final synthetic access$setupQuickAccessSyncDeviceList$generateTriple(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ldb/j;Ldb/j;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList$generateTriple(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ldb/j;Ldb/j;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$setupQuickAccessSyncDeviceList$lambda$11(Ljava/util/List;ILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList$lambda$11(Ljava/util/List;ILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->oldDbItemsByDeviceOwn_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncCombinedList_delegate$lambda$1()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method private static final checkedItemMap_delegate$lambda$8()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelKt;->createConcurrentHashMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToItemViewHolderItemsMap_delegate$lambda$7()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private static final deviceIdToHeaderViewHolderItemMap_delegate$lambda$5()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method private static final deviceIdToItemViewHolderItemsMap_delegate$lambda$7()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;)J
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->setupQuickAccessSyncDeviceList$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;)J

    move-result-wide v0

    return-wide v0
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

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$executeOnClick$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$executeOnClick$1;-><init>(Lsb/k;Lsb/a;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public static synthetic executeOnClick$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lsb/k;Lsb/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->executeOnClick(Lsb/k;Lsb/a;)V

    return-void
.end method

.method public static synthetic f()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToHeaderViewHolderItemMap_delegate$lambda$5()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_syncMainUIEventLiveData_delegate$lambda$9()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method private final generateAuxiliaryData(Ljava/util/List;ILdb/j;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ldb/j;",
            ">;I",
            "Ldb/j;",
            ")",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;"
        }
    .end annotation

    move-object/from16 v0, p3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lfb/C;->g(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lfb/B;->r(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-static {v2, v0}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_1
    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x1e

    const/16 v17, 0x0

    move-object v9, v7

    move/from16 v15, p2

    invoke-direct/range {v9 .. v17}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;-><init>(IIIIIIILtb/f;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v2, v9, :cond_2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldb/j;

    iget-object v11, v2, Ldb/j;->a:Ljava/lang/Object;

    check-cast v11, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iget-object v2, v2, Ldb/j;->b:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ne v12, v9, :cond_2

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v11, v10

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v13, v11, 0x1

    if-ltz v11, :cond_c

    check-cast v12, Ldb/j;

    iget-object v15, v12, Ldb/j;->a:Ljava/lang/Object;

    move-object/from16 v16, v15

    check-cast v16, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iget-object v12, v12, Ldb/j;->b:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->component1()Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object v10

    invoke-virtual {v10, v15}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getSyncGroupItemListVisibility(Ljava/lang/String;)I

    move-result v10

    new-instance v14, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0xf

    const/16 v23, 0x0

    invoke-static/range {v16 .. v23}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object v18

    if-nez v11, :cond_3

    move/from16 v22, v9

    goto :goto_3

    :cond_3
    const/16 v22, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v16

    move-object/from16 p3, v0

    add-int/lit8 v0, v16, -0x1

    if-ne v11, v0, :cond_4

    move/from16 v23, v9

    goto :goto_4

    :cond_4
    const/16 v23, 0x0

    :goto_4
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0xc

    const/16 v25, 0x0

    move-object/from16 v17, v14

    move/from16 v19, v10

    invoke-direct/range {v17 .. v25}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;IIIZZILtb/f;)V

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v12

    check-cast v0, Ljava/lang/Iterable;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v0, v14}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v11, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v14, 0x0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v17, v14, 0x1

    if-ltz v14, :cond_9

    check-cast v16, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-object/from16 v18, v16

    new-instance v9, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const v41, 0x1fffff

    const/16 v42, 0x0

    invoke-static/range {v18 .. v42}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v19

    if-nez v14, :cond_5

    const/16 v22, 0x1

    goto :goto_6

    :cond_5
    const/16 v22, 0x0

    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v18

    move-object/from16 v27, v0

    const/16 v26, 0x1

    add-int/lit8 v0, v18, -0x1

    if-ne v14, v0, :cond_6

    move/from16 v23, v26

    goto :goto_7

    :cond_6
    const/16 v23, 0x0

    :goto_7
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x6

    const/16 v25, 0x0

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;ZZZZILtb/f;)V

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v15}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    move-result-object v14

    invoke-static {v14}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v6, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v14, v17

    move/from16 v9, v26

    move-object/from16 v0, v27

    goto/16 :goto_5

    :cond_9
    invoke-static {}, Lfb/o;->l()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    move/from16 v26, v9

    if-nez v10, :cond_b

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_b
    invoke-interface {v5, v15, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p3

    move v11, v13

    move/from16 v9, v26

    const/4 v10, 0x0

    goto/16 :goto_2

    :cond_c
    const/4 v0, 0x0

    invoke-static {}, Lfb/o;->l()V

    throw v0

    :cond_d
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;Ljava/util/List;)V

    return-object v0
.end method

.method private final generateTriple(Ldb/j;Ljava/lang/Object;)Ldb/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            "T3:",
            "Ljava/lang/Object;",
            ">(",
            "Ldb/j;",
            "TT3;)",
            "Ldb/p;"
        }
    .end annotation

    iget-object p0, p1, Ldb/j;->a:Ljava/lang/Object;

    new-instance v0, Ldb/p;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, p2}, Ldb/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic getCheckedItemMap$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final getDeviceIdToHeaderViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToHeaderViewHolderItemMap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final getDeviceIdToItemViewHolderItemsMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->deviceIdToItemViewHolderItemsMap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final getItemCountByDeviceIdOwn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemCountByDeviceIdOwn$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method private final getItemsGroupByDeviceIdNotOwn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemsGroupByDeviceIdNotOwn$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method private final getOldDbItemsByDeviceOwn()LQc/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->oldDbItemsByDeviceOwn$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQc/h;

    return-object p0
.end method

.method private final getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->repository$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    return-object p0
.end method

.method private final getUrlToItemViewHolderItemMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->urlToItemViewHolderItemMap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final get_quickAccessSyncCombinedList()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncCombinedList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/X;

    return-object p0
.end method

.method private final get_quickAccessSyncFragmentItem()Landroidx/lifecycle/X;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncFragmentItem$delegate:Ldb/f;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_syncMainUIEventLiveData$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/X;

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemsGroupByDeviceIdNotOwn_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;

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

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleControlBarCheckboxClick$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleControlBarCheckboxClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    invoke-static {v0, v1, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleHeaderViewHolderCheckboxClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleHeaderViewHolderCheckboxClick$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleHeaderViewHolderCheckboxClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleHeaderViewHolderIndicatorClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;IILib/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
            "II",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance v7, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleHeaderViewHolderIndicatorClick$2;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p3

    move-object v3, p1

    move-object v4, p0

    move v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleHeaderViewHolderIndicatorClick$2;-><init>(ILcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;ILib/c;)V

    invoke-static {v0, v7, p4}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleItemViewHolderItemClick(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleItemViewHolderItemClick$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleItemViewHolderItemClick$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private final handleItemViewHolderItemsSelected(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleItemViewHolderItemsSelected$2;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$handleItemViewHolderItemsSelected$2;-><init>(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    invoke-static {v0, v1, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->itemCountByDeviceIdOwn_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final itemCountByDeviceIdOwn_delegate$lambda$3(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getItemCountByDeviceIdOwn()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private static final itemsGroupByDeviceIdNotOwn_delegate$lambda$2(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getItemsGroupByDeviceIdNotOwn()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->urlToItemViewHolderItemMap_delegate$lambda$6()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->checkedItemMap_delegate$lambda$8()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic l()Landroidx/lifecycle/X;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->_quickAccessSyncFragmentItem_delegate$lambda$10()Landroidx/lifecycle/X;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic m(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->repository_delegate$lambda$0(Landroid/app/Application;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    return-object p0
.end method

.method private static final oldDbItemsByDeviceOwn_delegate$lambda$4(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;)LQc/h;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->getOldDbItemsByDeviceOwn()LQc/h;

    move-result-object p0

    return-object p0
.end method

.method private final removeAll(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;II)V"
        }
    .end annotation

    const/4 p0, -0x1

    if-ne p3, p0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    add-int p0, p2, p3

    :goto_0
    invoke-interface {p1, p2, p0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
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

.method private final setupQuickAccessSyncDeviceList()V
    .locals 9

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getItemsGroupByDeviceIdNotOwn()LQc/h;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getItemCountByDeviceIdOwn()LQc/h;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;->INSTANCE:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$2;

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->zip(LQc/h;LQc/h;Lsb/o;)LQc/h;

    move-result-object v0

    invoke-static {v0}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getOldDbItemsByDeviceOwn()LQc/h;

    move-result-object v1

    invoke-static {v1}, LQc/n0;->l(LQc/h;)LQc/h;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$3;-><init>(Ljava/lang/Object;)V

    new-instance v5, LL2/l;

    const/4 v3, 0x1

    invoke-direct {v5, v0, v1, v2, v3}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$4;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    sget v2, LQc/J;->a:I

    new-instance v4, LQc/I;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v1, v2}, LQc/I;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance v0, LRc/n;

    sget-object v6, Lib/i;->a:Lib/i;

    sget-object v8, LPc/a;->SUSPEND:LPc/a;

    const/4 v7, -0x2

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, LRc/n;-><init>(Lsb/o;LQc/h;Lib/h;ILPc/a;)V

    new-instance v2, LK9/f;

    const/16 v3, 0x13

    invoke-direct {v2, v3}, LK9/f;-><init>(I)V

    new-instance v3, LQc/s;

    invoke-direct {v3, v2, v0, v1}, LQc/s;-><init>(Lsb/k;LRc/n;Lib/c;)V

    new-instance v0, LQc/k;

    const/4 v2, 0x4

    invoke-direct {v0, v2, v3}, LQc/k;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->coroutineDispatcher:LNc/x;

    invoke-static {v0, v2}, LQc/n0;->q(LQc/h;Lib/h;)LQc/h;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setupQuickAccessSyncDeviceList$6;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    new-instance v3, LQc/y;

    invoke-direct {v3, v0, v2}, LQc/y;-><init>(LQc/h;Lsb/n;)V

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    new-instance v0, LQc/m;

    invoke-direct {v0, v3, v1}, LQc/m;-><init>(LQc/h;Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private static final synthetic setupQuickAccessSyncDeviceList$generateTriple(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ldb/j;Ldb/j;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->generateTriple(Ldb/j;Ljava/lang/Object;)Ldb/p;

    move-result-object p0

    return-object p0
.end method

.method private static final setupQuickAccessSyncDeviceList$lambda$11(Ljava/util/List;ILib/c;)Ljava/lang/Object;
    .locals 1

    new-instance p2, Ldb/j;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p2, p0, v0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2
.end method

.method private static final setupQuickAccessSyncDeviceList$lambda$12(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;)J
    .locals 8

    const-string v0, "<destruct>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component3()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModelItem;->component5()Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getTotalGroupCount()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {v0}, Lfb/B;->n(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/j;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncFragmentItem;->getTotalGroupCount()I

    move-result p0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const-string v5, "setupQuickAccessSyncDeviceList::debounce(): totalGroupCount: "

    const-string v6, " items.size: "

    const-string v7, "QuickAccessSyncViewModel"

    invoke-static {p0, v1, v5, v6, v7}, Lcom/sec/android/app/sbrowser/autofill/password/k;->o(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ne p0, v4, :cond_1

    const-wide/16 v2, 0x64

    :cond_1
    return-wide v2
.end method

.method private static final urlToItemViewHolderItemMap_delegate$lambda$6()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final addButtonClicked()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->addQuickAccessItemsFromSync(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_syncMainUIEventLiveData()Landroidx/lifecycle/X;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    return-void
.end method

.method public final cancelButtonClicked()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$cancelButtonClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$cancelButtonClicked$1;-><init>(Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

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

    const-string v0, "controlBarCallback"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$controlBarCheckboxClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$controlBarCheckboxClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->executeOnClick(Lsb/k;Lsb/a;)V

    return-void
.end method

.method public final getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->checkedItemMap$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public final getQuickAccessSyncCombinedList()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_quickAccessSyncCombinedList()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public final getQuickAccessSyncFragmentItem()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_quickAccessSyncFragmentItem()Landroidx/lifecycle/X;

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

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_syncMainUIEventLiveData()Landroidx/lifecycle/X;

    move-result-object p0

    return-object p0
.end method

.method public final headerViewHolderCheckboxClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clickedHeaderViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->isAllItemsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$headerViewHolderCheckboxClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$headerViewHolderCheckboxClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;Lib/c;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->executeOnClick$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lsb/k;Lsb/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final itemViewHolderItemClicked(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "clickedItemViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemClicked$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;Lib/c;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->executeOnClick$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lsb/k;Lsb/a;ILjava/lang/Object;)V

    return-void
.end method

.method public final itemViewHolderItemsSelected(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "clickedItemViewHolderItems"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemsSelected$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$itemViewHolderItemsSelected$2;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Ljava/util/List;Lib/c;)V

    const/4 p1, 0x2

    invoke-static {p0, v0, v1, p1, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->executeOnClick$default(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lsb/k;Lsb/a;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final refreshButtonClicked()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$refreshButtonClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$refreshButtonClicked$1;-><init>(Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final replaceButtonClicked()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getRepository()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncItemViewHolderItem;->getItem()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessItemDto;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepositoryV2;->replaceQuickAccessItems(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->get_syncMainUIEventLiveData()Landroidx/lifecycle/X;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;->getCheckedItemMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/SyncMainUIEvent;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ObservableClassUtils;->trigger(Landroidx/lifecycle/X;Ljava/lang/Object;)V

    return-void
.end method

.method public final setGroupItemListVisibility(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;ILsb/a;I)V
    .locals 9
    .param p1    # Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;",
            "I",
            "Lsb/a;",
            "I)V"
        }
    .end annotation

    const-string v0, "headerViewHolderItem"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headerCallback"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;->getItemListVisibility()I

    move-result v0

    if-ne p4, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v8, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setGroupItemListVisibility$1;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$setGroupItemListVisibility$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncHeaderViewHolderItem;IILsb/a;Lib/c;)V

    const/4 p0, 0x3

    const/4 p1, 0x0

    invoke-static {v0, p1, p1, v8, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final triggerFragmentItemObserver()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$triggerFragmentItemObserver$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$triggerFragmentItemObserver$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final turnOnSyncButtonClicked()V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/l0;->k(Landroidx/lifecycle/s0;)LNc/B;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$turnOnSyncButtonClicked$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessSyncViewModel$turnOnSyncButtonClicked$1;-><init>(Lib/c;)V

    const/4 v2, 0x3

    invoke-static {p0, v1, v1, v0, v2}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
