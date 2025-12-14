.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwb/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:LA0/g;

.field public final c:Lsb/k;

.field public final d:LNc/B;

.field public final e:Ljava/lang/Object;

.field public volatile f:Lp1/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;LA0/g;Lsb/k;LNc/B;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lo1/b;->b:LA0/g;

    iput-object p3, p0, Lo1/b;->c:Lsb/k;

    iput-object p4, p0, Lo1/b;->d:LNc/B;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo1/b;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroid/content/Context;

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo1/b;->f:Lp1/d;

    if-nez p2, :cond_2

    iget-object p2, p0, Lo1/b;->e:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lo1/b;->f:Lp1/d;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lo1/b;->b:LA0/g;

    iget-object v1, p0, Lo1/b;->c:Lsb/k;

    const-string v2, "applicationContext"

    invoke-static {p1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v7, p0, Lo1/b;->d:LNc/B;

    new-instance v2, LB0/E;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p1, p0}, LB0/E;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "migrations"

    invoke-static {v1, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lp1/e;->a:Lp1/e;

    new-instance v3, Lhd/v;

    const/4 p1, 0x1

    invoke-direct {v3, p1, v2}, Lhd/v;-><init>(ILsb/a;)V

    if-nez v0, :cond_0

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :cond_0
    move-object v6, v0

    new-instance p1, Lm1/d;

    const/4 v0, 0x0

    invoke-direct {p1, v1, v0}, Lm1/d;-><init>(Ljava/util/List;Lib/c;)V

    invoke-static {p1}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance p1, Lm1/G;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lm1/G;-><init>(Lsb/a;Lm1/k;Ljava/util/List;Lm1/b;LNc/B;)V

    new-instance v0, Lp1/d;

    invoke-direct {v0, p1}, Lp1/d;-><init>(Lm1/G;)V

    iput-object v0, p0, Lo1/b;->f:Lp1/d;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lo1/b;->f:Lp1/d;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p2

    move-object p2, p0

    goto :goto_2

    :goto_1
    monitor-exit p2

    throw p0

    :cond_2
    :goto_2
    return-object p2
.end method
