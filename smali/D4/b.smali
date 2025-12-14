.class public final LD4/b;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public final synthetic b:LD4/d;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ly/b;

.field public final synthetic e:Lgb/f;


# direct methods
.method public constructor <init>(LD4/d;Ljava/lang/String;Ly/b;Lgb/f;Lib/c;)V
    .locals 0

    iput-object p1, p0, LD4/b;->b:LD4/d;

    iput-object p2, p0, LD4/b;->c:Ljava/lang/String;

    iput-object p3, p0, LD4/b;->d:Ly/b;

    iput-object p4, p0, LD4/b;->e:Lgb/f;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 6

    new-instance p1, LD4/b;

    iget-object v1, p0, LD4/b;->b:LD4/d;

    iget-object v2, p0, LD4/b;->c:Ljava/lang/String;

    iget-object v3, p0, LD4/b;->d:Ly/b;

    iget-object v4, p0, LD4/b;->e:Lgb/f;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, LD4/b;-><init>(LD4/d;Ljava/lang/String;Ly/b;Lgb/f;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LD4/b;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LD4/b;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LD4/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, LD4/b;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, LD4/b;->b:LD4/d;

    iget-object v1, p1, LD4/d;->b:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;

    const-string v3, "access$getAppContext$p(...)"

    iget-object p1, p1, LD4/d;->f:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LA4/b;

    iget-object v4, p0, LD4/b;->c:Ljava/lang/String;

    invoke-direct {v3, p1, v4}, LA4/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, LD4/b;->d:Ly/b;

    iget-object p1, p1, Ly/b;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iput v2, p0, LD4/b;->a:I

    iget-object v2, p0, LD4/b;->e:Lgb/f;

    invoke-virtual {v1, v3, p1, v2, p0}, Lcom/google/android/appfunctions/internal/AggregateAppFunctionInvoker;->a(LA4/b;Ljava/lang/String;Lgb/f;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
