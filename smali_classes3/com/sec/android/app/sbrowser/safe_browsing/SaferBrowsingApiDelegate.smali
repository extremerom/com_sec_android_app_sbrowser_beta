.class public final Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 <2\u00020\u0001:\u0001<B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005JI\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J#\u0010\u0017\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J+\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001d\u0010 \u001a\u00020\u00082\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u001dH\u0007\u00a2\u0006\u0004\u0008 \u0010!R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\"R\u0016\u0010\u0016\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010#R\u0016\u0010%\u001a\u00020$8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R!\u0010-\u001a\u0008\u0012\u0004\u0012\u00020(0\'8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,R!\u00104\u001a\u00020.8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008/\u0010*\u0012\u0004\u00082\u00103\u001a\u0004\u00080\u00101R%\u0010;\u001a\u000605j\u0002`68BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u00087\u0010*\u0012\u0004\u0008:\u00103\u001a\u0004\u00088\u00109\u00a8\u0006="
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;",
        "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate$Delegate;",
        "LNc/x;",
        "ioDispatcher",
        "<init>",
        "(LNc/x;)V",
        "",
        "callbackId",
        "",
        "uri",
        "",
        "resultStatus",
        "",
        "threatDetected",
        "metadata",
        "threatType",
        "Ldb/r;",
        "onUriLookupDone",
        "(JLjava/lang/String;IZLjava/lang/String;I)V",
        "Landroid/content/Context;",
        "context",
        "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;",
        "delegate",
        "init",
        "(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z",
        "",
        "threatsOfInterest",
        "startUriLookup",
        "(JLjava/lang/String;[I)V",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "detectedThreats",
        "createMetadata",
        "(Ljava/util/List;)Ljava/lang/String;",
        "LNc/x;",
        "Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "repository",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;",
        "pendingQueries$delegate",
        "Ldb/f;",
        "getPendingQueries",
        "()Ljava/util/concurrent/CopyOnWriteArrayList;",
        "pendingQueries",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;",
        "repositoryInitializedListener$delegate",
        "getRepositoryInitializedListener",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;",
        "getRepositoryInitializedListener$annotations",
        "()V",
        "repositoryInitializedListener",
        "LNc/Z;",
        "Lkotlinx/coroutines/CloseableCoroutineDispatcher;",
        "callbackDispatcher$delegate",
        "getCallbackDispatcher",
        "()LNc/Z;",
        "getCallbackDispatcher$annotations",
        "callbackDispatcher",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callbackDispatcher$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private delegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

.field private final ioDispatcher:LNc/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pendingQueries$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private repository:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

.field private final repositoryInitializedListener$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;-><init>(LNc/x;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(LNc/x;)V
    .locals 1
    .param p1    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "ioDispatcher"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->ioDispatcher:LNc/x;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v0, 0xe

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->pendingQueries$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/safe_browsing/a;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repositoryInitializedListener$delegate:Ldb/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v0, 0xf

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->callbackDispatcher$delegate:Ldb/f;

    return-void
.end method

.method public constructor <init>(LNc/x;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, LNc/N;->c:LWc/e;

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;-><init>(LNc/x;)V

    return-void
.end method

.method public static synthetic a()LNc/Z;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->callbackDispatcher_delegate$lambda$4()LNc/Z;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$getDelegate$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->delegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    return-object p0
.end method

.method public static final synthetic access$getRepository$p(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repository:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repositoryInitializedListener_delegate$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repositoryInitializedListener_delegate$lambda$3(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;

    move-result-object p0

    return-object p0
.end method

.method private static final callbackDispatcher_delegate$lambda$4()LNc/Z;
    .locals 1

    const-string v0, "SaferBrowsingApiDelegate CallbackThread"

    invoke-static {v0}, LNc/E;->A(Ljava/lang/String;)LNc/a0;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic d()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->pendingQueries_delegate$lambda$0()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0
.end method

.method private final getCallbackDispatcher()LNc/Z;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->callbackDispatcher$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/Z;

    return-object p0
.end method

.method private final getPendingQueries()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->pendingQueries$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic getRepositoryInitializedListener$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method private final onUriLookupDone(JLjava/lang/String;IZLjava/lang/String;I)V
    .locals 12

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->getCallbackDispatcher()LNc/Z;

    move-result-object v0

    invoke-static {v0}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v0

    new-instance v11, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;

    const/4 v10, 0x0

    move-object v1, v11

    move-object v2, p0

    move-object v3, p3

    move/from16 v4, p5

    move-wide v5, p1

    move/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$onUriLookupDone$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;Ljava/lang/String;ZJILjava/lang/String;ILib/c;)V

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v11, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public static synthetic onUriLookupDone$default(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;IZLjava/lang/String;IILjava/lang/Object;)V
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const-string v0, "{}"

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->onUriLookupDone(JLjava/lang/String;IZLjava/lang/String;I)V

    return-void
.end method

.method private static final pendingQueries_delegate$lambda$0()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    return-object v0
.end method

.method private static final repositoryInitializedListener_delegate$lambda$3(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/b;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/safe_browsing/b;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V

    return-object v0
.end method

.method private static final repositoryInitializedListener_delegate$lambda$3$lambda$2(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;)V
    .locals 5

    const-string v0, "SaferBrowsingApiDelegate"

    const-string v1, "OnInitializedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->getPendingQueries()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;

    iget-wide v2, v1, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mCallbackId:J

    iget-object v4, v1, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mUri:Ljava/lang/String;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;->mThreatsOfInterest:[I

    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->startUriLookup(JLjava/lang/String;[I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->getPendingQueries()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method


# virtual methods
.method public final createMetadata(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "detectedThreats"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata;-><init>()V

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

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    new-instance v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->getThreatType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata$LookupResult;->getThreatType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/domain/LookupResultMetadata;->setLookupResults(Ljava/util/List;)V

    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "toJson(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRepositoryInitializedListener()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repositoryInitializedListener$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;

    return-object p0
.end method

.method public init(Landroid/content/Context;Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;)Z
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "SaferBrowsingApiDelegate"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->delegate:Lcom/sec/terrace/browser/safe_browsing/TerraceSafeBrowsingApiHandler$TerraceSafeBrowsingApiHandlerDelegate;

    sget-object v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x7e

    const/4 v10, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repository:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->getRepositoryInitializedListener()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->addOnInitializedListener(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$OnInitializedListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->ioDispatcher:LNc/x;

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$init$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$init$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, p2, p2, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    const/4 p0, 0x1

    return p0

    :cond_2
    const-string p0, "repository"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public startUriLookup(JLjava/lang/String;[I)V
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->repository:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->getPendingQueries()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/safe_browsing/ProtectedBrowsingHelper$LookupQuery;-><init>(JLjava/lang/String;[I)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;->ioDispatcher:LNc/x;

    invoke-static {p4}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p4

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate$startUriLookup$1;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/SaferBrowsingApiDelegate;JLjava/lang/String;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p4, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void

    :cond_1
    const-string p0, "repository"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    throw v1
.end method
