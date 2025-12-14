.class public final Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0007\u0018\u0000 \'2\u00020\u0001:\u0001\'B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\n\u001a\u00020\tH\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\r\u0010\u000c\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\r\u0010\r\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000bJ\u0010\u0010\u000f\u001a\u00020\u000eH\u0086@\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\n \u0017*\u0004\u0018\u00010\u00160\u00168\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001a\u001a\u00020\t8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001bR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR%\u0010&\u001a\u00060\u001fj\u0002` 8BX\u0082\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u0012\u0004\u0008%\u0010\u0012\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;",
        "",
        "Ljava/util/Random;",
        "random",
        "<init>",
        "(Ljava/util/Random;)V",
        "",
        "isWaitingTimeOver",
        "()Z",
        "",
        "calculateWaitingTime",
        "()J",
        "isBackOffModeTurnedOn",
        "remainingWaitTime",
        "Ldb/r;",
        "turnOnBackOffMode",
        "(Lib/c;)Ljava/lang/Object;",
        "turnOffBackOffMode",
        "()V",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;",
        "kotlin.jvm.PlatformType",
        "preference",
        "Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;",
        "waitingTimeMillis",
        "J",
        "",
        "requestTry",
        "I",
        "LNc/Z;",
        "Lkotlinx/coroutines/CloseableCoroutineDispatcher;",
        "newContext$delegate",
        "Ldb/f;",
        "getNewContext",
        "()LNc/Z;",
        "getNewContext$annotations",
        "newContext",
        "Companion",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final newContext$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

.field private final random:Ljava/util/Random;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private requestTry:I

.field private waitingTimeMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->Companion:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2
    .param p1    # Ljava/util/Random;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "random"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->random:Ljava/util/Random;

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getInstance()Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBBackOffWaitingTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->waitingTimeMillis:J

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->getSBBackOffRequestTry()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->requestTry:I

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/i;-><init>(I)V

    invoke-static {p1}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->newContext$delegate:Ldb/f;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Random;ILtb/f;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;-><init>(Ljava/util/Random;)V

    return-void
.end method

.method public static synthetic a()LNc/Z;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->newContext_delegate$lambda$0()LNc/Z;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$calculateWaitingTime(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->calculateWaitingTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final synthetic access$getPreference$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    return-object p0
.end method

.method public static final synthetic access$getRequestTry$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->requestTry:I

    return p0
.end method

.method public static final synthetic access$getWaitingTimeMillis$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->waitingTimeMillis:J

    return-wide v0
.end method

.method public static final synthetic access$isWaitingTimeOver(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->isWaitingTimeOver()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setRequestTry$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->requestTry:I

    return-void
.end method

.method public static final synthetic access$setWaitingTimeMillis$p(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->waitingTimeMillis:J

    return-void
.end method

.method private final calculateWaitingTime()J
    .locals 7

    iget v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->requestTry:I

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    const/16 v0, 0xf

    int-to-double v5, v0

    mul-double/2addr v3, v5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->random:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    int-to-float v0, v2

    add-float/2addr p0, v0

    float-to-double v5, p0

    mul-double/2addr v3, v5

    double-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-object p0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x18

    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private final getNewContext()LNc/Z;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->newContext$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LNc/Z;

    return-object p0
.end method

.method private final isWaitingTimeOver()Z
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->waitingTimeMillis:J

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static final newContext_delegate$lambda$0()LNc/Z;
    .locals 1

    const-string v0, "SaferBrowsingBackOffService turnOffBackOffMode"

    invoke-static {v0}, LNc/E;->A(Ljava/lang/String;)LNc/a0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final isBackOffModeTurnedOn()Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->isWaitingTimeOver()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final remainingWaitTime()J
    .locals 4

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->waitingTimeMillis:J

    sget-object p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->INSTANCE:Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/utils/TimeUtils;->nowTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final turnOffBackOffMode()V
    .locals 2

    const-string v0, "SaferBrowsingBackOffService"

    const-string v1, "turnOffBackOffMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->requestTry:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->preference:Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/ProtectedBrowsingPreference;->updateSBBackOffRequestTry(I)V

    return-void
.end method

.method public final turnOnBackOffMode(Lib/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;->getNewContext()LNc/Z;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService$turnOnBackOffMode$2;-><init>(Lcom/sec/android/app/sbrowser/safe_browsing/v4/model/SaferBrowsingBackOffService;Lib/c;)V

    invoke-static {v0, v1, p1}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
