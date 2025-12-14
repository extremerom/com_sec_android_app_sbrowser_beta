.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 _2\u00020\u0001:\u0001_B#\u0008\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\r\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J%\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0015\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u001f\u0010#\u001a\u00020\"2\u0006\u0010 \u001a\u00020\r2\u0006\u0010!\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010%\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008%\u0010\u000cJ\u0017\u0010\'\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u0013H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J3\u0010,\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00132\u0008\u0010)\u001a\u0004\u0018\u00010\u00132\u0008\u0010*\u001a\u0004\u0018\u00010\"2\u0006\u0010+\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008,\u0010-J\u001d\u00101\u001a\u00020\n2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.H\u0002\u00a2\u0006\u0004\u00081\u00102J3\u00105\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u00132\u0008\u00103\u001a\u0004\u0018\u00010\"2\u0008\u0010+\u001a\u0004\u0018\u00010\r2\u0006\u00104\u001a\u00020\u001aH\u0002\u00a2\u0006\u0004\u00085\u00106J%\u00107\u001a\u00020\n2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.2\u0006\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u00087\u00108J\u0019\u00109\u001a\u0004\u0018\u00010\"2\u0006\u0010\u0015\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u00089\u0010:J\u001d\u0010;\u001a\u00020\n2\u000c\u00100\u001a\u0008\u0012\u0004\u0012\u00020/0.H\u0002\u00a2\u0006\u0004\u0008;\u00102R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010<R\u0014\u0010=\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0014\u0010@\u001a\u00020?8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008@\u0010AR\u001b\u0010G\u001a\u00020B8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008C\u0010D\u001a\u0004\u0008E\u0010FR\"\u0010I\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020/\u0018\u00010.0H8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u001c\u0010L\u001a\u0008\u0012\u0004\u0012\u00020/0K8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u001a\u0010N\u001a\u0008\u0012\u0004\u0012\u00020/0K8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008N\u0010MR\u0016\u0010O\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0018\u0010Q\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010RR\u001b\u0010V\u001a\u00020\"8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008S\u0010D\u001a\u0004\u0008T\u0010UR\u001f\u0010Z\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020/\u0018\u00010.0W8F\u00a2\u0006\u0006\u001a\u0004\u0008X\u0010YR\u0011\u0010[\u001a\u00020\u001a8F\u00a2\u0006\u0006\u001a\u0004\u0008[\u0010\u001fR\u0013\u0010^\u001a\u0004\u0018\u00010\u00168F\u00a2\u0006\u0006\u001a\u0004\u0008\\\u0010]\u00a8\u0006`"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;",
        "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;",
        "dbUtility",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;LNc/x;)V",
        "Ldb/r;",
        "fetchSyncedTabItems",
        "()V",
        "",
        "propertyType",
        "",
        "propertyValue",
        "onChanged",
        "(ILjava/lang/Object;)V",
        "",
        "senderName",
        "deviceType",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;",
        "callback",
        "showPromotionIfAvailable",
        "(Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;)V",
        "",
        "visible",
        "setHandOffPromotionState",
        "(Z)V",
        "shouldShowItems",
        "()Z",
        "bgColor",
        "isColorRes",
        "Landroid/graphics/Bitmap;",
        "getImageFromColor",
        "(IZ)Landroid/graphics/Bitmap;",
        "fetchIconForItems",
        "url",
        "requestFetchOgImage",
        "(Ljava/lang/String;)V",
        "iconUrl",
        "icon",
        "dominantColor",
        "onIconFetched",
        "(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V",
        "",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
        "items",
        "updateTabItems",
        "(Ljava/util/List;)V",
        "image",
        "isIcon",
        "updateImage",
        "(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Z)V",
        "updateHandOffPromotionItems",
        "(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;)V",
        "getIconForHandOffPromotion",
        "(I)Landroid/graphics/Bitmap;",
        "postTabItems",
        "Landroid/content/Context;",
        "openTabDbUtility",
        "Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;",
        "iconFetcher$delegate",
        "Ldb/f;",
        "getIconFetcher",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;",
        "iconFetcher",
        "Landroidx/lifecycle/X;",
        "_syncedTabItemLiveData",
        "Landroidx/lifecycle/X;",
        "",
        "syncedTabItems",
        "Ljava/util/List;",
        "handOffPromotionItems",
        "_isHandOffPromotionAvailable",
        "Z",
        "_promotionCallback",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;",
        "defaultOgImage$delegate",
        "getDefaultOgImage",
        "()Landroid/graphics/Bitmap;",
        "defaultOgImage",
        "Landroidx/lifecycle/S;",
        "getSyncedTabItemLiveData",
        "()Landroidx/lifecycle/S;",
        "syncedTabItemLiveData",
        "isHandOffPromotionAvailable",
        "getPromotionCallback",
        "()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;",
        "promotionCallback",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final moreButtonItem:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private _isHandOffPromotionAvailable:Z

.field private _promotionCallback:Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _syncedTabItemLiveData:Landroidx/lifecycle/X;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/X;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final defaultOgImage$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final handOffPromotionItems:Ljava/util/List;
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

.field private final iconFetcher$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final openTabDbUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private syncedTabItems:Ljava/util/List;
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


