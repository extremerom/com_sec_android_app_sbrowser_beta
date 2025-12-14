.class public Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mGetExtListDevice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "six_get_ext_list_device"
    .end annotation
.end field

.field private mGetExtListResult:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "six_get_ext_list_result"
    .end annotation
.end field

.field private mGetExtListSIVer:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "six_get_ext_list_si_ver"
    .end annotation
.end field

.field private mGetExtListTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "six_get_ext_list_time"
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListResult:I

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListTime:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListSIVer:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListDevice:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isDeviceChanged()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListDevice:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListDevice:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isDeviceChanged - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "SixExtListMetadata"

    invoke-static {v2, v0, p0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isPeriodOver()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListTime:J

    add-long/2addr v4, v2

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-wide v4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v3, p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "isPeriodOver - %b; %d and %d"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "SixExtListMetadata"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isResultSuccess()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListResult:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSIChanged()Z
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListSIVer:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixExtListMetadata;->mGetExtListSIVer:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isSIChanged - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "SixExtListMetadata"

    invoke-static {v2, v0, p0}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
