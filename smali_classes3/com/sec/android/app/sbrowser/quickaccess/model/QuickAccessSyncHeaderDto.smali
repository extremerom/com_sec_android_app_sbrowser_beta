.class public final Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
.super Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\n\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ8\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJ\u0010\u0010\u0010\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u000cR\u0017\u0010\u0004\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u000cR\u0017\u0010\u0006\u001a\u00020\u00058\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0011R\u0017\u0010\u0008\u001a\u00020\u00078\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;",
        "",
        "deviceId",
        "deviceName",
        "",
        "totalItemCount",
        "",
        "lastModifiedTime",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;IJ)V",
        "component1",
        "()Ljava/lang/String;",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;",
        "toString",
        "hashCode",
        "()I",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getDeviceId",
        "getDeviceName",
        "I",
        "getTotalItemCount",
        "J",
        "getLastModifiedTime",
        "()J",
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
.field private final deviceId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final deviceName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastModifiedTime:J

.field private final totalItemCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "deviceId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceName"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncDto;-><init>(Ltb/f;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;IJILtb/f;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    move-wide v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;Ljava/lang/String;Ljava/lang/String;IJILjava/lang/Object;)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;IJ)Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "deviceId"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "deviceName"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;-><init>(Ljava/lang/String;Ljava/lang/String;IJ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    iget v3, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    iget-wide p0, p1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDeviceName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public final getLastModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    return-wide v0
.end method

.method public final getTotalItemCount()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/e;->d(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    invoke-static {v2, v0, v1}, LB/e;->c(III)I

    move-result v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceId:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->deviceName:Ljava/lang/String;

    iget v2, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->totalItemCount:I

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessSyncHeaderDto;->lastModifiedTime:J

    const-string p0, "QuickAccessSyncHeaderDto(deviceId="

    const-string v5, ", deviceName="

    const-string v6, ", totalItemCount="

    invoke-static {p0, v0, v5, v1, v6}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", lastModifiedTime="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
