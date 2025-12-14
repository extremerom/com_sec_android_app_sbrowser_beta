.class public final Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;
.super Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 D2\u00020\u0001:\u0001DB1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0015\u001a\u00020\u00142\u000e\u0010\u0013\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J#\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0012H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001c\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001e\u0010\u001dJ\r\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u001dJ\r\u0010\u001f\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001f\u0010\u001dJ\u001f\u0010\"\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010 \u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u0004\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008$\u0010%J\u0017\u0010&\u001a\u0004\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u0008&\u0010%J\'\u0010(\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00042\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\'\u00a2\u0006\u0004\u0008(\u0010)J\u001f\u0010+\u001a\u0004\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0019\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u0010-\u001a\u0004\u0018\u00010 2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u0019\u00a2\u0006\u0004\u0008-\u0010,J/\u0010.\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010*\u001a\u00020\u00192\u0010\u0010\t\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010 \u0018\u00010\'\u00a2\u0006\u0004\u0008.\u0010/J\u001d\u00101\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u00100\u001a\u00020\u0019\u00a2\u0006\u0004\u00081\u00102J\u0015\u00103\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u0004\u00a2\u0006\u0004\u00083\u00104J\u0015\u00106\u001a\u00020\u00142\u0006\u00105\u001a\u00020\u0004\u00a2\u0006\u0004\u00086\u00104J\r\u00107\u001a\u00020\u0019\u00a2\u0006\u0004\u00087\u0010\u001bR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u00108R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u00109R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010:R\u0014\u0010<\u001a\u00020;8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u0014\u0010?\u001a\u00020>8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008?\u0010@R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006E"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;",
        "Landroid/content/Context;",
        "context",
        "",
        "instanceId",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
        "delegate",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "callback",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;LNc/x;)V",
        "tabId",
        "",
        "generateKey",
        "(I)Ljava/lang/String;",
        "",
        "activeTabs",
        "Ldb/r;",
        "cleanUnusedBitmapsFromCache",
        "(Ljava/util/List;)V",
        "populateExcludedKeys",
        "(Ljava/util/List;)Ljava/util/List;",
        "",
        "isLowMemory",
        "()Z",
        "destroy",
        "()V",
        "clearAllBitmapCache",
        "initializeBitmapCacheIfNeeded",
        "Landroid/graphics/Bitmap;",
        "bitmap",
        "storeBitmap",
        "(ILandroid/graphics/Bitmap;)V",
        "getFullscreenBitmapFromCache",
        "(I)Landroid/graphics/Bitmap;",
        "getFullscreenBitmapFromMemCache",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;",
        "getFullscreenBitmapFromDiskCache",
        "(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "isLite",
        "getThumbnailBitmapFromCache",
        "(IZ)Landroid/graphics/Bitmap;",
        "getThumbnailBitmapFromMemCache",
        "getThumbnailBitmapFromDiskCache",
        "(IZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "async",
        "removeBitmapFromAllCache",
        "(IZ)V",
        "removeBitmapFromAllMemCache",
        "(I)V",
        "level",
        "onTrimMemory",
        "isBitmapCacheAvailable",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;",
        "Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;",
        "util",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;",
        "cacheDirObserver",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;",
        "emptyBitmapCache",
        "Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;",
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


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cacheDirObserver:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callback:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final emptyBitmapCache:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->Companion:Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;LNc/x;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioDispatcher"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;-><init>(Landroid/content/Context;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->callback:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    new-instance p2, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    new-instance p2, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    new-instance p3, LGa/c;

    const/4 p4, 0x2

    invoke-direct {p3, p4, p0}, LGa/c;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p1, p3}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;-><init>(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->cacheDirObserver:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;

    invoke-virtual {p2}, Landroid/os/FileObserver;->startWatching()V

    new-instance p1, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->emptyBitmapCache:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->initializeBitmapCacheIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;LNc/x;ILtb/f;)V
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    sget-object p5, LNc/N;->c:LWc/e;

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;-><init>(Landroid/content/Context;ILcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;LNc/x;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/Void;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->initializeBitmapCacheIfNeeded()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/Void;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->_init_$lambda$0(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/Void;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->callback:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;

    return-object p0
.end method

.method public static final synthetic access$getDelegate$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    return-object p0
.end method

.method public static final synthetic access$getUtil$p(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;)Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    return-object p0
.end method

.method public static final synthetic access$populateExcludedKeys(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->populateExcludedKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final cleanUnusedBitmapsFromCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "BitmapManager"

    if-nez p1, :cond_0

    const-string p0, "[cleanUnusedBitmapsFromCache] somethings wrong."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "[cleanUnusedBitmapsFromCache] excluded tab size : "

    invoke-static {v1, v2, v0}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$cleanUnusedBitmapsFromCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/util/List;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method private final generateKey(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "parentalControl"

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->getUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isIncognitoTab(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "secretQuickAccess"

    goto :goto_0

    :cond_1
    const-string p0, "quickAccess"

    :goto_0
    return-object p0

    :cond_2
    int-to-long p0, p1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final isLowMemory()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-boolean p0, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    return p0
.end method

.method private final populateExcludedKeys(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "quickAccess.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "secretQuickAccess.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "journal"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isNativePage(I)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final cleanUnusedBitmapsFromCache()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    const-string v1, "BitmapManager"

    if-eqz v0, :cond_0

    const-string v0, "[cleanUnusedBitmapsFromCache] cache initialization success"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->getCacheExcludedTabList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->cleanUnusedBitmapsFromCache(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p0, "[cleanUnusedBitmapsFromCache] cache initialization fail"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final clearAllBitmapCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearAllCache()V

    return-void
.end method

.method public final destroy()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->cacheDirObserver:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/CacheDirObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->emptyBitmapCache:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;->clearCache()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearAllCache()V

    return-void
.end method

.method public final getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getFullscreenBitmapFromCache] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromMemCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromDiskCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getFullscreenBitmapFromDiskCache(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 3
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v2, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getFullscreenBitmapFromDiskCache$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getFullscreenBitmapFromDiskCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public final getFullscreenBitmapFromMemCache(I)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[getFullscreenBitmapFromMemCache] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BitmapManager"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromMemCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getThumbnailBitmapFromCache(IZ)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromMemCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromDiskCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getThumbnailBitmapFromDiskCache(IZLcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 8
    .param p3    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object v5

    const/4 p1, 0x3

    if-eqz p2, :cond_1

    move v4, p1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    move v4, p2

    :goto_0
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$getThumbnailBitmapFromDiskCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;ILjava/lang/String;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lib/c;)V

    invoke-static {p2, v1, v1, v0, p1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    invoke-interface {p3, v1}, Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;->onCallback(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public final getThumbnailBitmapFromMemCache(IZ)Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x3

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->getBitmapFromMemCache(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final initializeBitmapCacheIfNeeded()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$initializeBitmapCacheIfNeeded$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$initializeBitmapCacheIfNeeded$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final isBitmapCacheAvailable()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->isBitmapCacheAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->isBitmapCacheAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->isBitmapCacheAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onTrimMemory(I)V
    .locals 3

    const-string v0, "BitmapManager"

    const-string v1, "[onTrimMemory]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/16 v2, 0x28

    if-le v0, v1, :cond_0

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isLowMemory()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearAllCache()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimAllMemCache()V

    goto :goto_1

    :cond_0
    const/16 v0, 0x50

    if-ge p1, v0, :cond_2

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    if-lt p1, v2, :cond_3

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearCache(I)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimMemCache(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->clearAllCache()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->trimAllMemCache()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final removeBitmapFromAllCache(IZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$removeBitmapFromAllCache$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$removeBitmapFromAllCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->removeBitmapFromAllCache(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final removeBitmapFromAllMemCache(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$removeBitmapFromAllMemCache$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$removeBitmapFromAllMemCache$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Ljava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public final storeBitmap(ILandroid/graphics/Bitmap;)V
    .locals 10
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->isBitmapCacheAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->emptyBitmapCache:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;

    invoke-static {p2}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/EmptyBitmapCache;->isEmptyBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->createThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->callback:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;

    invoke-interface {v0, p1, v6}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerCallback;->onThumbnailCreated(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->delegate:Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/bitmap_manager/BitmapManagerDelegate;->isValidTab(I)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->generateKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v5, p2}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->util:Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/sbrowser/bitmap_manager/utils/BitmapUtils;->isValidBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_3

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v5, v6}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v5, v6}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapCacheManager;->addBitmapToMemCache(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v9, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p2

    move v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager$storeBitmap$1;-><init>(Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap;ILib/c;)V

    const/4 p0, 0x0

    invoke-static {v0, p0, p0, v9, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void

    :cond_4
    :goto_0
    const-string p2, "BitmapManager"

    const-string v0, "[storeBitmap] clean cache for failed bitmap capture"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/bitmap_manager/BitmapManager;->removeBitmapFromAllCache(IZ)V

    return-void
.end method
