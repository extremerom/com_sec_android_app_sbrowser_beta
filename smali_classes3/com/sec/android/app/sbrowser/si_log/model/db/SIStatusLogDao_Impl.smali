.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000  2\u00020\u0001:\u0001 B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0096@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J!\u0010\u0014\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0016\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0016H\u0096@\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0019R\u001a\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001d8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006!"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "LJ2/U;",
        "__db",
        "<init>",
        "(LJ2/U;)V",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "siStatusLogEntity",
        "",
        "insert",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;",
        "Ldb/r;",
        "update",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
        "siStatusLogDto",
        "insertOrUpdateStatusLog",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;",
        "",
        "sv",
        "ev",
        "findOneByServiceIdAndEventId",
        "(II)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "",
        "getStatusLogs",
        "(Lib/c;)Ljava/lang/Object;",
        "LJ2/U;",
        "LJ2/f;",
        "__insertAdapterOfSIStatusLogEntity",
        "LJ2/f;",
        "LJ2/e;",
        "__updateAdapterOfSIStatusLogEntity",
        "LJ2/e;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:LJ2/U;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfSIStatusLogEntity:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __updateAdapterOfSIStatusLogEntity:LJ2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->$stable:I

    return-void
.end method

.method public constructor <init>(LJ2/U;)V
    .locals 1
    .param p1    # LJ2/U;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "__db"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$1;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$1;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__insertAdapterOfSIStatusLogEntity:LJ2/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$2;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$2;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__updateAdapterOfSIStatusLogEntity:LJ2/e;

    return-void
.end method

.method public static synthetic a(IILS2/a;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
    .locals 1

    const-string v0, "SELECT * FROM si_status_log WHERE ? = sv AND ? = ev LIMIT 1"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->findOneByServiceIdAndEventId$lambda$2(Ljava/lang/String;IILS2/a;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->update$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM si_status_log"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->getStatusLogs$lambda$3(Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->insert$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final findOneByServiceIdAndEventId$lambda$2(Ljava/lang/String;IILS2/a;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
    .locals 17

    move-object/from16 v0, p3

    const-string v1, "_connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    const/4 v0, 0x1

    move/from16 v2, p1

    int-to-long v2, v2

    :try_start_0
    invoke-interface {v1, v0, v2, v3}, LS2/c;->i(IJ)V

    const/4 v0, 0x2

    move/from16 v2, p2

    int-to-long v2, v2

    invoke-interface {v1, v0, v2, v3}, LS2/c;->i(IJ)V

    const-string v0, "id"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v2, "sv"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ev"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ui"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ed"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "extraParameter"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_3

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v2

    long-to-int v13, v2

    invoke-interface {v1, v4}, LS2/c;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v14, v8

    goto :goto_0

    :cond_0
    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    :goto_0
    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v15, v8

    goto :goto_1

    :cond_1
    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    :goto_1
    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move-object/from16 v16, v8

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :goto_3
    new-instance v8, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v8

    :goto_5
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getStatusLogs$lambda$3(Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "_connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    const-string v0, "id"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v2, "sv"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ev"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "ui"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ed"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "extraParameter"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v10

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v8

    long-to-int v12, v8

    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v8

    long-to-int v13, v8

    invoke-interface {v1, v4}, LS2/c;->isNull(I)Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    move-object v14, v9

    goto :goto_1

    :cond_0
    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    move-object v14, v8

    :goto_1
    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v15, v9

    goto :goto_2

    :cond_1
    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    move-object v15, v8

    :goto_2
    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object/from16 v16, v9

    goto :goto_3

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v16, v8

    :goto_3
    new-instance v8, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-object v9, v8

    invoke-direct/range {v9 .. v16}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v7

    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final insert$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__insertAdapterOfSIStatusLogEntity:LJ2/f;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insertAndReturnId(LS2/a;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final update$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__updateAdapterOfSIStatusLogEntity:LJ2/e;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handle(LS2/a;Ljava/lang/Object;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public findOneByServiceIdAndEventId(II)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/e;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/e;-><init>(II)V

    const/4 p1, 0x1

    invoke-static {p0, p1, p1, v0}, LA/b;->g(LJ2/U;ZZLsb/k;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    return-object p0
.end method

.method public getStatusLogs(Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance v0, LK9/f;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, LK9/f;-><init>(I)V

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1, v1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
            "Lib/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/db/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/d;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public insertOrUpdateStatusLog(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$insertOrUpdateStatusLog$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$insertOrUpdateStatusLog$2;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)V

    invoke-static {v0, p2, v1}, LA/b;->h(LJ2/U;Lib/c;Lsb/k;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public update(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/db/d;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/d;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
