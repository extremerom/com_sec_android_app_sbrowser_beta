.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Entity;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0016\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0004H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0010\"\u0004\u0008\u001c\u0010\u001dR\"\u0010\u0006\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0006\u0010\u001a\u001a\u0004\u0008\u001e\u0010\u0010\"\u0004\u0008\u001f\u0010\u001dR$\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010 \u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010#R$\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010 \u001a\u0004\u0008$\u0010\u000e\"\u0004\u0008%\u0010#R$\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010 \u001a\u0004\u0008&\u0010\u000e\"\u0004\u0008\'\u0010#\u00a8\u0006("
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;",
        "",
        "",
        "id",
        "",
        "serviceId",
        "eventId",
        "",
        "iuid",
        "value",
        "extraParameter",
        "<init>",
        "(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getId",
        "()J",
        "setId",
        "(J)V",
        "I",
        "getServiceId",
        "setServiceId",
        "(I)V",
        "getEventId",
        "setEventId",
        "Ljava/lang/String;",
        "getIuid",
        "setIuid",
        "(Ljava/lang/String;)V",
        "getValue",
        "setValue",
        "getExtraParameter",
        "setExtraParameter",
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
.field private eventId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private extraParameter:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private id:J
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private iuid:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private serviceId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private value:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    iput p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    iput p4, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILtb/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide v3, p1

    :goto_0
    and-int/lit8 v0, p8, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move-object v9, v1

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    move-object v2, p0

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;-><init>(JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getEventId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    return p0
.end method

.method public final getExtraParameter()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    return-wide v0
.end method

.method public final getIuid()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    return p0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    return v0
.end method

.method public final setExtraParameter(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    return-void
.end method

.method public final setIuid(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->id:J

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->serviceId:I

    iget v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->eventId:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->iuid:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->value:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SIStatusLogEntity;->extraParameter:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "SIStatusLogEntity(id="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", serviceId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", eventId="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", iuid="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", value="

    const-string v1, ", extraParameter="

    invoke-static {v6, v0, v5, v1, p0}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
