.class public final LIb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJb/L;


# instance fields
.field public final a:Lxc/l;

.field public final b:LMb/B;

.field public c:Luc/k;

.field public final d:Lxc/j;


# direct methods
.method public constructor <init>(Lxc/l;Lo3/f;LMb/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LIb/s;->a:Lxc/l;

    iput-object p3, p0, LIb/s;->b:LMb/B;

    new-instance p2, LMb/a;

    const/16 p3, 0x12

    invoke-direct {p2, p3, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, LIb/s;->d:Lxc/j;

    return-void
.end method


# virtual methods
.method public final a(Lhc/c;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LIb/s;->d:Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p2, p0}, LHc/l;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lhc/c;)Z
    .locals 3

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LIb/s;->d:Lxc/j;

    iget-object v1, v0, Lxc/j;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lxc/k;->COMPUTING:Lxc/k;

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJb/H;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, LIb/s;->d(Lhc/c;)Lvc/c;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final c(Lhc/c;)Ljava/util/List;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LIb/s;->d:Lxc/j;

    invoke-virtual {p0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lfb/o;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lhc/c;)Lvc/c;
    .locals 2

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LGb/q;->k:Lhc/f;

    invoke-virtual {p1, v0}, Lhc/c;->c(Lhc/f;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    sget-object v0, Lvc/a;->m:Lvc/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lvc/a;->a(Lhc/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lvc/d;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, LIb/s;->a:Lxc/l;

    iget-object p0, p0, LIb/s;->b:LMb/B;

    invoke-static {p1, v1, p0, v0}, LG5/q2;->b(Lhc/c;Lxc/o;LJb/C;Ljava/io/InputStream;)Lvc/c;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public final t(Lhc/c;Lsb/k;)Ljava/util/Collection;
    .locals 0

    const-string p0, "fqName"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "nameFilter"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lfb/x;->a:Lfb/x;

    return-object p0
.end method
