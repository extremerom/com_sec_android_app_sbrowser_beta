.class public final LRc/H;
.super Lkb/c;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final a:LQc/i;

.field public final b:Lib/h;

.field public final c:I

.field public d:Lib/h;

.field public e:Lib/c;


# direct methods
.method public constructor <init>(LQc/i;Lib/h;)V
    .locals 2

    sget-object v0, LRc/E;->a:LRc/E;

    sget-object v1, Lib/i;->a:Lib/i;

    invoke-direct {p0, v0, v1}, Lkb/c;-><init>(Lib/c;Lib/h;)V

    iput-object p1, p0, LRc/H;->a:LQc/i;

    iput-object p2, p0, LRc/H;->b:Lib/h;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, LRc/G;->a:LRc/G;

    invoke-interface {p2, p1, v0}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, p0, LRc/H;->c:I

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p2, p1}, LRc/H;->f(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :catchall_0
    move-exception p1

    new-instance v0, LRc/B;

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p2

    invoke-direct {v0, p2, p1}, LRc/B;-><init>(Lib/h;Ljava/lang/Throwable;)V

    iput-object v0, p0, LRc/H;->d:Lib/h;

    throw p1
.end method

.method public final f(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    invoke-static {v0}, LNc/E;->l(Lib/h;)V

    iget-object v1, p0, LRc/H;->d:Lib/h;

    if-eq v1, v0, :cond_2

    instance-of v2, v1, LRc/B;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, LB1/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, LB1/h;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Lib/h;->fold(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget v2, p0, LRc/H;->c:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, LRc/H;->d:Lib/h;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Flow invariant is violated:\n\t\tFlow was collected in "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LRc/H;->b:Lib/h;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ",\n\t\tbut emission happened in "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".\n\t\tPlease refer to \'flow\' documentation or use \'flowOn\' instead"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v1, LRc/B;

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\n            Flow exception transparency is violated:\n                Previous \'emit\' call has thrown exception "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LRc/B;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", but then emission attempt of value \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' has been detected.\n                Emissions from \'catch\' blocks are prohibited in order to avoid unspecified behaviour, \'Flow.catch\' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKc/l;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iput-object p1, p0, LRc/H;->e:Lib/c;

    sget-object p1, LRc/J;->a:LRc/I;

    iget-object v0, p0, LRc/H;->a:LQc/i;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p2, p0}, LQc/i;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    invoke-static {p1, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    iput-object p2, p0, LRc/H;->e:Lib/c;

    :cond_3
    return-object p1
.end method

.method public final getCallerFrame()Lkb/d;
    .locals 1

    iget-object p0, p0, LRc/H;->e:Lib/c;

    instance-of v0, p0, Lkb/d;

    if-eqz v0, :cond_0

    check-cast p0, Lkb/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getContext()Lib/h;
    .locals 0

    iget-object p0, p0, LRc/H;->d:Lib/h;

    if-nez p0, :cond_0

    sget-object p0, Lib/i;->a:Lib/i;

    :cond_0
    return-object p0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {p1}, Ldb/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LRc/B;

    invoke-virtual {p0}, LRc/H;->getContext()Lib/h;

    move-result-object v2

    invoke-direct {v1, v2, v0}, LRc/B;-><init>(Lib/h;Ljava/lang/Throwable;)V

    iput-object v1, p0, LRc/H;->d:Lib/h;

    :cond_0
    iget-object p0, p0, LRc/H;->e:Lib/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lib/c;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    sget-object p0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    return-object p0
.end method
