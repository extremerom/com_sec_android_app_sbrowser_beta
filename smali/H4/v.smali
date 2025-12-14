.class public final LH4/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LH4/k;

.field public final b:Ljava/lang/String;

.field public final c:LE4/b;

.field public final d:LE4/d;

.field public final e:LH4/w;


# direct methods
.method public constructor <init>(LH4/k;Ljava/lang/String;LE4/b;LE4/d;LH4/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/v;->a:LH4/k;

    iput-object p2, p0, LH4/v;->b:Ljava/lang/String;

    iput-object p3, p0, LH4/v;->c:LE4/b;

    iput-object p4, p0, LH4/v;->d:LE4/d;

    iput-object p5, p0, LH4/v;->e:LH4/w;

    return-void
.end method


# virtual methods
.method public final a(LE4/a;)V
    .locals 8

    new-instance v0, LA9/b;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LA9/b;-><init>(I)V

    iget-object v1, p0, LH4/v;->a:LH4/k;

    iget-object v2, p0, LH4/v;->b:Ljava/lang/String;

    iget-object v3, p0, LH4/v;->d:LE4/d;

    iget-object v4, p0, LH4/v;->c:LE4/b;

    iget-object p0, p0, LH4/v;->e:LH4/w;

    invoke-static {}, LH4/k;->a()LH4/j;

    move-result-object v5

    iget-object v6, v1, LH4/k;->a:Ljava/lang/String;

    if-eqz v6, :cond_1

    iput-object v6, v5, LH4/j;->a:Ljava/lang/String;

    iget-object v6, p1, LE4/a;->b:LE4/c;

    if-eqz v6, :cond_0

    iput-object v6, v5, LH4/j;->c:LE4/c;

    iget-object v1, v1, LH4/k;->b:[B

    iput-object v1, v5, LH4/j;->b:[B

    invoke-virtual {v5}, LH4/j;->a()LH4/k;

    move-result-object v1

    new-instance v5, LH4/h;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, LH4/h;->f:Ljava/util/HashMap;

    iget-object v6, p0, LH4/w;->a:LQ4/a;

    invoke-interface {v6}, LQ4/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, LH4/h;->d:Ljava/lang/Long;

    iget-object v6, p0, LH4/w;->b:LQ4/a;

    invoke-interface {v6}, LQ4/a;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v5, LH4/h;->e:Ljava/lang/Long;

    iput-object v2, v5, LH4/h;->a:Ljava/lang/String;

    new-instance v2, LH4/n;

    iget-object p1, p1, LE4/a;->a:Ljava/lang/Object;

    invoke-interface {v3, p1}, LE4/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    invoke-direct {v2, v4, p1}, LH4/n;-><init>(LE4/b;[B)V

    iput-object v2, v5, LH4/h;->c:LH4/n;

    const/4 p1, 0x0

    iput-object p1, v5, LH4/h;->b:Ljava/lang/Integer;

    invoke-virtual {v5}, LH4/h;->b()LH4/i;

    move-result-object p1

    iget-object p0, p0, LH4/w;->c:LM4/c;

    check-cast p0, LM4/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LJ8/d;

    invoke-direct {v2, p0, v1, v0, p1}, LJ8/d;-><init>(LM4/b;LH4/k;LA9/b;LH4/i;)V

    iget-object p0, p0, LM4/b;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null priority"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null backendName"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
