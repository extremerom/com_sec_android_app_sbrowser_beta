.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;,
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a4\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0008\n\u0008\u0007\u0018\u0000 k2\u00020\u0001:\u0002lkBA\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\r\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u001a\u0010\u001d\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017H\u0086@\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0019\u0010\u001f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0019\u0010!\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u0008!\u0010 J\u001b\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$2\u0006\u0010#\u001a\u00020\"\u00a2\u0006\u0004\u0008&\u0010\'J\u001f\u0010+\u001a\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0*0(\u00a2\u0006\u0004\u0008+\u0010,J$\u0010.\u001a\u0008\u0012\u0004\u0012\u00020)0$2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0086@\u00a2\u0006\u0004\u0008.\u0010/J\u001e\u00100\u001a\u00020\u00172\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0087@\u00a2\u0006\u0004\u00080\u0010/J\u0019\u00102\u001a\u00020\u00142\u0008\u00101\u001a\u0004\u0018\u00010\"H\u0007\u00a2\u0006\u0004\u00082\u00103J\u000f\u00104\u001a\u00020\u0017H\u0007\u00a2\u0006\u0004\u00084\u0010\u0019J \u00106\u001a\u0004\u0018\u0001052\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u00020%0$H\u0087@\u00a2\u0006\u0004\u00086\u0010/J\u001f\u0010:\u001a\u00020\u00172\u0006\u00107\u001a\u00020\u00172\u0006\u00109\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008:\u0010;J\u0010\u0010<\u001a\u00020\u0014H\u0082@\u00a2\u0006\u0004\u0008<\u0010=J\u0018\u0010>\u001a\u00020\u00142\u0006\u0010\u001c\u001a\u00020\u0017H\u0082@\u00a2\u0006\u0004\u0008>\u0010\u001eJ\u000f\u0010?\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008?\u0010\u0019J\u000f\u0010@\u001a\u000208H\u0002\u00a2\u0006\u0004\u0008@\u0010AJ\u000f\u0010B\u001a\u00020\u0017H\u0002\u00a2\u0006\u0004\u0008B\u0010\u0019J\u001e\u0010D\u001a\u00020\u00142\u000c\u0010C\u001a\u0008\u0012\u0004\u0012\u00020)0$H\u0082@\u00a2\u0006\u0004\u0008D\u0010/R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010ER\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010FR\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010GR\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010HR\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010IR\u0014\u0010\r\u001a\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010JR\u0014\u0010\u000f\u001a\u00020\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010KR\u001e\u0010N\u001a\n M*\u0004\u0018\u00010L0L8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR!\u0010U\u001a\u0008\u0012\u0004\u0012\u0002080P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Q\u0010R\u001a\u0004\u0008S\u0010TR!\u0010X\u001a\u0008\u0012\u0004\u0012\u00020\u00170P8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008V\u0010R\u001a\u0004\u0008W\u0010TR\u001a\u0010Z\u001a\u0008\u0012\u0004\u0012\u00020\u00170Y8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008Z\u0010[R\u001b\u0010`\u001a\u00020\\8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008]\u0010R\u001a\u0004\u0008^\u0010_R\u0016\u0010a\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008a\u0010bR!\u0010g\u001a\u0008\u0012\u0004\u0012\u00020\u00120c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008d\u0010R\u001a\u0004\u0008e\u0010fR-\u0010j\u001a\u0014\u0012\u0004\u0012\u00020)\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\"0*0(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008h\u0010R\u001a\u0004\u0008i\u0010,\u00a8\u0006m"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;",
        "hashFinder",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;",
        "client",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;",
        "model",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;",
        "preference",
        "LNc/x;",
        "ioDispatcher",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;",
        "backOffService",
        "<init>",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)V",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;",
        "onInitializedListener",
        "Ldb/r;",
        "addOnInitializedListener",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;)V",
        "",
        "isInitialized",
        "()Z",
        "updateThreatsListIfNeeded",
        "()V",
        "forceUpdate",
        "updateIfNeeded",
        "(ZLib/c;)Ljava/lang/Object;",
        "shouldUpdateGetThreatsList",
        "(Z)Z",
        "shouldUpdateThreatLists",
        "",
        "uri",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
        "findHashPrefixCollisions",
        "(Ljava/lang/String;)Ljava/util/List;",
        "Ljava/util/concurrent/ConcurrentHashMap;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "",
        "getPrefixHashesMap",
        "()Ljava/util/concurrent/ConcurrentHashMap;",
        "collisions",
        "findAndMatchCollision",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "fetchAndUpdatePositiveNegativeCaches",
        "responseMinimumWaitDuration",
        "updateFindFullHashesMinimumWaitTillTimestamp",
        "(Ljava/lang/String;)V",
        "shouldFindFullHashes",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;",
        "findFullHashes",
        "isEnabled",
        "",
        "protectLevel",
        "calculateKidsModeDB",
        "(ZI)Z",
        "updateCachedItems",
        "(Lib/c;)Ljava/lang/Object;",
        "updateIfNeededInternal",
        "isParentalControlEnabled",
        "getProtectionLevel",
        "()I",
        "isKidsMode",
        "descriptors",
        "updatePrefixHashes",
        "Landroid/content/Context;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;",
        "LNc/x;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;",
        "Landroid/content/SharedPreferences;",
        "kotlin.jvm.PlatformType",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "Landroidx/lifecycle/S;",
        "parentalControlProtectLevel$delegate",
        "Ldb/f;",
        "getParentalControlProtectLevel",
        "()Landroidx/lifecycle/S;",
        "parentalControlProtectLevel",
        "parentalControlEnabled$delegate",
        "getParentalControlEnabled",
        "parentalControlEnabled",
        "LQc/h;",
        "shouldEnableKidsModeDBFlow",
        "LQc/h;",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lock$delegate",
        "getLock",
        "()Ljava/util/concurrent/locks/ReentrantLock;",
        "lock",
        "initialized",
        "Z",
        "",
        "onInitializedListenerList$delegate",
        "getOnInitializedListenerList",
        "()Ljava/util/List;",
        "onInitializedListenerList",
        "prefixHashes$delegate",
        "getPrefixHashes",
        "prefixHashes",
        "Companion",
        "OnInitializedListener",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final allowedPlatformTypes$delegate:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final updatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile initialized:Z

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lock$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final model:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onInitializedListenerList$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlEnabled$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parentalControlProtectLevel$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final prefixHashes$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sharedPreferences:Landroid/content/SharedPreferences;

