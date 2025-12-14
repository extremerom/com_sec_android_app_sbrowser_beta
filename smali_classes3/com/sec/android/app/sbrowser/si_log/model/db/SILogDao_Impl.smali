.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 (2\u00020\u0001:\u0001(B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u001e\u0010\u000f\u001a\u00020\u000b2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00060\rH\u0096@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0015\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u001b\u0010\u0015\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\r0\u0011H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\'\u0010\u0017\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\r0\u00160\u0011H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0014J\'\u0010\u0018\u001a\u001a\u0012\u0016\u0012\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\r0\u00160\u0011H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0014J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000bH\u0096@\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001eR\u001a\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0014\u0010#\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u001a\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00060%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u0006)"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao;",
        "LJ2/U;",
        "__db",
        "<init>",
        "(LJ2/U;)V",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "siLogEntity",
        "",
        "insert",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;",
        "Ldb/r;",
        "delete",
        "",
        "siLogEntities",
        "deleteMultiple",
        "(Ljava/util/List;Lib/c;)Ljava/lang/Object;",
        "LQc/h;",
        "",
        "getCount",
        "()LQc/h;",
        "getAll",
        "",
        "getAllGroupByServiceId",
        "getAllGroupByEventId",
        "maxStoragePeriodDays",
        "deleteByDaysBefore",
        "(JLib/c;)Ljava/lang/Object;",
        "deleteAll",
        "(Lib/c;)Ljava/lang/Object;",
        "LJ2/U;",
        "LJ2/f;",
        "__insertAdapterOfSILogEntity",
        "LJ2/f;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;",
        "__sILogDateConverters",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;",
        "LJ2/e;",
        "__deleteAdapterOfSILogEntity",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:LJ2/U;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __deleteAdapterOfSILogEntity:LJ2/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/e;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfSILogEntity:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->$stable:I

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

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__insertAdapterOfSILogEntity:LJ2/f;

    new-instance p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$2;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$2;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__deleteAdapterOfSILogEntity:LJ2/e;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)J
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->insert$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$get__sILogDateConverters$p(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    return-object p0
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 1

    const-string v0, "SELECT ev AS distinct_ev, * FROM si_log_entity ORDER BY distinct_ev ASC, et DESC"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->getAllGroupByEventId$lambda$6(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 1

    const-string v0, "SELECT sv AS distinct_sv, * FROM si_log_entity ORDER BY distinct_sv ASC, et DESC"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->getAllGroupByServiceId$lambda$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM si_log_entity"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->deleteAll$lambda$8(Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final delete$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__deleteAdapterOfSILogEntity:LJ2/e;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handle(LS2/a;Ljava/lang/Object;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method private static final deleteAll$lambda$8(Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteByDaysBefore$lambda$7(Ljava/lang/String;JLS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1, p2}, LS2/c;->i(IJ)V

    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final deleteMultiple$lambda$2(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__deleteAdapterOfSILogEntity:LJ2/e;

    check-cast p1, Ljava/lang/Iterable;

    invoke-virtual {p0, p2, p1}, LJ2/e;->handleMultiple(LS2/a;Ljava/lang/Iterable;)I

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic e(JLS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM si_log_entity WHERE date < (STRFTIME(\'%s\', \'now\', (\'-\'||?||\' day\')) * 1000)"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->deleteByDaysBefore$lambda$7(Ljava/lang/String;JLS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LS2/a;)I
    .locals 1

    const-string v0, "SELECT COUNT(*) FROM si_log_entity"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->getCount$lambda$3(Ljava/lang/String;LS2/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->deleteMultiple$lambda$2(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Ljava/util/List;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final getAll$lambda$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/List;
    .locals 23

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    const-string v0, "sv"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v2, "ev"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "et"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "raw"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "ed"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "extra"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "date"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "id"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v10

    long-to-int v13, v10

    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v10

    long-to-int v14, v10

    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v15

    invoke-interface {v1, v4}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    move-object/from16 v18, v11

    goto :goto_1

    :cond_0
    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v10

    :goto_1
    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v19, v11

    goto :goto_2

    :cond_1
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v19, v10

    :goto_2
    invoke-interface {v1, v7}, LS2/c;->getLong(I)J

    move-result-wide v10

    move-object/from16 v12, p1

    move/from16 p0, v0

    iget-object v0, v12, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    invoke-virtual {v0, v10, v11}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;->timestampToDate(J)Ljava/sql/Date;

    move-result-object v20

    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v21

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v9

    :goto_3
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getAllGroupByEventId$lambda$6(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 25

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    const-string v0, "distinct_ev"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v2, "sv"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ev"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "et"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "raw"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ed"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "extra"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "date"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "id"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v10}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_1
    invoke-interface {v1, v2}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v3}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v4}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v9}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v12

    long-to-int v15, v12

    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-interface {v1, v4}, LS2/c;->getLong(I)J

    move-result-wide v17

    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    move-object/from16 v20, v14

    goto :goto_2

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    :goto_2
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v21, v14

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_3
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v13

    move/from16 p0, v0

    move/from16 p2, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    invoke-virtual {v2, v13, v14}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;->timestampToDate(J)Ljava/sql/Date;

    move-result-object v22

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v23

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    move-object v14, v2

    move/from16 v16, v12

    invoke-direct/range {v14 .. v24}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v10

    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getAllGroupByServiceId$lambda$5(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/Map;
    .locals 25

    move-object/from16 v0, p2

    const-string v1, "_connection"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object v1

    :try_start_0
    const-string v0, "distinct_sv"

    invoke-static {v1, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v2, "sv"

    invoke-static {v1, v2}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v2

    const-string v3, "ev"

    invoke-static {v1, v3}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v3

    const-string v4, "et"

    invoke-static {v1, v4}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v4

    const-string v5, "raw"

    invoke-static {v1, v5}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v5

    const-string v6, "ed"

    invoke-static {v1, v6}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v6

    const-string v7, "extra"

    invoke-static {v1, v7}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v7

    const-string v8, "date"

    invoke-static {v1, v8}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v8

    const-string v9, "id"

    invoke-static {v1, v9}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v9

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    :goto_0
    invoke-interface {v1}, LS2/c;->t0()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1, v0}, LS2/c;->getLong(I)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11, v10}, Lfb/B;->j(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v11, v12

    :goto_1
    invoke-interface {v1, v2}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v3}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v4}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v5}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v8}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v1, v9}, LS2/c;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v2}, LS2/c;->getLong(I)J

    move-result-wide v12

    long-to-int v15, v12

    invoke-interface {v1, v3}, LS2/c;->getLong(I)J

    move-result-wide v12

    long-to-int v12, v12

    invoke-interface {v1, v4}, LS2/c;->getLong(I)J

    move-result-wide v17

    invoke-interface {v1, v5}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v19

    invoke-interface {v1, v6}, LS2/c;->isNull(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    move-object/from16 v20, v14

    goto :goto_2

    :cond_2
    invoke-interface {v1, v6}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v20, v13

    :goto_2
    invoke-interface {v1, v7}, LS2/c;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v21, v14

    goto :goto_3

    :cond_3
    invoke-interface {v1, v7}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v21, v13

    :goto_3
    invoke-interface {v1, v8}, LS2/c;->getLong(I)J

    move-result-wide v13

    move/from16 p0, v0

    move/from16 p2, v2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__sILogDateConverters:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    invoke-virtual {v2, v13, v14}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;->timestampToDate(J)Ljava/sql/Date;

    move-result-object v22

    invoke-interface {v1, v9}, LS2/c;->getLong(I)J

    move-result-wide v23

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    move-object v14, v2

    move/from16 v16, v12

    invoke-direct/range {v14 .. v24}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V

    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p0

    move/from16 v2, p2

    goto/16 :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    return-object v10

    :goto_4
    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0
.end method

.method private static final getCount$lambda$3(Ljava/lang/String;LS2/a;)I
    .locals 2

    const-string v0, "_connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p0, v0}, LS2/c;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-int v0, v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return v0

    :goto_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->delete$lambda$1(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM si_log_entity ORDER BY et DESC"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->getAll$lambda$4(Ljava/lang/String;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static final insert$lambda$0(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;LS2/a;)J
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__insertAdapterOfSILogEntity:LJ2/f;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insertAndReturnId(LS2/a;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public delete(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/db/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;I)V

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

.method public deleteAll(Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance v0, LK9/f;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, LK9/f;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteByDaysBefore(JLib/c;)Ljava/lang/Object;
    .locals 2
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/dao/a;-><init>(JI)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {p0, p3, v0, p1, p2}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public deleteMultiple(Ljava/util/List;Lib/c;)Ljava/lang/Object;
    .locals 3
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            ">;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance v1, LH9/c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, p1, v2}, LH9/c;-><init>(Ljava/lang/Object;Ljava/util/List;I)V

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

.method public getAll()LQc/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    const-string v1, "si_log_entity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/db/b;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/si_log/model/db/b;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;I)V

    invoke-static {v0, v1, v2}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getAllGroupByEventId()LQc/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    const-string v1, "si_log_entity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/db/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/si_log/model/db/b;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;I)V

    invoke-static {v0, v1, v2}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getAllGroupByServiceId()LQc/h;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    const-string v1, "si_log_entity"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/si_log/model/db/b;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/sec/android/app/sbrowser/si_log/model/db/b;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;I)V

    invoke-static {v0, v1, v2}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public getCount()LQc/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LQc/h;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    const-string v0, "si_log_entity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, LK9/f;

    const/16 v2, 0x1b

    invoke-direct {v1, v2}, LK9/f;-><init>(I)V

    invoke-static {p0, v0, v1}, LG5/Z3;->d(LJ2/U;[Ljava/lang/String;Lsb/k;)LL2/l;

    move-result-object p0

    return-object p0
.end method

.method public insert(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
            "Lib/c<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->__db:LJ2/U;

    new-instance v1, Lcom/sec/android/app/sbrowser/si_log/model/db/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/a;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;I)V

    const/4 p0, 0x0

    const/4 p1, 0x1

    invoke-static {v0, p2, v1, p0, p1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
