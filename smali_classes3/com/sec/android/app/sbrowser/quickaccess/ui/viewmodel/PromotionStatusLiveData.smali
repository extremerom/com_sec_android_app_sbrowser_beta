.class public final Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/X;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u0000 \u001d2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u001dB%\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ7\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000fH\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;",
        "Landroidx/lifecycle/X;",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;",
        "Landroid/content/Context;",
        "context",
        "LNc/x;",
        "dispatcher",
        "Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;",
        "promotionRepository",
        "<init>",
        "(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V",
        "",
        "enable",
        "",
        "url",
        "",
        "count",
        "",
        "lastDisplayedTime",
        "iuid",
        "isVisible",
        "(ZLjava/lang/String;IJI)Z",
        "newValue",
        "Ldb/r;",
        "setValueIfChanged",
        "(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V",
        "LNc/B;",
        "backgroundScope",
        "LNc/B;",
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

.field public static final Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final backgroundScope:LNc/B;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->Companion:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;-><init>(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;ILtb/f;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LNc/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x3

    const-string v1, "context"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dispatcher"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "promotionRepository"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-direct {p1, v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;-><init>(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    invoke-static {p2}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->backgroundScope:LNc/B;

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionEnabledFlow()LQc/h;

    move-result-object p2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionUrlFlow()LQc/h;

    move-result-object v2

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionCountFlow()LQc/h;

    move-result-object v3

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionLastDisplayedTimeFlow()LQc/h;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;->getPromotionIuidFlow()LQc/h;

    move-result-object p3

    new-instance v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData$1;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;Lib/c;)V

    const/4 p0, 0x5

    new-array p0, p0, [LQc/h;

    aput-object p2, p0, v1

    const/4 p2, 0x1

    aput-object v2, p0, p2

    const/4 p2, 0x2

    aput-object v3, p0, p2

    aput-object v4, p0, v0

    const/4 p2, 0x4

    aput-object p3, p0, p2

    new-instance p2, LJ2/v;

    invoke-direct {p2, v0, p0, v5}, LJ2/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, LQc/m;

    invoke-direct {p0, p2, v6}, LQc/m;-><init>(LQc/h;Lib/c;)V

    invoke-static {p1, v6, v6, p0, v0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;ILtb/f;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, LNc/N;->c:LWc/e;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    new-instance p3, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-direct {p3, p1}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;-><init>(Landroid/content/Context;)V

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;-><init>(Landroid/content/Context;LNc/x;Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;)V

    return-void
.end method

.method public static final synthetic access$isVisible(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;ZLjava/lang/String;IJI)Z
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->isVisible(ZLjava/lang/String;IJI)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$setValueIfChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatusLiveData;->setValueIfChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V

    return-void
.end method

.method private final isVisible(ZLjava/lang/String;IJI)Z
    .locals 0

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x2

    if-lt p3, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->isAnonymousUser()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "0"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getInstance()Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/utils/iuid/IUIDManager;->getIUID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x10

    invoke-static {p2}, LG5/W3;->a(I)V

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    if-lt p1, p6, :cond_3

    return p0

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p4

    const-wide/32 p4, 0x240c8400

    cmp-long p1, p1, p4

    if-ltz p1, :cond_4

    move p0, p3

    :cond_4
    :goto_1
    return p0
.end method

.method private final setValueIfChanged(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/PromotionStatus;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
