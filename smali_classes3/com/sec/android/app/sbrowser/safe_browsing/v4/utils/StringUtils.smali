.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u000b\u001a\u00020\u000c*\u00020\u000cH\u0007J\u0012\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005H\u0007J\u0010\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0010\u0010\u0010\u001a\u00020\u000c2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005R\u0018\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007R\u0018\u0010\u0008\u001a\n \u0006*\u0004\u0018\u00010\t0\tX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "kotlin.jvm.PlatformType",
        "Ljava/lang/String;",
        "DURATION_STRING_PATTERN",
        "Ljava/util/regex/Pattern;",
        "Ljava/util/regex/Pattern;",
        "clipInRange",
        "",
        "parseDurationStringToDoubleSeconds",
        "durationString",
        "parseDurationStringToDoubleMillis",
        "parseDurationStringToDoubleNanos",
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
.field public static final $stable:I

.field private static final DURATION_STRING_PATTERN:Ljava/util/regex/Pattern;

.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;

    const-string v0, "StringUtils"

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->TAG:Ljava/lang/String;

    const-string v0, "(\\d+)?[.]?\\d{1,9}s"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->DURATION_STRING_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clipInRange(D)D
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public final parseDurationStringToDoubleMillis(Ljava/lang/String;)D
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->parseDurationStringToDoubleSeconds(Ljava/lang/String;)D

    move-result-wide v0

    sget-object p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->getDURATION_ONE_SECOND_IN_MILLIS()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->clipInRange(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final parseDurationStringToDoubleNanos(Ljava/lang/String;)D
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->parseDurationStringToDoubleSeconds(Ljava/lang/String;)D

    move-result-wide v0

    sget-object p1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->getDURATION_ONE_SECOND_IN_NANOS()J

    move-result-wide v2

    long-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->clipInRange(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final parseDurationStringToDoubleSeconds(Ljava/lang/String;)D
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, LKc/k;->x(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->DURATION_STRING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "substring(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->clipInRange(D)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v2, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/StringUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Error During Conversion of `"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-wide v0
.end method
