.class public final Lrc/s;
.super Lrc/p;
.source "SourceFile"


# static fields
.field public static final synthetic f:[LAb/u;


# instance fields
.field public final b:Lwc/i;

.field public final c:Z

.field public final d:Lxc/i;

.field public final e:Lxc/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, Lrc/s;

    const-string v2, "functions"

    const-string v3, "getFunctions()Ljava/util/List;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "properties"

    const-string v5, "getProperties()Ljava/util/List;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lrc/s;->f:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lxc/o;Lwc/i;Z)V
    .locals 1

    const-string v0, "storageManager"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lrc/s;->b:Lwc/i;

    iput-boolean p3, p0, Lrc/s;->c:Z

    sget-object p2, LJb/g;->CLASS:LJb/g;

    new-instance p2, Lrc/r;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lrc/r;-><init>(Lrc/s;I)V

    check-cast p1, Lxc/l;

    new-instance p3, Lxc/i;

    invoke-direct {p3, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, Lrc/s;->d:Lxc/i;

    new-instance p2, Lrc/r;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lrc/r;-><init>(Lrc/s;I)V

    new-instance p3, Lxc/i;

    invoke-direct {p3, p1, p2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p3, p0, Lrc/s;->e:Lxc/i;

    return-void
.end method


# virtual methods
.method public final a(Lrc/f;Lsb/k;)Ljava/util/Collection;
    .locals 1

    const-string v0, "kindFilter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "nameFilter"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lrc/s;->d:Lxc/i;

    const/4 p2, 0x0

    sget-object v0, Lrc/s;->f:[LAb/u;

    aget-object p2, v0, p2

    invoke-static {p1, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    check-cast p1, Ljava/util/Collection;

    iget-object p0, p0, Lrc/s;->e:Lxc/i;

    const/4 p2, 0x1

    aget-object p2, v0, p2

    invoke-static {p0, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, p1}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lhc/f;LRb/a;)LJb/i;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "location"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrc/s;->d:Lxc/i;

    sget-object p2, Lrc/s;->f:[LAb/u;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, LHc/g;

    invoke-direct {p2}, LHc/g;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LMb/M;

    invoke-virtual {v1}, LMb/n;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final g(Lhc/f;LRb/c;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lrc/s;->e:Lxc/i;

    sget-object p2, Lrc/s;->f:[LAb/u;

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-static {p0, p2}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance p2, LHc/g;

    invoke-direct {p2}, LHc/g;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LJb/P;

    invoke-interface {v1}, LJb/l;->getName()Lhc/f;

    move-result-object v1

    invoke-static {v1, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, LHc/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2
.end method
