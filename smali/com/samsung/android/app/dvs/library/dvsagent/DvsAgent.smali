.class public final Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\r\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u009c\u0001\u0010\u000c\u001a\u00020\u00122\u0006\u0010\u000b\u001a\u00020\n2%\u0008\u0002\u0010\u0013\u001a\u001f\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e2%\u0008\u0002\u0010\u0016\u001a\u001f\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e2%\u0008\u0002\u0010\u0017\u001a\u001f\u0012\u0013\u0012\u00110\u0014\u00a2\u0006\u000c\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0015\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0018\u00a2\u0006\u0004\u0008\u000c\u0010\u001aR\"\u0010\u001c\u001a\u00020\u001b8\u0006@\u0006X\u0086.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006#"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;",
        "",
        "<init>",
        "()V",
        "",
        "getVersionName",
        "()Ljava/lang/String;",
        "",
        "getVersionCode",
        "()J",
        "Landroid/content/Context;",
        "context",
        "attestDevice",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "Lkotlin/Function1;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
        "Ldb/r;",
        "onSuccess",
        "",
        "exception",
        "onCancel",
        "onError",
        "Lkotlin/Function0;",
        "onFinished",
        "(Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)V",
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;",
        "networkService",
        "Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;",
        "getNetworkService",
        "()Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;",
        "setNetworkService",
        "(Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;)V",
        "Companion",
        "DvsAgent-INTERNAL-1.0.7_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public networkService:Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->Companion:Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkServiceImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkServiceImpl;-><init>()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->setNetworkService(Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;)V

    return-void
.end method

.method public static synthetic attestDevice$default(Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->attestDevice(Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)V

    return-void
.end method


# virtual methods
.method public final attestDevice(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->getNetworkService()Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;->attestSAK(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final attestDevice(Landroid/content/Context;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lsb/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lsb/k;",
            "Lsb/k;",
            "Lsb/k;",
            "Lsb/a;",
            ")V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;->newChain$default(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;ILjava/lang/Object;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$1;-><init>(Landroid/content/Context;Lib/c;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->onIO(Lsb/n;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$2;

    invoke-direct {v4, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$2;-><init>(Lsb/k;)V

    new-instance v5, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$3;

    invoke-direct {v5, p3}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$3;-><init>(Lsb/k;)V

    new-instance v6, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;

    invoke-direct {v6, p4}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$4;-><init>(Lsb/k;)V

    new-instance v7, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$5;

    invoke-direct {v7, p5}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$attestDevice$5;-><init>(Lsb/a;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->start$default(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;ILjava/lang/Object;)LNc/j0;

    return-void
.end method

.method public final getNetworkService()Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->networkService:Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "networkService"

    invoke-static {p0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getVersionCode()J
    .locals 2

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->Companion:Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;->getVERSION_CODE()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->Companion:Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;

    invoke-virtual {p0}, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent$Companion;->getVERSION_NAME()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final setNetworkService(Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/DvsAgent;->networkService:Lcom/samsung/android/app/dvs/library/dvsagent/network/NetworkService;

    return-void
.end method
