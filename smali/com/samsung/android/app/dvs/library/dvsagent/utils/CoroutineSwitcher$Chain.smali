.class public final Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Chain"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Param:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002B0\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u001c\u0010\u0007\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0005\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0008\u0010\tJE\u0010\u000f\u001a\u00028\u0001\"\u0004\u0008\u0001\u0010\n2\u0006\u0010\u000c\u001a\u00020\u000b2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\rH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J@\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\u0008\u0001\u0010\n2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J@\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\u0008\u0001\u0010\n2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J@\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0000\"\u0004\u0008\u0001\u0010\n2\"\u0010\u000e\u001a\u001e\u0008\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\r\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0012J\u009e\u0001\u0010#\u001a\u00020\"2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00152%\u0008\u0002\u0010\u001b\u001a\u001f\u0012\u0013\u0012\u00118\u0000\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u0019\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00052%\u0008\u0002\u0010\u001e\u001a\u001f\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00052%\u0008\u0002\u0010\u001f\u001a\u001f\u0012\u0013\u0012\u00110\u001c\u00a2\u0006\u000c\u0008\u0017\u0012\u0008\u0008\u0018\u0012\u0004\u0008\u0008(\u001d\u0012\u0004\u0012\u00020\u001a\u0018\u00010\u00052\u0010\u0008\u0002\u0010!\u001a\n\u0012\u0004\u0012\u00020\u001a\u0018\u00010 \u00a2\u0006\u0004\u0008#\u0010$R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0004\u0010%R-\u0010\u0007\u001a\u0018\u0008\u0001\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u00058\u0002X\u0082\u0004\u00f8\u0001\u0000\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010&\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;",
        "Param",
        "",
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;",
        "dispatcherProvider",
        "Lkotlin/Function1;",
        "Lib/c;",
        "priorTask",
        "<init>",
        "(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V",
        "Return",
        "Lib/h;",
        "context",
        "Lkotlin/Function2;",
        "task",
        "doTask",
        "(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;",
        "onDefault",
        "(Lsb/n;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;",
        "onMain",
        "onIO",
        "LNc/B;",
        "scope",
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
        "LNc/j0;",
        "start",
        "(LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)LNc/j0;",
        "Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;",
        "Lsb/k;",
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


# instance fields
.field private final dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final priorTask:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    const-string v0, "dispatcherProvider"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priorTask"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    iput-object p2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->priorTask:Lsb/k;

    return-void
.end method

.method public static final synthetic access$doTask(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->doTask(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDispatcherProvider$p(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    return-object p0
.end method

.method public static final synthetic access$getPriorTask$p(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;)Lsb/k;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->priorTask:Lsb/k;

    return-object p0
.end method

.method private final doTask(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return:",
            "Ljava/lang/Object;",
            ">(",
            "Lib/h;",
            "Lsb/n;",
            "Lib/c<",
            "-TReturn;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;

    iget v1, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lib/c;)V

    :goto_0
    iget-object p3, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$0:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    iget-object p1, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$1:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Lsb/n;

    iget-object p1, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lib/h;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p3, Ltb/w;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->priorTask:Lsb/k;

    iput-object p1, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p3

    move-object p3, p0

    move-object p0, v5

    :goto_1
    new-instance v2, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p2, p3, v4}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;-><init>(Ltb/w;Lsb/n;Ljava/lang/Object;Lib/c;)V

    iput-object p0, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$1;->label:I

    invoke-static {p1, v2, v0}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static synthetic start$default(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;ILjava/lang/Object;)LNc/j0;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    invoke-interface {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;->getMain()LNc/x;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_1

    move-object p7, v0

    goto :goto_0

    :cond_1
    move-object p7, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    move-object v1, v0

    goto :goto_1

    :cond_2
    move-object v1, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v2, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, p5

    :goto_3
    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v1

    move-object p6, v2

    move-object p7, v0

    invoke-virtual/range {p2 .. p7}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->start(LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)LNc/j0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onDefault(Lsb/n;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .locals 4
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return:",
            "Ljava/lang/Object;",
            ">(",
            "Lsb/n;",
            ")",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "TReturn;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    new-instance v2, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onDefault$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onDefault$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/n;Lib/c;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V

    return-object v0
.end method

.method public final onIO(Lsb/n;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .locals 4
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return:",
            "Ljava/lang/Object;",
            ">(",
            "Lsb/n;",
            ")",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "TReturn;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    new-instance v2, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onIO$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onIO$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/n;Lib/c;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V

    return-object v0
.end method

.method public final onMain(Lsb/n;)Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .locals 4
    .param p1    # Lsb/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Return:",
            "Ljava/lang/Object;",
            ">(",
            "Lsb/n;",
            ")",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "TReturn;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "task"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->dispatcherProvider:Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;

    new-instance v2, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onMain$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$onMain$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/n;Lib/c;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/DispatcherProvider;Lsb/k;)V

    return-object v0
.end method

.method public final start(LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)LNc/j0;
    .locals 8
    .param p1    # LNc/B;
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
            "LNc/B;",
            "Lsb/k;",
            "Lsb/k;",
            "Lsb/k;",
            "Lsb/a;",
            ")",
            "LNc/j0;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "scope"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/k;Lsb/k;Lsb/a;Lsb/k;Lib/c;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    move-result-object p0

    return-object p0
.end method
