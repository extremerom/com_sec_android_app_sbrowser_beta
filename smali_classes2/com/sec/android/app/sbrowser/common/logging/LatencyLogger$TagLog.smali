.class public final Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TagLog"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0084\u0008\u0018\u00002\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0017\u0010\r\u001a\u00020\u000c8\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0017\u0010\u0012\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u0017\u0010\u0016\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u0017\u0010\u001a\u001a\u00020\u00198\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;",
        "",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "timeMillis",
        "J",
        "getTimeMillis",
        "()J",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;",
        "tag",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;",
        "getTag",
        "()Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;",
        "logType",
        "Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;",
        "getLogType",
        "()Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;",
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
.field private final logType:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tag:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final timeMillis:J


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->timeMillis:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->timeMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->tag:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->tag:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->logType:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->logType:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->timeMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->tag:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->message:Ljava/lang/String;

    invoke-static {v2, v1, v0}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->logType:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->timeMillis:J

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->tag:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$Tag;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->message:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$TagLog;->logType:Lcom/sec/android/app/sbrowser/common/logging/LatencyLogger$LogType;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TagLog(timeMillis="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", tag="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", message="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", logType="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
