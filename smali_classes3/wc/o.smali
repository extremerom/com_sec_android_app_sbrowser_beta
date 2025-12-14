.class public final Lwc/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic j:[LAb/u;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public final b:Ljava/util/LinkedHashMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Lxc/e;

.field public final e:Lxc/e;

.field public final f:Lxc/j;

.field public final g:Lxc/i;

.field public final h:Lxc/i;

.field public final synthetic i:Lwc/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Ltb/p;

    const-class v1, Lwc/o;

    const-string v2, "functionNames"

    const-string v3, "getFunctionNames()Ljava/util/Set;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ltb/p;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v2, Ltb/x;->a:Ltb/y;

    invoke-virtual {v2, v0}, Ltb/y;->f(Ltb/p;)LAb/r;

    move-result-object v0

    const-string v3, "variableNames"

    const-string v5, "getVariableNames()Ljava/util/Set;"

    invoke-static {v1, v3, v5, v4, v2}, Lt/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILtb/y;)LAb/r;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [LAb/u;

    aput-object v0, v2, v4

    const/4 v0, 0x1

    aput-object v1, v2, v0

    sput-object v2, Lwc/o;->j:[LAb/u;

    return-void
.end method

.method public constructor <init>(Lwc/p;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "functionList"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "propertyList"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeAliasList"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lwc/o;->i:Lwc/p;

    check-cast p2, Ljava/util/Collection;

    check-cast p2, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lic/b;

    iget-object v3, p1, Lwc/p;->b:Luc/m;

    iget-object v3, v3, Luc/m;->b:Ljava/lang/Object;

    check-cast v3, Lec/g;

    check-cast v2, Lcc/A;

    iget v2, v2, Lcc/A;->f:I

    invoke-static {v3, v2}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lwc/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->a:Ljava/util/LinkedHashMap;

    check-cast p3, Ljava/util/Collection;

    check-cast p3, Ljava/lang/Iterable;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lic/b;

    iget-object v2, p1, Lwc/p;->b:Luc/m;

    iget-object v2, v2, Luc/m;->b:Ljava/lang/Object;

    check-cast v2, Lec/g;

    check-cast v1, Lcc/I;

    iget v1, v1, Lcc/I;->f:I

    invoke-static {v2, v1}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lwc/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->b:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p1, p1, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->c:Luc/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p4, Ljava/util/Collection;

    check-cast p4, Ljava/lang/Iterable;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lic/b;

    iget-object v1, p1, Lwc/p;->b:Luc/m;

    iget-object v1, v1, Luc/m;->b:Ljava/lang/Object;

    check-cast v1, Lec/g;

    check-cast v0, Lcc/V;

    iget v0, v0, Lcc/V;->e:I

    invoke-static {v1, v0}, LG5/m2;->c(Lec/g;I)Lhc/f;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {p2}, Lwc/o;->c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->c:Ljava/util/LinkedHashMap;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p1, p1, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    new-instance p2, Lwc/m;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lwc/m;-><init>(Lwc/o;I)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->d:Lxc/e;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p1, p1, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    new-instance p2, Lwc/m;

    const/4 p3, 0x1

    invoke-direct {p2, p0, p3}, Lwc/m;-><init>(Lwc/o;I)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->b(Lsb/k;)Lxc/e;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->e:Lxc/e;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p1, p1, Lwc/p;->b:Luc/m;

    iget-object p1, p1, Luc/m;->a:Ljava/lang/Object;

    check-cast p1, Luc/k;

    iget-object p1, p1, Luc/k;->a:Lxc/o;

    new-instance p2, Lwc/m;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Lwc/m;-><init>(Lwc/o;I)V

    check-cast p1, Lxc/l;

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, Lwc/o;->f:Lxc/j;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p2, p1, Lwc/p;->b:Luc/m;

    iget-object p2, p2, Luc/m;->a:Ljava/lang/Object;

    check-cast p2, Luc/k;

    iget-object p2, p2, Luc/k;->a:Lxc/o;

    new-instance p3, Lwc/n;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p1, p4}, Lwc/n;-><init>(Lwc/o;Lwc/p;I)V

    check-cast p2, Lxc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxc/i;

    invoke-direct {p1, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p1, p0, Lwc/o;->g:Lxc/i;

    iget-object p1, p0, Lwc/o;->i:Lwc/p;

    iget-object p2, p1, Lwc/p;->b:Luc/m;

    iget-object p2, p2, Luc/m;->a:Ljava/lang/Object;

    check-cast p2, Luc/k;

    iget-object p2, p2, Luc/k;->a:Lxc/o;

    new-instance p3, Lwc/n;

    const/4 p4, 0x1

    invoke-direct {p3, p0, p1, p4}, Lwc/n;-><init>(Lwc/o;Lwc/p;I)V

    check-cast p2, Lxc/l;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lxc/i;

    invoke-direct {p1, p2, p3}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    iput-object p1, p0, Lwc/o;->h:Lxc/i;

    return-void
.end method

.method public static c(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 9

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lfb/C;->g(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lic/b;

    invoke-virtual {v5}, Lic/b;->a()I

    move-result v6

    invoke-static {v6}, LK6/q;->f(I)I

    move-result v7

    add-int/2addr v7, v6

    const/16 v8, 0x1000

    if-le v7, v8, :cond_0

    move v7, v8

    :cond_0
    invoke-static {v3, v7}, LK6/q;->j(Ljava/io/OutputStream;I)LK6/q;

    move-result-object v7

    invoke-virtual {v7, v6}, LK6/q;->v(I)V

    invoke-virtual {v5, v7}, Lic/b;->d(LK6/q;)V

    invoke-virtual {v7}, LK6/q;->i()V

    sget-object v5, Ldb/r;->a:Ldb/r;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lwc/o;->g:Lxc/i;

    sget-object v0, Lwc/o;->j:[LAb/u;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p2, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    iget-object p0, p0, Lwc/o;->d:Lxc/e;

    invoke-virtual {p0, p1}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method

.method public final b(Lhc/f;LRb/a;)Ljava/util/Collection;
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lwc/o;->h:Lxc/i;

    sget-object v0, Lwc/o;->j:[LAb/u;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p2, v0}, LG5/C2;->e(Lxc/m;LAb/u;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    iget-object p0, p0, Lwc/o;->e:Lxc/e;

    invoke-virtual {p0, p1}, Lxc/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
