.class public abstract LSb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/Set;

.field public static final d:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    sget-object v0, LGb/p;->j:Lhc/d;

    const-string v1, "name"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhc/d;->a(Lhc/f;)Lhc/d;

    move-result-object v1

    invoke-virtual {v1}, Lhc/d;->g()Lhc/c;

    move-result-object v1

    sget-object v2, LGb/q;->d:Lhc/f;

    new-instance v3, Ldb/j;

    invoke-direct {v3, v1, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "ordinal"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhc/d;->a(Lhc/f;)Lhc/d;

    move-result-object v0

    invoke-virtual {v0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v4, Ldb/j;

    invoke-direct {v4, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->C:Lhc/c;

    const-string v1, "size"

    invoke-static {v0, v1}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v0

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    new-instance v5, Ldb/j;

    invoke-direct {v5, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->G:Lhc/c;

    invoke-static {v0, v1}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v2

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v6

    new-instance v7, Ldb/j;

    invoke-direct {v7, v2, v6}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v2, LGb/p;->e:Lhc/d;

    const-string v6, "length"

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v8

    invoke-virtual {v2, v8}, Lhc/d;->a(Lhc/f;)Lhc/d;

    move-result-object v2

    invoke-virtual {v2}, Lhc/d;->g()Lhc/c;

    move-result-object v2

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v8

    new-instance v9, Ldb/j;

    invoke-direct {v9, v2, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "keys"

    invoke-static {v0, v2}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v2

    const-string v8, "keySet"

    invoke-static {v8}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v8

    new-instance v10, Ldb/j;

    invoke-direct {v10, v2, v8}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "values"

    invoke-static {v0, v2}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v8

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    new-instance v11, Ldb/j;

    invoke-direct {v11, v8, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v2, "entries"

    invoke-static {v0, v2}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v0

    const-string v2, "entrySet"

    invoke-static {v2}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    new-instance v12, Ldb/j;

    invoke-direct {v12, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->a0:Lhc/c;

    invoke-static {v0, v1}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v0

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    new-instance v13, Ldb/j;

    invoke-direct {v13, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->b0:Lhc/c;

    invoke-static {v0, v1}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v0

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v2

    new-instance v14, Ldb/j;

    invoke-direct {v14, v0, v2}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/p;->c0:Lhc/c;

    invoke-static {v0, v1}, LG5/l2;->a(Lhc/c;Ljava/lang/String;)Lhc/c;

    move-result-object v0

    invoke-static {v6}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v6, v7

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v12

    move-object v11, v13

    move-object v12, v14

    move-object v13, v2

    filled-new-array/range {v3 .. v13}, [Ldb/j;

    move-result-object v0

    invoke-static {v0}, Lfb/B;->k([Ldb/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, LSb/f;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ldb/j;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhc/c;

    iget-object v5, v5, Lhc/c;->a:Lhc/d;

    invoke-virtual {v5}, Lhc/d;->f()Lhc/f;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/j;

    iget-object v4, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v4, Lhc/f;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v5, Ljava/util/List;

    iget-object v3, v3, Ldb/j;->a:Ljava/lang/Object;

    check-cast v3, Lhc/f;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-static {v3}, Lfb/C;->g(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v3}, Lfb/n;->y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    sput-object v1, LSb/f;->b:Ljava/util/LinkedHashMap;

    sget-object v0, LSb/f;->a:Ljava/lang/Object;

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    sget-object v4, LIb/d;->a:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhc/c;

    invoke-virtual {v4}, Lhc/c;->b()Lhc/c;

    move-result-object v4

    iget-object v4, v4, Lhc/c;->a:Lhc/d;

    invoke-static {v4}, LIb/d;->f(Lhc/d;)Lhc/b;

    move-result-object v4

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lhc/b;->a()Lhc/c;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhc/f;

    invoke-virtual {v4, v3}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    sget-object v0, LSb/f;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, LSb/f;->c:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/c;

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->f()Lhc/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-static {v1}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LSb/f;->d:Ljava/util/Set;

    return-void
.end method
