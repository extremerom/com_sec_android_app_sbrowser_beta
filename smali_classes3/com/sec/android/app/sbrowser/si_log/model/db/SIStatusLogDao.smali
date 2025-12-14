.class public interface abstract Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0003\u0008g\u0018\u00002\u00020\u0001J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J!\u0010\n\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\'\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0097@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u0002H\u00a7@\u00a2\u0006\u0004\u0008\u0011\u0010\u0006J\u0016\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u00a7@\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
        "",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "siStatusLogEntity",
        "",
        "insert",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;",
        "",
        "sv",
        "ev",
        "findOneByServiceIdAndEventId",
        "(II)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
        "siStatusLogDto",
        "Ldb/r;",
        "insertOrUpdateStatusLog",
        "(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;",
        "update",
        "",
        "getStatusLogs",
        "(Lib/c;)Ljava/lang/Object;",
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


# virtual methods
.method public abstract findOneByServiceIdAndEventId(II)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getStatusLogs(Lib/c;)Ljava/lang/Object;
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
    .end annotation

    .annotation build Landroidx/room/Transaction;
    .end annotation

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
.end method

.method public abstract insert(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
    .end annotation

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
.end method

.method public abstract insertOrUpdateStatusLog(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

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
.end method

.method public abstract update(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Update;
    .end annotation

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
.end method
