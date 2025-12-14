.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u0005J\u0006\u0010\u000b\u001a\u00020\u0005R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;",
        "",
        "<init>",
        "()V",
        "DURATION_ONE_SECOND_IN_MILLIS",
        "",
        "getDURATION_ONE_SECOND_IN_MILLIS",
        "()J",
        "DURATION_ONE_SECOND_IN_NANOS",
        "getDURATION_ONE_SECOND_IN_NANOS",
        "nowTimeMillis",
        "nowTimeNanos",
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


# static fields
.field private static final DURATION_ONE_SECOND_IN_MILLIS:J

.field private static final DURATION_ONE_SECOND_IN_NANOS:J

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    sget v0, LLc/a;->c:I

    sget-object v0, LLc/c;->SECONDS:LLc/c;

    const/4 v1, 0x1

    invoke-static {v1, v0}, LOd/b;->h(ILLc/c;)J

    move-result-wide v2

    invoke-static {v2, v3}, LLc/a;->e(J)J

    move-result-wide v2

    sput-wide v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->DURATION_ONE_SECOND_IN_MILLIS:J

    invoke-static {v1, v0}, LOd/b;->h(ILLc/c;)J

    move-result-wide v2

    shr-long v4, v2, v1

    long-to-int v0, v2

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x8637bd05af6L

    cmp-long v0, v4, v0

    if-lez v0, :cond_1

    const-wide v4, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide v0, -0x8637bd05af6L

    cmp-long v0, v4, v0

    if-gez v0, :cond_2

    const-wide/high16 v4, -0x8000000000000000L

    goto :goto_0

    :cond_2
    const v0, 0xf4240

    int-to-long v0, v0

    mul-long/2addr v4, v0

    :goto_0
    sput-wide v4, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->DURATION_ONE_SECOND_IN_NANOS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDURATION_ONE_SECOND_IN_MILLIS()J
    .locals 2

    sget-wide v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->DURATION_ONE_SECOND_IN_MILLIS:J

    return-wide v0
.end method

.method public final getDURATION_ONE_SECOND_IN_NANOS()J
    .locals 2

    sget-wide v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->DURATION_ONE_SECOND_IN_NANOS:J

    return-wide v0
.end method

.method public final nowTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nowTimeNanos()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method
