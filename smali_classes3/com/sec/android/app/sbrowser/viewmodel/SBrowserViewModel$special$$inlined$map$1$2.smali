.class public final Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1;->collect(LQc/i;Lib/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LQc/i;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "T",
        "R",
        "value",
        "Ldb/r;",
        "emit",
        "(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $this_unsafeFlow:LQc/i;


# direct methods
.method public constructor <init>(LQc/i;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:LQc/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;

    iget v1, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;-><init>(Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2;Lib/c;)V

    :goto_0
    iget-object p2, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2;->$this_unsafeFlow:LQc/i;

    check-cast p1, Ldb/p;

    new-instance p2, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    iget-object v2, p1, Ldb/p;->a:Ljava/lang/Object;

    new-instance v4, Ldb/j;

    iget-object p1, p1, Ldb/p;->b:Ljava/lang/Object;

    invoke-direct {v4, v2, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p2, v4}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    iput v3, v0, Lcom/sec/android/app/sbrowser/viewmodel/SBrowserViewModel$special$$inlined$map$1$2$1;->label:I

    invoke-interface {p0, p2, v0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method
