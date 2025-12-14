.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$1;
.super LJ2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl;-><init>(LJ2/U;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LJ2/f;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "com/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$1",
        "LJ2/f;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "",
        "createQuery",
        "()Ljava/lang/String;",
        "LS2/c;",
        "statement",
        "entity",
        "Ldb/r;",
        "bind",
        "(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;)V",
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;)V
    .locals 2

    const-string p0, "statement"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "entity"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getServiceId()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getEventId()I

    move-result p0

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getIuid()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, LS2/c;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_1

    invoke-interface {p1, v0}, LS2/c;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v0, p0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->getExtraParameter()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    if-nez p0, :cond_2

    invoke-interface {p1, p2}, LS2/c;->l(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, p2, p0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method public bridge synthetic bind(LS2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogDao_Impl$1;->bind(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `si_status_log` (`id`,`sv`,`ev`,`ui`,`ed`,`extraParameter`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object p0
.end method
