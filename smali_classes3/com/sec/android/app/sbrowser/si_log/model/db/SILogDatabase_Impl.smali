.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;
.super Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ)\u0010\r\u001a\u001c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b\u0012\u000e\u0012\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\u000c0\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u001d\u0010\u0011\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b0\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J1\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000c2\u001a\u0010\u0013\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00100\u000b\u0012\u0004\u0012\u00020\u00100\nH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;",
        "<init>",
        "()V",
        "LJ2/Z;",
        "createOpenDelegate",
        "()LJ2/Z;",
        "LJ2/s;",
        "createInvalidationTracker",
        "()LJ2/s;",
        "",
        "LAb/c;",
        "",
        "getRequiredTypeConverterClasses",
        "()Ljava/util/Map;",
        "",
        "",
        "getRequiredAutoMigrationSpecClasses",
        "()Ljava/util/Set;",
        "autoMigrationSpecs",
        "LN2/a;",
        "createAutoMigrations",
        "(Ljava/util/Map;)Ljava/util/List;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "siLogDao",
        "()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "siStatusLogDao",
        "()Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "Ldb/f;",
        "_sILogDao",
        "Ldb/f;",
        "_sIStatusLogDao",
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
.field private final _sILogDao:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final _sIStatusLogDao:Ldb/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldb/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/c;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sILogDao:Ldb/f;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/c;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sIStatusLogDao:Ldb/f;

    return-void
.end method

.method private static final _sILogDao$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;-><init>(LJ2/U;)V

    return-object v0
.end method

.method private static final _sIStatusLogDao$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;-><init>(LJ2/U;)V

    return-object v0
.end method

.method public static final synthetic access$internalInitInvalidationTracker(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;LS2/a;)V
    .locals 0

    invoke-virtual {p0, p1}, LJ2/U;->internalInitInvalidationTracker(LS2/a;)V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sILogDao$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sIStatusLogDao$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createAutoMigrations(Ljava/util/Map;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "LN2/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "autoMigrationSpecs"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public createInvalidationTracker()LJ2/s;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v2, LJ2/s;

    const-string v3, "si_log_entity"

    const-string v4, "si_status_log"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v0, v1, v3}, LJ2/s;-><init>(LJ2/U;Ljava/util/HashMap;Ljava/util/HashMap;[Ljava/lang/String;)V

    return-object v2
.end method

.method public createOpenDelegate()LJ2/Z;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;)V

    return-object v0
.end method

.method public bridge synthetic createOpenDelegate()LJ2/a0;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->createOpenDelegate()LJ2/Z;

    move-result-object p0

    return-object p0
.end method

.method public getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "LAb/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p0
.end method

.method public getRequiredTypeConverterClasses()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "LAb/c;",
            "Ljava/util/List<",
            "LAb/c;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    sget-object v0, Ltb/x;->a:Ltb/y;

    const-class v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    invoke-virtual {v0, v1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    invoke-virtual {v0, v1}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;->getRequiredConverters()Ljava/util/List;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public siLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sILogDao:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;

    return-object p0
.end method

.method public siStatusLogDao()Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDatabase_Impl;->_sIStatusLogDao:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;

    return-object p0
.end method
