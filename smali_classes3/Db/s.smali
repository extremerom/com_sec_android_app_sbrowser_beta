.class public abstract LDb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAb/b;
.implements LDb/y0;


# instance fields
.field public final a:LDb/B0;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LDb/p;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LDb/p;-><init>(LDb/s;I)V

    const/4 v1, 0x0

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    new-instance v0, LDb/p;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, LDb/p;-><init>(LDb/s;I)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    move-result-object v0

    iput-object v0, p0, LDb/s;->a:LDb/B0;

    new-instance v0, LDb/p;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, LDb/p;-><init>(LDb/s;I)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    new-instance v0, LDb/p;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v2}, LDb/p;-><init>(LDb/s;I)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    new-instance v0, LDb/p;

    const/4 v2, 0x4

    invoke-direct {v0, p0, v2}, LDb/p;-><init>(LDb/s;I)V

    invoke-static {v1, v0}, LG5/J;->d(LJb/d;Lsb/a;)LDb/B0;

    sget-object v0, Ldb/h;->PUBLICATION:Ldb/h;

    new-instance v1, LDb/p;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, LDb/p;-><init>(LDb/s;I)V

    invoke-static {v0, v1}, LG5/z2;->d(Ldb/h;Lsb/a;)Ldb/f;

    move-result-object v0

    iput-object v0, p0, LDb/s;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, LDb/s;->d()LEb/g;

    move-result-object p0

    invoke-interface {p0, p1}, LEb/g;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, LBb/a;

    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public abstract d()LEb/g;
.end method

.method public abstract e()LDb/I;
.end method

.method public abstract f()LEb/g;
.end method

.method public abstract g()LJb/d;
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object p0, p0, LDb/s;->a:LDb/B0;

    invoke-virtual {p0}, LDb/B0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "invoke(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final i()Z
    .locals 2

    invoke-interface {p0}, LAb/b;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<init>"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LDb/s;->e()LDb/I;

    move-result-object p0

    invoke-interface {p0}, Ltb/d;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract j()Z
.end method
