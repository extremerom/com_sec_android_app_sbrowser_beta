.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JS\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010H\u0007\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R!\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001c\u001a\u00020\u00168\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001f\u001a\u00020\u001e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;",
        "",
        "<init>",
        "()V",
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
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "getInstance",
        "(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;",
        "",
        "",
        "allowedPlatformTypes$delegate",
        "Ldb/f;",
        "getAllowedPlatformTypes",
        "()Ljava/util/List;",
        "allowedPlatformTypes",
        "TAG",
        "Ljava/lang/String;",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "updatingNow",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance$lambda$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAllowedPlatformTypes(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;)Ljava/util/List;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getAllowedPlatformTypes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private final getAllowedPlatformTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;->access$getAllowedPlatformTypes$delegate$cp()Ldb/f;

    move-result-object p0

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static getInstance$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;-><init>()V

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;

    move-object v3, p1

    invoke-direct {v2, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    move-object v3, p1

    move-object v2, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    sget-object v5, LNc/N;->c:LWc/e;

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    new-instance v6, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7, v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;-><init>(Ljava/util/Random;ILtb/f;)V

    goto :goto_5

    :cond_5
    move-object/from16 v6, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v2

    move-object/from16 p7, v4

    move-object/from16 p8, v5

    move-object/from16 p9, v6

    invoke-virtual/range {p2 .. p9}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object v0

    return-object v0
.end method

.method private static final getInstance$lambda$0(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 10

    new-instance v9, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "getApplicationContext(...)"

    invoke-static {v1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    move-object v0, v9

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;Ltb/f;)V

    return-object v9
.end method


# virtual methods
.method public final getInstance(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x7e

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;->getInstance$default(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository$Companion;Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;ILjava/lang/Object;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    move-result-object p0

    return-object p0
.end method

.method public final getInstance(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "hashFinder"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "client"

    invoke-static {p3, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "model"

    invoke-static {p4, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "preference"

    invoke-static {p5, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioDispatcher"

    invoke-static {p6, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "backOffService"

    invoke-static {p7, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/c;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingHashFinder;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/client/SaferBrowsingClient;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingModel;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;LNc/x;Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)V

    const-class p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "getOrCreate(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingRepository;

    return-object p0
.end method
