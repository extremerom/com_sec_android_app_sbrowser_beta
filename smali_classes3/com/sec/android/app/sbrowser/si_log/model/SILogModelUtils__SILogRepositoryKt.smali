.class final synthetic Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils__SILogRepositoryKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a%\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u0007\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;",
        "siStatusLogDto",
        "LNc/B;",
        "scope",
        "Ldb/r;",
        "updateSIStatusLogWithScope",
        "(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;LNc/B;)V",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x5
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
    xs = "com/sec/android/app/sbrowser/si_log/model/SILogModelUtils"
.end annotation


# direct methods
.method public static final updateSIStatusLogWithScope(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siStatusLogDto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils;->updateSIStatusLogWithScope$default(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;LNc/B;ILjava/lang/Object;)V

    return-void
.end method

.method public static final updateSIStatusLogWithScope(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;LNc/B;)V
    .locals 2
    .param p0    # Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmName;
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "siStatusLogDto"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils__SILogRepositoryKt$updateSIStatusLogWithScope$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils__SILogRepositoryKt$updateSIStatusLogWithScope$1;-><init>(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p2, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public static synthetic updateSIStatusLogWithScope$default(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;LNc/B;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object p2

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/SILogModelUtils;->updateSIStatusLogWithScope(Lcom/sec/android/app/sbrowser/si_log/model/SILogRepository;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDto;LNc/B;)V

    return-void
.end method
