.class public final LWb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LWb/c;


# instance fields
.field public final a:LPb/n;

.field public final b:Lsb/k;

.field public final c:LMb/a;

.field public final d:Ljava/util/LinkedHashMap;

.field public final e:Ljava/util/LinkedHashMap;

.field public final f:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(LPb/n;Lsb/k;)V
    .locals 4

    const-string v0, "jClass"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LWb/a;->a:LPb/n;

    iput-object p2, p0, LWb/a;->b:Lsb/k;

    new-instance p2, LMb/a;

    const/16 v0, 0x9

    invoke-direct {p2, v0, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, LWb/a;->c:LMb/a;

    invoke-virtual {p1}, LPb/n;->d()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p1

    new-instance v0, LJc/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, p2}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p2, LJc/g;

    invoke-direct {p2, v0}, LJc/g;-><init>(LJc/h;)V

    :goto_0
    invoke-virtual {p2}, LJc/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LPb/w;

    invoke-virtual {v2}, LPb/v;->c()Lhc/f;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object p1, p0, LWb/a;->d:Ljava/util/LinkedHashMap;

    iget-object p1, p0, LWb/a;->a:LPb/n;

    invoke-virtual {p1}, LPb/n;->b()Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object p1

    iget-object p2, p0, LWb/a;->b:Lsb/k;

    new-instance v0, LJc/h;

    invoke-direct {v0, p1, v1, p2}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p2, LJc/g;

    invoke-direct {p2, v0}, LJc/g;-><init>(LJc/h;)V

    :goto_1
    invoke-virtual {p2}, LJc/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LPb/t;

    invoke-virtual {v1}, LPb/v;->c()Lhc/f;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object p1, p0, LWb/a;->e:Ljava/util/LinkedHashMap;

    iget-object p1, p0, LWb/a;->a:LPb/n;

    invoke-virtual {p1}, LPb/n;->f()Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, LWb/a;->b:Lsb/k;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    const/16 p1, 0xa

    invoke-static {v0, p1}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lfb/C;->g(I)I

    move-result p1

    const/16 p2, 0x10

    if-ge p1, p2, :cond_5

    move p1, p2

    :cond_5
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, LPb/z;

    invoke-virtual {v1}, LPb/v;->c()Lhc/f;

    move-result-object v1

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    iput-object p2, p0, LWb/a;->f:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, LWb/a;->a:LPb/n;

    invoke-virtual {v0}, LPb/n;->d()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v0

    iget-object p0, p0, LWb/a;->c:LMb/a;

    new-instance v1, LJc/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, LJc/g;

    invoke-direct {v0, v1}, LJc/g;-><init>(LJc/h;)V

    :goto_0
    invoke-virtual {v0}, LJc/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPb/w;

    invoke-virtual {v1}, LPb/v;->c()Lhc/f;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final b()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, LWb/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lhc/f;)LPb/z;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/a;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LPb/z;

    return-object p0
.end method

.method public final d()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, LWb/a;->a:LPb/n;

    invoke-virtual {v0}, LPb/n;->b()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->w(Ljava/lang/Iterable;)LJc/p;

    move-result-object v0

    iget-object p0, p0, LWb/a;->b:Lsb/k;

    new-instance v1, LJc/h;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2, p0}, LJc/h;-><init>(LJc/l;ZLsb/k;)V

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v0, LJc/g;

    invoke-direct {v0, v1}, LJc/g;-><init>(LJc/h;)V

    :goto_0
    invoke-virtual {v0}, LJc/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJc/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LPb/t;

    invoke-virtual {v1}, LPb/v;->c()Lhc/f;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final e(Lhc/f;)LPb/t;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LPb/t;

    return-object p0
.end method

.method public final f(Lhc/f;)Ljava/util/Collection;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LWb/a;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    check-cast p0, Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object p0, Lfb/v;->a:Lfb/v;

    :goto_0
    return-object p0
.end method