.field private final shouldEnableKidsModeDBFlow:LQc/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->$stable:I

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->allowedPlatformTypes$delegate:Ldb/f;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->model:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->ioDispatcher:LNc/x;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lw2/F;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlProtectLevel$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/b;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlEnabled$delegate:Ldb/f;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getParentalControlEnabled()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-static {p1}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getParentalControlProtectLevel()Landroidx/lifecycle/S;

    move-result-object p2

    invoke-static {p2}, Landroidx/lifecycle/l0;->a(Landroidx/lifecycle/S;)LQc/h;

    move-result-object p2

    new-instance p3, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$shouldEnableKidsModeDBFlow$1;

    invoke-direct {p3, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$shouldEnableKidsModeDBFlow$1;-><init>(Ljava/lang/Object;)V

    new-instance p4, LL2/l;

    const/4 p5, 0x1

    invoke-direct {p4, p1, p2, p3, p5}, LL2/l;-><init>(LQc/h;Ljava/lang/Object;Ldb/b;I)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldEnableKidsModeDBFlow:LQc/h;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->lock$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0x15

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->onInitializedListenerList$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 p2, 0x16

    invoke-direct {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->prefixHashes$delegate:Ldb/f;

    const-string p1, "SaferBrowsingRepository"

    const-string p2, "init"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p6}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, p3, p3, p2, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;Ltb/f;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)V

    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->prefixHashes_delegate$lambda$4()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getAllowedPlatformTypes$delegate$cp()Ldb/f;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->allowedPlatformTypes$delegate:Ldb/f;

    return-object v0
.end method

