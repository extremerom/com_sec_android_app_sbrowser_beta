.class public abstract Lrc/h;
.super Lrc/p;
.source "SourceFile"


# static fields
.field public static final synthetic d:[LAb/u;


# instance fields
.field public final b:LMb/c;

.field public final c:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ltb/p;

    const-class v1, Lrc/h;

    const-string v2, "allDescriptors"

    const-string v3, "getAllDescriptors()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Ltb/x;->a:Ltb/y;

    invoke-virtual {v1, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [LAb/u;

    aput-object v0, v1, v4

    sput-object v1, Lrc/h;->d:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lxc/o;LMb/c;)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrc/h;->b:LMb/c;

    new-instance p2, LDb/E;

    const/16 v0, 0x15

    invoke-direct {p2, v0, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    check-cast p1, Lxc/l;

    new-instance v0, Lxc/i;

    invoke-direct {v0, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object v0, p0, Lrc/h;->c:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameFilter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lrc/f;->n:Lrc/f;

    iget p2, p2, Lrc/f;->b:I

    invoke-virtual {p1, p2}, Lrc/f;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    iget-object p0, p0, Lrc/h;->c:Lxc/i;

    sget-object p1, Lrc/h;->d:[LAb/u;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    invoke-static {p0, p1}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrc/h;->c:Lxc/i;

    sget-object p2, Lrc/h;->d:[LAb/u;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, LHc/g;

    invoke-direct {p2}, LHc/g;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LMb/M;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LMb/M;

    invoke-virtual {v1}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p2

    :goto_1
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrc/h;->c:Lxc/i;

    sget-object p2, Lrc/h;->d:[LAb/u;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    goto :goto_1

    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, LHc/g;

    invoke-direct {p2}, LHc/g;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LJb/P;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, LJb/P;

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object p0, p2

    :goto_1
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public abstract h()Ljava/util/List;
.end method
