.class public final Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation build Landroidx/room/Entity;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001BU\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0013R\u001a\u0010\u0004\u001a\u00020\u00028\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0018\u001a\u0004\u0008\u001a\u0010\u0013R\u001a\u0010\u0006\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001dR\u001a\u0010\u0008\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0011R\u001c\u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u001e\u001a\u0004\u0008 \u0010\u0011R\u001c\u0010\n\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u001e\u001a\u0004\u0008!\u0010\u0011R\u001a\u0010\u000c\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\"\u001a\u0004\u0008#\u0010$R\u001a\u0010\r\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001b\u001a\u0004\u0008%\u0010\u001d\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;",
        "",
        "",
        "serviceId",
        "eventId",
        "",
        "eventTime",
        "",
        "raw",
        "extraValue",
        "extra",
        "Ljava/sql/Date;",
        "date",
        "id",
        "<init>",
        "(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getServiceId",
        "getEventId",
        "J",
        "getEventTime",
        "()J",
        "Ljava/lang/String;",
        "getRaw",
        "getExtraValue",
        "getExtra",
        "Ljava/sql/Date;",
        "getDate",
        "()Ljava/sql/Date;",
        "getId",
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
.field private final date:Ljava/sql/Date;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eventId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private final eventTime:J
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field

.field private final extra:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final extraValue:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final id:J
    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private final raw:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serviceId:I
    .annotation build Landroidx/room/ColumnInfo;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V
    .locals 1
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p8    # Ljava/sql/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "raw"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p8, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    iput-object p8, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    iput-wide p9, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;JILtb/f;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object/from16 v9, p6

    :goto_0
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_1

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/sql/Date;-><init>(J)V

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    move-wide v12, v0

    goto :goto_3

    :cond_3
    move-wide/from16 v12, p9

    :goto_3
    move-object v3, p0

    move v4, p1

    move/from16 v5, p2

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v13}, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;-><init>(IIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/sql/Date;J)V

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
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    iget-wide v5, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    iget-wide p0, p1, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final getDate()Ljava/sql/Date;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    return-object p0
.end method

.method public final getEventId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    return p0
.end method

.method public final getEventTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    return-wide v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtraValue()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    return-wide v0
.end method

.method public final getRaw()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    invoke-static {v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->f(JII)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 12
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->serviceId:I

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventId:I

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->eventTime:J

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->raw:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extraValue:Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->extra:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->date:Ljava/sql/Date;

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/si_log/model/db/SILogEntity;->id:J

    const-string p0, "SILogEntity(serviceId="

    const-string v10, ", eventId="

    const-string v11, ", eventTime="

    invoke-static {v0, v1, p0, v10, v11}, Lcom/sec/android/app/sbrowser/autofill/password/k;->l(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", raw="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", extraValue="

    const-string v1, ", extra="

    invoke-static {p0, v0, v5, v1, v6}, LB/e;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", date="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-static {v8, v9, v0, p0}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
