.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static insertOrUpdateStatusLog(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
            "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;",
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

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDtoKt;->toEntity(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getServiceId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getEventId()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;->findOneByServiceIdAndEventId(II)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    move-result-object v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_1

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;->insert(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getIuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->setIuid(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getExtraParameter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->setExtraParameter(Ljava/lang/String;)V

    invoke-interface {p0, v0, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao;->update(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v1
.end method
