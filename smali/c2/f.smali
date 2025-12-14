.class public final Lc2/f;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:I

.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lc2/C;

.field public final synthetic e:Lc2/y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc2/C;Lc2/y;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lc2/f;->c:Landroid/content/Context;

    iput-object p2, p0, Lc2/f;->d:Lc2/C;

    iput-object p3, p0, Lc2/f;->e:Lc2/y;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3

    new-instance v0, Lc2/f;

    iget-object v1, p0, Lc2/f;->d:Lc2/C;

    iget-object v2, p0, Lc2/f;->e:Lc2/y;

    iget-object p0, p0, Lc2/f;->c:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, p2}, Lc2/f;-><init>(Landroid/content/Context;Lc2/C;Lc2/y;Lib/c;)V

    iput-object p1, v0, Lc2/f;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lc2/f;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lc2/f;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lc2/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lc2/f;->a:I

    const/4 v2, 0x1

    iget-object v3, p0, Lc2/f;->c:Landroid/content/Context;

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object p0, p0, Lc2/f;->b:Ljava/lang/Object;

    check-cast p0, Lc2/d;

    :try_start_0
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lc2/f;->b:Ljava/lang/Object;

    check-cast p1, LNc/B;

    new-instance v1, Lc2/d;

    new-instance v4, LB0/E;

    iget-object v5, p0, Lc2/f;->e:Lc2/y;

    const/4 v6, 0x4

    invoke-direct {v4, v6, p1, v5}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v4}, Lc2/d;-><init>(LB0/E;)V

    sget-object p1, Lc2/d;->c:Landroid/content/IntentFilter;

    invoke-virtual {v3, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {v1, v3}, Lc2/d;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lc2/f;->d:Lc2/C;

    iput-object v1, p0, Lc2/f;->b:Ljava/lang/Object;

    iput v2, p0, Lc2/f;->a:I

    invoke-virtual {p1, p0}, Lc2/C;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object p0, v1

    :goto_0
    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object p0, v1

    :goto_1
    invoke-virtual {v3, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    throw p1
.end method
