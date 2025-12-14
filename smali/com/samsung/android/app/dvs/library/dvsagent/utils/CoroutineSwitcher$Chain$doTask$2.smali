.class final Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->doTask(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0006\u0008\u0001\u0010\u0001 \u0001*\u00020\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Return",
        "Param",
        "LNc/B;",
        "",
        "<anonymous>",
        "(LNc/B;)Ljava/lang/Void;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.samsung.android.app.dvs.library.dvsagent.utils.CoroutineSwitcher$Chain$doTask$2"
    f = "CoroutineSwitcher.kt"
    l = {
        0x46,
        0x47
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $param:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TParam;"
        }
    .end annotation
.end field

.field final synthetic $task:Lsb/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/n;"
        }
    .end annotation
.end field

.field final synthetic $tempResult:Ltb/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb/w;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method public constructor <init>(Ltb/w;Lsb/n;Ljava/lang/Object;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb/w;",
            "Lsb/n;",
            "TParam;",
            "Lib/c<",
            "-",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$tempResult:Ltb/w;

    iput-object p2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$task:Lsb/n;

    iput-object p3, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$param:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;

    iget-object v0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$tempResult:Ltb/w;

    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$task:Lsb/n;

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$param:Ljava/lang/Object;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;-><init>(Ltb/w;Lsb/n;Ljava/lang/Object;Lib/c;)V

    return-object p1
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # LNc/B;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$0:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$1:Ljava/lang/Object;

    check-cast v1, Ltb/w;

    iget-object v4, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$0:Ljava/lang/Object;

    check-cast v4, Ltb/w;

    :try_start_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object p0, v4

    goto :goto_2

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p1, Ltb/w;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$tempResult:Ltb/w;

    iget-object v5, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$task:Lsb/n;

    iget-object v6, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->$param:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->label:I

    invoke-interface {v5, v6, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    iput-object v4, v1, Ltb/w;->a:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$doTask$2;->label:I

    invoke-static {p0}, LNc/E;->N(Lkb/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    move-object p0, p1

    goto :goto_3

    :goto_1
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_2

    :catchall_2
    move-exception p0

    goto :goto_1

    :goto_2
    iput-object p1, p0, Ltb/w;->a:Ljava/lang/Object;

    :goto_3
    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    if-nez p0, :cond_5

    return-object v2

    :cond_5
    throw p0
.end method
