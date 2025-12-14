.class public final Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\t\u001a\u00020\u00082\u0006\u0010\u0007\u001a\u00020\u0006H\u0096@\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\r\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u000c0\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0008H\u0096@\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J \u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0096@\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u001aR\u001a\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u001b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao;",
        "LJ2/U;",
        "__db",
        "<init>",
        "(LJ2/U;)V",
        "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
        "item",
        "Ldb/r;",
        "insert",
        "(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lib/c;)Ljava/lang/Object;",
        "Landroidx/lifecycle/S;",
        "",
        "getHistory",
        "()Landroidx/lifecycle/S;",
        "",
        "keyword",
        "delete",
        "(Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "deleteAll",
        "(Lib/c;)Ljava/lang/Object;",
        "deleteOldHistory",
        "startTime",
        "endTime",
        "deleteHistoryBetween",
        "(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;",
        "LJ2/U;",
        "LJ2/f;",
        "__insertAdapterOfSearchHistoryItem",
        "LJ2/f;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final __db:LJ2/U;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final __insertAdapterOfSearchHistoryItem:LJ2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LJ2/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->Companion:Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->$stable:I

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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance p1, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$1;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl$1;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__insertAdapterOfSearchHistoryItem:LJ2/f;

    return-void
.end method

.method public static synthetic a(LS2/a;)Ljava/util/List;
    .locals 1

    const-string v0, "SELECT * FROM history order by DATETIME desc limit 10"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->getHistory$lambda$1(Ljava/lang/String;LS2/a;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM history WHERE DATETIME BETWEEN ? AND ?"

    invoke-static {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->deleteHistoryBetween$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;LS2/a;)Ldb/r;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->insert$lambda$0(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM history where julianday(Date(\'now\')) - julianday(Date(DATETIME)) > 30"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->deleteOldHistory$lambda$4(Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final delete$lambda$2(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    invoke-interface {p0, p2, p1}, LS2/c;->x(ILjava/lang/String;)V

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

.method private static final deleteAll$lambda$3(Ljava/lang/String;LS2/a;)Ldb/r;
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

.method private static final deleteHistoryBetween$lambda$5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    const/4 p3, 0x1

    :try_start_0
    invoke-interface {p0, p3, p1}, LS2/c;->x(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-interface {p0, p1, p2}, LS2/c;->x(ILjava/lang/String;)V

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

.method private static final deleteOldHistory$lambda$4(Ljava/lang/String;LS2/a;)Ldb/r;
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

.method public static synthetic e(Ljava/lang/String;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM history where KEYWORD = ?"

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->delete$lambda$2(Ljava/lang/String;Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "DELETE FROM history"

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->deleteAll$lambda$3(Ljava/lang/String;LS2/a;)Ldb/r;

    move-result-object p0

    return-object p0
.end method

.method private static final getHistory$lambda$1(Ljava/lang/String;LS2/a;)Ljava/util/List;
    .locals 7

    const-string v0, "_connection"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    const-string p1, "_ID"

    invoke-static {p0, p1}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result p1

    const-string v0, "KEYWORD"

    invoke-static {p0, v0}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v0

    const-string v1, "DATETIME"

    invoke-static {p0, v1}, LD/a;->f(LS2/c;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, LS2/c;->t0()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p0, p1}, LS2/c;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {p0, p1}, LS2/c;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    :goto_1
    invoke-interface {p0, v0}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1}, LS2/c;->j0(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;

    invoke-direct {v6, v3, v4, v5}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    return-object v2

    :goto_2
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    throw p1
.end method

.method private static final insert$lambda$0(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;LS2/a;)Ldb/r;
    .locals 1

    const-string v0, "_connection"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__insertAdapterOfSearchHistoryItem:LJ2/f;

    invoke-virtual {p0, p2, p1}, LJ2/f;->insert(LS2/a;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method


# virtual methods
.method public delete(Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance v0, LH9/e;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, LH9/e;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p2, v0, p1, v1}, LA/b;->i(LJ2/U;Lib/c;Lsb/k;ZZ)Ljava/lang/Object;

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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance v0, LK9/f;

    const/16 v1, 0x16

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

.method public deleteHistoryBetween(Ljava/lang/String;Ljava/lang/String;Lib/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance v0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/sec/android/app/sbrowser/search_window/model/search_history/a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

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

.method public deleteOldHistory(Lib/c;)Ljava/lang/Object;
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

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance v0, LK9/f;

    const/16 v1, 0x17

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

.method public getHistory()Landroidx/lifecycle/S;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/S;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    invoke-virtual {p0}, LJ2/U;->getInvalidationTracker()LJ2/s;

    move-result-object p0

    const-string v0, "history"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, LK9/f;

    const/16 v2, 0x18

    invoke-direct {v1, v2}, LK9/f;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, LJ2/s;->c:LJ2/C0;

    invoke-virtual {v2, v0}, LJ2/C0;->g([Ljava/lang/String;)Ldb/j;

    iget-object p0, p0, LJ2/s;->h:LL8/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LJ2/X;

    iget-object v3, p0, LL8/a;->b:Ljava/lang/Object;

    check-cast v3, LJ2/U;

    invoke-direct {v2, v3, p0, v0, v1}, LJ2/X;-><init>(LJ2/U;LL8/a;[Ljava/lang/String;LK9/f;)V

    return-object v2
.end method

.method public insert(Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;
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
            "Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryItem;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/search_window/model/search_history/SearchHistoryDao_Impl;->__db:LJ2/U;

    new-instance v1, LH9/c;

    const/16 v2, 0x8

    invoke-direct {v1, v2, p0, p1}, LH9/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

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
