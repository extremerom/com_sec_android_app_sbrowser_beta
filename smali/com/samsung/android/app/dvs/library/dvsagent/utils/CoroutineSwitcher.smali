.class public final Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\nB\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;",
        "",
        "<init>",
        "()V",
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;",
        "dispatcherProvider",
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;",
        "Ldb/r;",
        "newChain",
        "(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;",
        "Chain",
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
.field public static final INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;

    invoke-direct {v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;-><init>()V

    sput-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic newChain$default(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;ILjava/lang/Object;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/DefaultDispatcherProvider;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DefaultDispatcherProvider;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;->newChain(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newChain(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .locals 2
    .param p1    # Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;",
            ")",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "dispatcherProvider"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$newChain$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$newChain$1;-><init>(Lib/c;)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V

    return-object p0
.end method