# direct methods
.method static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->$stable:I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;->MORE_BUTTON:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;-><init>(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->moreButtonItem:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;LNc/x;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dbUtility"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/u;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/u;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->iconFetcher$delegate:Ldb/f;

    new-instance v0, Landroidx/lifecycle/X;

    invoke-direct {v0}, Landroidx/lifecycle/S;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_syncedTabItemLiveData:Landroidx/lifecycle/X;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->handOffPromotionItems:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/j;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/j;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->defaultOgImage$delegate:Ldb/f;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->registerSyncStateObserver(Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier$SyncStateObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->setListener(Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher$OnIconFetchListener;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->openTabDbUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    invoke-static {p3}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->backgroundScope:LNc/B;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    sget-object p3, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;LNc/x;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->defaultOgImage_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$fetchIconForItems(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->fetchIconForItems()V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getDefaultOgImage(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getDefaultOgImage()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMoreButtonItem$cp()Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->moreButtonItem:Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    return-object v0
.end method

.method public static final synthetic access$getOpenTabDbUtility$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->openTabDbUtility:Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserOpenTabDbUtility;

    return-object p0
.end method

.method public static final synthetic access$getSyncedTabItems$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setSyncedTabItems$p(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$updateImage(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Z)V

    return-void
.end method

.method public static final synthetic access$updateTabItems(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateTabItems(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->iconFetcher_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->onIconFetched(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method private static final defaultOgImage_delegate$lambda$1(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;)Landroid/graphics/Bitmap;
    .locals 2

    const v0, 0x7f060c32

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getImageFromColor(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final fetchIconForItems()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;->requestFetchIcon(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->requestFetchOgImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final getDefaultOgImage()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->defaultOgImage$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private final getIconFetcher()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->iconFetcher$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    return-object p0
.end method

.method private final getIconForHandOffPromotion(I)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const p1, 0x7f0802e6

    goto :goto_0

    :cond_0
    const p1, 0x7f08036f

    goto :goto_0

    :cond_1
    const p1, 0x7f08035c

    goto :goto_0

    :cond_2
    const p1, 0x7f080315

    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    invoke-static {p0, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final getImageFromColor(IZ)Landroid/graphics/Bitmap;
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f071486

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f071484

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "createBitmap(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-eqz p2, :cond_0

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-direct {p2, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p2, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v9, p1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v7, v0

    int-to-float v8, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_0
    return-object v2
.end method

.method private static final iconFetcher_delegate$lambda$0()Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/IconFetcher;-><init>()V

    return-object v0
.end method

.method private final onIconFetched(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Z)V

    return-void
.end method

.method private final postTabItems(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_syncedTabItemLiveData:Landroidx/lifecycle/X;

    move-object/from16 v1, p1

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

    move-object v4, v3

    check-cast v4, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    const/16 v15, 0x1ff

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v4 .. v16}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private final requestFetchOgImage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->backgroundScope:LNc/B;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$requestFetchOgImage$1;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final shouldShowItems()Z
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isNewGuiEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncAccountUtil;->isAccountsLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->isInternetSyncTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const-string v0, "SyncedTabRepository"

    const-string v2, "can\'t show tabs"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_syncedTabItemLiveData:Landroidx/lifecycle/X;

    sget-object v0, Lfb/v;->a:Lfb/v;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return v1
.end method

.method private final updateHandOffPromotionItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->shouldShowItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->setHandOffPromotionState(Z)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_promotionCallback:Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->postTabItems(Ljava/util/List;)V

    return-void
.end method

.method private final updateImage(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/Integer;Z)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    if-eqz p4, :cond_3

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->setIcon(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->setDominantColor(Ljava/lang/Integer;)V

    if-eqz p3, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getImageFromColor(IZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->setOgImage(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_1
    move v2, v4

    goto :goto_0

    :cond_3
    if-nez p4, :cond_1

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->getOgImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;->setOgImage(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateTabItems(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private final updateTabItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->shouldShowItems()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->isHandOffPromotionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->postTabItems(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final fetchSyncedTabItems()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->shouldShowItems()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->backgroundScope:LNc/B;

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository$fetchSyncedTabItems$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final getPromotionCallback()Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_promotionCallback:Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;

    return-object p0
.end method

.method public final getSyncedTabItemLiveData()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_syncedTabItemLiveData:Landroidx/lifecycle/X;

    return-object p0
.end method

.method public final isHandOffPromotionAvailable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_isHandOffPromotionAvailable:Z

    return p0
.end method

.method public onChanged(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onChanged propertyType: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "SyncedTabRepository"

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->fetchSyncedTabItems()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateTabItems(Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    sget-object p1, Lfb/v;->a:Lfb/v;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateTabItems(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->fetchSyncedTabItems()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final setHandOffPromotionState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_isHandOffPromotionAvailable:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_isHandOffPromotionAvailable:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->syncedTabItems:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateTabItems(Ljava/util/List;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->_promotionCallback:Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;

    :cond_1
    return-void
.end method

.method public final showPromotionIfAvailable(Ljava/lang/String;ILcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v12, p3

    const-string v1, "senderName"

    invoke-static {v3, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callback"

    invoke-static {v12, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Promotion request from "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SyncedTabRepository"

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->handOffPromotionItems:Ljava/util/List;

    new-instance v14, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;->HAND_OFF_PROMOTION:Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f140b3f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v1, p2

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->getIconForHandOffPromotion(I)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    const-string v4, ""

    const-string v5, ""

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v14

    invoke-direct/range {v1 .. v11}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabItem;-><init>(Lcom/sec/android/app/sbrowser/common/constants/quickaccess/SyncedTabConstants;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/Integer;)V

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->handOffPromotionItems:Ljava/util/List;

    invoke-direct {p0, v1, v12}, Lcom/sec/android/app/sbrowser/quickaccess/model/SyncedTabRepository;->updateHandOffPromotionItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/HandOffPromotionCallback;)V

    return-void
.end method