.method public static final synthetic access$getLock(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOnInitializedListenerList(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getOnInitializedListenerList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    return-object p0
.end method

.method public static final synthetic access$getShouldEnableKidsModeDBFlow$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)LQc/h;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldEnableKidsModeDBFlow:LQc/h;

    return-object p0
.end method

.method public static final synthetic access$setInitialized$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->initialized:Z

    return-void
.end method

.method public static final synthetic access$shouldEnableKidsModeDBFlow$calculateKidsModeDB(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldEnableKidsModeDBFlow$calculateKidsModeDB(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZILib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateCachedItems(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateCachedItems(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updateIfNeededInternal(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZLib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateIfNeededInternal(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$updatePrefixHashes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatePrefixHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final allowedPlatformTypes_delegate$lambda$16()Ljava/util/List;
    .locals 3

    const-string v0, "ANY_PLATFORM"

    const-string v1, "ALL_PLATFORMS"

    const-string v2, "ANDROID"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic b()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->lock_delegate$lambda$2()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->onInitializedListenerList_delegate$lambda$3()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private final calculateKidsModeDB(ZI)Z
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "calculateMode - isEnabled: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", protectLevel: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaferBrowsingRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    const/4 p1, 0x1

    if-eq p2, p0, :cond_1

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlProtectLevel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlEnabled_delegate$lambda$1(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->allowedPlatformTypes_delegate$lambda$16()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method

.method private final getLock()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->lock$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method private final getOnInitializedListenerList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->onInitializedListenerList$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getParentalControlEnabled()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlEnabled$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method private final getParentalControlProtectLevel()Landroidx/lifecycle/S;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->parentalControlProtectLevel$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/S;

    return-object p0
.end method

.method private final getPrefixHashes()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->prefixHashes$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method private final getProtectionLevel()I
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getParentalControlProtectLevel()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isKidsMode()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->isParentalControlEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getProtectionLevel()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final isParentalControlEnabled()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getParentalControlEnabled()Landroidx/lifecycle/S;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final lock_delegate$lambda$2()Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    return-object v0
.end method

.method private static final onInitializedListenerList_delegate$lambda$3()Ljava/util/List;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method private static final parentalControlEnabled_delegate$lambda$1(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "parental_control_enabled"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceBooleanLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static final parentalControlProtectLevel_delegate$lambda$0(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;)Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "parental_control_protect_level"

    invoke-direct {v0, p0, v2, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceIntegerLiveData;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v0
.end method

.method private static final prefixHashes_delegate$lambda$4()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0
.end method

.method private static final shouldEnableKidsModeDBFlow$calculateKidsModeDB(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZILib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->calculateKidsModeDB(ZI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private final updateCachedItems(Lib/c;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    const-string p1, "SaferBrowsingRepository"

    const-string v2, "updateCachedItems"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getPrefixHashes()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->model:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateCachedItems$1;->label:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->getThreatDescriptorWithHashes(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;->getThreatDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptorKt;->toDomain(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorEntity;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getPrefixHashes()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorWithHashes;->getThreatDescriptorHashes()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v0, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/entity/ThreatDescriptorHashesEntity;->getPrefixHash()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    invoke-static {v3}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic updateIfNeeded$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;ZLib/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateIfNeeded(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final updateIfNeededInternal(ZLib/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "SaferBrowsingRepository"

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Ldb/m;

    iget-object p1, p2, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "updateIfNeededInternal - forceUpdate: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v8, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldUpdateGetThreatsList(Z)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->isKidsMode()Z

    move-result p2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getProtectionLevel()I

    move-result v2

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    invoke-virtual {p1, p2, v2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->getThreatListDescriptors-0E7RQCE(ZILib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "getThreatListDescriptors onFailure : "

    invoke-static {v2, p2, v8}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBGetThreatDescriptorsLastRequestedTimestamp(J)V

    :cond_7
    instance-of p2, p1, Ldb/l;

    if-nez p2, :cond_c

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    const-string v4, "threatListDescriptors onSuccess "

    invoke-static {v2, v4, v8}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBGetThreatDescriptorsLastRequestedTimestamp(J)V

    check-cast p2, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    sget-object v7, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    invoke-static {v7}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->access$getAllowedPlatformTypes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-virtual {v5}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getPlatformType()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lfb/n;->x(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatePrefixHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldUpdateThreatLists(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->model:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->getThreatDescriptors(Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_b

    return-object v1

    :cond_b
    :goto_3
    check-cast p2, Ljava/util/List;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeededInternal$1;->label:I

    invoke-direct {p0, p2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatePrefixHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_c

    return-object v1

    :cond_c
    :goto_4
    return-object v3
.end method

.method private final updatePrefixHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const-string v8, "SaferBrowsingRepository"

    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    :cond_3
    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto/16 :goto_3

    :cond_4
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$1:Ljava/lang/Object;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Ldb/m;

    iget-object p1, p2, Ldb/m;->a:Ljava/lang/Object;

    :cond_6
    move-object v11, p1

    move-object p1, p0

    move-object p0, v11

    goto :goto_1

    :cond_7
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->isBackOffModeTurnedOn()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->remainingWaitTime()J

    move-result-wide p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Fetch Prefix Hashes aborted due to BackOffMode. Waiting time: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->getThreatListDescriptorPrefixHashes-gIAlu-s(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :goto_1
    invoke-static {p0}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v2, "getThreatListDescriptorPrefixHashes onFailure : "

    invoke-static {v2, p2, v8}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {p2, v9, v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBUpdateThreatListsLastRequestedTimestamp(J)V

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$1:Ljava/lang/Object;

    iput v6, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    invoke-virtual {p2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->turnOnBackOffMode(Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_9

    return-object v1

    :cond_9
    :goto_2
    instance-of p2, p0, Ldb/l;

    if-nez p2, :cond_b

    move-object p2, p0

    check-cast p2, Ljava/util/HashMap;

    const-string v2, "get prefixHashes onSuccess"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBUpdateThreatListsLastRequestedTimestamp(J)V

    iget-object v2, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->model:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getPrefixHashes()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    const-string v7, "<get-keys>(...)"

    invoke-static {v6, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v6

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$1:Ljava/lang/Object;

    iput v5, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    invoke-virtual {v2, v6, p2, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;->update(Ljava/util/Set;Ljava/util/HashMap;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :goto_3
    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updatePrefixHashes$1;->label:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateCachedItems(Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    :cond_a
    :goto_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->turnOffBackOffMode()V

    :cond_b
    return-object v3
.end method


# virtual methods
.method public final addOnInitializedListener(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "onInitializedListener"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getLock()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->initialized:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;->onInitialized()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getOnInitializedListenerList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public final fetchAndUpdatePositiveNegativeCaches(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->L$1:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Ljava/util/List;

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->shouldFindFullHashes()Z

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "SaferBrowsingRepository"

    const-string p1, "FullHashes Find aborted"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$fetchAndUpdatePositiveNegativeCaches$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->findFullHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;->getMinimumWaitDuration()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateFindFullHashesMinimumWaitTillTimestamp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;->getMatches()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->updatePositiveCache(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;->getNegativeCacheDuration()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->updateNegativeCache(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final findAndMatchCollision(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    iget-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v4, p1

    move-object p1, p0

    move-object p0, v0

    move-object v0, p2

    move-object p2, v4

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->matchPositiveCacheCollisions(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->mismatchedCollisionsInNegativeCache(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findAndMatchCollision$1;->label:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->fetchAndUpdatePositiveNegativeCaches(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->matchPositiveCacheCollisions(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    :cond_4
    return-object p2
.end method

.method public final findFullHashes(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    check-cast p2, Ldb/m;

    iget-object p1, p2, Ldb/m;->a:Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->client:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    iput-object p0, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->label:I

    invoke-virtual {p2, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;->findFullHashes-gIAlu-s(Ljava/util/List;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    instance-of p2, p1, Ldb/l;

    const-string v2, "SaferBrowsingRepository"

    if-nez p2, :cond_5

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/FullHashesFindResponse;

    const-string p2, "client.findFullHashes onSuccess"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->turnOffBackOffMode()V

    return-object p1

    :cond_5
    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "client.findFullHashes onFailure : "

    invoke-static {p2, p1, v2}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$findFullHashes$1;->label:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->turnOnBackOffMode(Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    return-object v5
.end method

.method public final findHashPrefixCollisions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/UrlHashCollision;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "uri"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->hashFinder:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getPrefixHashesMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;->findHashPrefixCollisions(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPrefixHashesMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->getPrefixHashes()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method public final isInitialized()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->initialized:Z

    return p0
.end method

.method public final shouldFindFullHashes()Z
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->isBackOffModeTurnedOn()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SaferBrowsingRepository"

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->backOffService:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->remainingWaitTime()J

    move-result-wide v3

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "FullHashes Find aborted due to BackOffMode. Waiting time: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isSaferBrowsingMinimumWaitDurationEnabled()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const-string p0, "FullHashes Find forced due to minimum wait duration disabled"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBFindFullHashesMinimumWaitTillTimestamp()D

    move-result-wide v4

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v6

    long-to-double v6, v6

    sub-double v8, v6, v4

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "shouldFindFullHashes - diff(Millis): "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmpl-double p0, v6, v4

    if-ltz p0, :cond_2

    move v1, v3

    :cond_2
    if-nez v1, :cond_3

    const-string p0, "FullHashes Find aborted due to minimumWaitDuration"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public final shouldUpdateGetThreatsList(Z)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBGetThreatDescriptorsLastRequestedTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getThreatListGetUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-string v3, "shouldUpdateGetThreatsList - pivot : "

    const-string v4, ", diff : "

    invoke-static {p0, p1, v3, v4}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SaferBrowsingRepository"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final shouldUpdateThreatLists(Z)Z
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBUpdateThreatListsLastRequestedTimestamp()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v3, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->context:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/global_config/ProtectedBrowsingGlobalConfigUtils$Companion;->getThreatListFetchUpdateSecPeriod(Landroid/content/Context;)J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    const-string v3, "shouldUpdateThreatLists - pivot : "

    const-string v4, ", diff : "

    invoke-static {p0, p1, v3, v4}, LB/e;->q(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SaferBrowsingRepository"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p0, v1, p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final updateFindFullHashesMinimumWaitTillTimestamp(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->parseDurationStringToDoubleMillis(Ljava/lang/String;)D

    move-result-wide v2

    add-double/2addr v2, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBFindFullHashesMinimumWaitTillTimestamp(D)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "updateFindFullHashesMinimumWaitTillTimestamp - time(Millis): "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SaferBrowsingRepository"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateIfNeeded(ZLib/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;->label:I

    sget-object v3, Ldb/r;->a:Ldb/r;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v3

    :cond_3
    iput v4, v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateIfNeeded$1;->label:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updateIfNeededInternal(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->updatingNow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v3
.end method

.method public final updateThreatsListIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->ioDispatcher:LNc/x;

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateThreatsListIfNeeded$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$updateThreatsListIfNeeded$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method
