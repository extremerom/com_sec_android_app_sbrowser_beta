.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;
.super LJ2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;-><init>(LJ2/U;)V
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
        "com/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1",
        "LJ2/f;",
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "",
        "createQuery",
        "()Ljava/lang/String;",
        "LS2/c;",
        "statement",
        "entity",
        "Ldb/r;",
        "bind",
        "(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V",
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
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bind(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V
    .locals 3

    const-string v0, "statement"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entity"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getServiceId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, LS2/c;->i(IJ)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getEventId()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, LS2/c;->i(IJ)V

    const/4 v0, 0x3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getEventTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, LS2/c;->i(IJ)V

    const/4 v0, 0x4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getRaw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, LS2/c;->x(ILjava/lang/String;)V

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, LS2/c;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1, v0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getExtra()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LS2/c;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v0}, LS2/c;->x(ILjava/lang/String;)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;->access$get__sILogDateConverters$p(Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl;)Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;

    move-result-object p0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getDate()Ljava/sql/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDateConverters;->dateToTimestamp(Ljava/sql/Date;)J

    move-result-wide v0

    const/4 p0, 0x7

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    const/16 p0, 0x8

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->getId()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, LS2/c;->i(IJ)V

    return-void
.end method

.method public bridge synthetic bind(LS2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogDao_Impl$1;->bind(LS2/c;Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 0

    const-string p0, "INSERT OR ABORT INTO `si_log_entity` (`sv`,`ev`,`et`,`raw`,`ed`,`extra`,`date`,`id`) VALUES (?,?,?,?,?,?,?,nullif(?, 0))"

    return-object p0
.end method
