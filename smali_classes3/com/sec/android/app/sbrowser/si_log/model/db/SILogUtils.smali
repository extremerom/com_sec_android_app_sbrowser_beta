.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "com/sec/android/app/sbrowser/si_log/model/db/SILogUtils__SILogEntityKt"
    }
    k = 0x4
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getStringDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 0
    .param p0    # Ljava/sql/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils__SILogEntityKt;->getStringDate(Ljava/sql/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringDateFromTimestamp(J)Ljava/lang/String;
    .locals 0
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils__SILogEntityKt;->getStringDateFromTimestamp(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getStringEventId(I)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils__SILogEntityKt;->getStringEventId(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final siLogEntityToSummary(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogUtils__SILogEntityKt;->siLogEntityToSummary(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
