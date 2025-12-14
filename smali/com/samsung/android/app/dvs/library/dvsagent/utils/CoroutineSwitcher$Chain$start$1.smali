.class final Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->start(LNc/B;Lsb/k;Lsb/k;Lsb/k;Lsb/a;)LNc/j0;
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
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u0002\"\u0006\u0008\u0000\u0010\u0000 \u0001*\u00020\u0001H\u008a@\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Param",
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.samsung.android.app.dvs.library.dvsagent.utils.CoroutineSwitcher$Chain$start$1"
    f = "CoroutineSwitcher.kt"
    l = {
        0x60
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $onCancel:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field

.field final synthetic $onError:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field

.field final synthetic $onFinished:Lsb/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/a;"
        }
    .end annotation
.end field

.field final synthetic $onSuccess:Lsb/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsb/k;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "TParam;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/k;Lsb/k;Lsb/a;Lsb/k;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain<",
            "+TParam;>;",
            "Lsb/k;",
            "Lsb/k;",
            "Lsb/a;",
            "Lsb/k;",
            "Lib/c<",
            "-",
            "Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    iput-object p2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onCancel:Lsb/k;

    iput-object p3, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onError:Lsb/k;

    iput-object p4, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onFinished:Lsb/a;

    iput-object p5, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onSuccess:Lsb/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 7
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

    new-instance p1, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;

    iget-object v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    iget-object v2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onCancel:Lsb/k;

    iget-object v3, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onError:Lsb/k;

    iget-object v4, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onFinished:Lsb/a;

    iget-object v5, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onSuccess:Lsb/k;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;-><init>(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;Lsb/k;Lsb/k;Lsb/a;Lsb/k;Lib/c;)V

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->this$0:Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;

    invoke-static {p1}, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;->access$getPriorTask$p(Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain;)Lsb/k;

    move-result-object p1

    iput v2, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->label:I

    invoke-interface {p1, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    move-object v3, p1

    goto :goto_3

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onError:Lsb/k;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onError : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->e(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onCancel:Lsb/k;

    if-eqz v0, :cond_3

    sget-object v1, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onCancel : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->d(Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onSuccess:Lsb/k;

    if-eqz p1, :cond_4

    sget-object v0, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->INSTANCE:Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSuccess : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/dvs/library/dvsagent/log/LogCompat$Raw;->d(Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/app/dvs/library/dvsagent/utils/CoroutineSwitcher$Chain$start$1;->$onFinished:Lsb/a;

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_5
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
