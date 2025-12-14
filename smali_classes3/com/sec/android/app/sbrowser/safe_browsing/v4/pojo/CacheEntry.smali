.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001a\u0010\u000c\u001a\u00020\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R \u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u0012\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;",
        "",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "threatListDescriptor",
        "",
        "validityDurationNanos",
        "<init>",
        "(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;D)V",
        "",
        "isValid",
        "()Z",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "getThreatListDescriptor",
        "()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;",
        "validTillTimeNanos",
        "D",
        "getValidTillTimeNanos",
        "()D",
        "getValidTillTimeNanos$annotations",
        "()V",
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
.field private final threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final validTillTimeNanos:D


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;D)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "threatListDescriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    sget-object p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeNanos()J

    move-result-wide v0

    long-to-double v0, v0

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->validTillTimeNanos:D

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;DILtb/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;D)V

    return-void
.end method

.method public static synthetic getValidTillTimeNanos$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.sec.android.app.sbrowser.safe_browsing.v4.pojo.CacheEntry"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getThreatListDescriptor()Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;->hashCode()I

    move-result p0

    return p0
.end method

.method public final isValid()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->validTillTimeNanos:D

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeNanos()J

    move-result-wide v2

    long-to-double v2, v2

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->threatListDescriptor:Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/ThreatListDescriptor;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/pojo/CacheEntry;->validTillTimeNanos:D

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "CacheEntry(threatListDescriptor="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", validTillTimeNanos="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
