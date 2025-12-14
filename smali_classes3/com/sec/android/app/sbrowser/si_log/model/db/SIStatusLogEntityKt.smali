.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntityKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a \u0010\u0003\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "toDto",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "stringToMap",
        "",
        "",
        "extra",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# direct methods
.method public static final stringToMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-eqz p0, :cond_3

    invoke-static {p0}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lfb/C;->g(I)I

    move-result v0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    move v0, v2

    :cond_1
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "="

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, v1}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final toDto(Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;)Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
    .locals 7
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getServiceId()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getEventId()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getIuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getExtraParameter()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntityKt;->stringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method
