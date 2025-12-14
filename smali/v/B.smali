.class public final Lv/B;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LN/g;

.field public b:LN/g;

.field public c:LN/f;

.field public d:LN/f;

.field public e:LN/f;

.field public f:LN/f;

.field public g:LN/f;

.field public h:Z

.field public i:I

.field public j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    iput-object v0, p0, Lv/B;->a:LN/g;

    new-instance v0, LN/g;

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    iput-object v0, p0, Lv/B;->b:LN/g;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lv/B;->c:LN/f;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lv/B;->d:LN/f;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lv/B;->e:LN/f;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lv/B;->f:LN/f;

    new-instance v0, LN/f;

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iput-object v0, p0, Lv/B;->g:LN/f;

    iput-boolean v1, p0, Lv/B;->h:Z

    const/4 v0, 0x1

    iput v0, p0, Lv/B;->i:I

    iput-boolean v1, p0, Lv/B;->j:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lv/B;->c()V

    invoke-static {}, Lv/r;->a()Lv/r;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lv/r;->b(Ljava/lang/Class;)Lv/q;

    move-result-object v2

    invoke-interface {v2}, Lv/q;->getDependencyDocumentClasses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v0, v2}, Lv/r;->b(Ljava/lang/Class;)Lv/q;

    move-result-object v2

    invoke-interface {v2}, Lv/q;->getSchema()Lv/o;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lv/B;->c()V

    iget-object p0, p0, Lv/B;->a:LN/g;

    invoke-virtual {p0, p1}, LN/g;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b()Lv/C;
    .locals 11

    new-instance v0, LN/g;

    iget-object v1, p0, Lv/B;->b:LN/g;

    invoke-direct {v0, v1}, LN/g;-><init>(LN/g;)V

    iget-object v1, p0, Lv/B;->c:LN/f;

    invoke-virtual {v1}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/g;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lv/B;->d:LN/f;

    invoke-virtual {v1}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/g;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lv/B;->e:LN/f;

    invoke-virtual {v1}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/g;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lv/B;->f:LN/f;

    invoke-virtual {v1}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, LN/g;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lv/B;->a:LN/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LN/b;

    invoke-direct {v2, v1}, LN/b;-><init>(LN/g;)V

    :goto_0
    invoke-virtual {v2}, LN/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, LN/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv/o;

    iget-object v1, v1, Lv/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, LN/g;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LN/g;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lv/B;->a:LN/g;

    invoke-virtual {v0}, LN/g;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lv/B;->i:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot set version to the request if schema is empty."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iput-boolean v1, p0, Lv/B;->j:Z

    new-instance v0, Lv/C;

    iget-object v2, p0, Lv/B;->a:LN/g;

    iget-object v3, p0, Lv/B;->b:LN/g;

    iget-object v4, p0, Lv/B;->c:LN/f;

    iget-object v5, p0, Lv/B;->d:LN/f;

    iget-object v6, p0, Lv/B;->e:LN/f;

    iget-object v7, p0, Lv/B;->f:LN/f;

    iget-object v8, p0, Lv/B;->g:LN/f;

    iget-boolean v9, p0, Lv/B;->h:Z

    iget v10, p0, Lv/B;->i:I

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lv/C;-><init>(Ljava/util/Set;Ljava/util/Set;LN/f;LN/f;LN/f;LN/f;LN/f;ZI)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Schema types "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " referenced, but were not added."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()V
    .locals 5

    iget-boolean v0, p0, Lv/B;->j:Z

    if-eqz v0, :cond_2

    new-instance v0, LN/f;

    iget-object v1, p0, Lv/B;->c:LN/f;

    iget v1, v1, LN/A;->c:I

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iget-object v1, p0, Lv/B;->c:LN/f;

    invoke-virtual {v1}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, LN/a;

    invoke-virtual {v1}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    move-object v2, v1

    check-cast v2, LN/d;

    invoke-virtual {v2}, LN/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, LN/d;->next()Ljava/lang/Object;

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, LN/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, LN/g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lv/B;->c:LN/f;

    new-instance v0, LN/f;

    iget-object v1, p0, Lv/B;->e:LN/f;

    invoke-direct {v0, v1}, LN/f;-><init>(LN/f;)V

    iput-object v0, p0, Lv/B;->e:LN/f;

    iget-object v0, p0, Lv/B;->d:LN/f;

    invoke-static {v0}, Lv/C;->a(LN/f;)LN/f;

    move-result-object v0

    iput-object v0, p0, Lv/B;->d:LN/f;

    new-instance v0, LN/f;

    iget-object v1, p0, Lv/B;->f:LN/f;

    iget v1, v1, LN/A;->c:I

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iget-object v1, p0, Lv/B;->f:LN/f;

    invoke-virtual {v1}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, LN/a;

    invoke-virtual {v1}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    move-object v2, v1

    check-cast v2, LN/d;

    invoke-virtual {v2}, LN/d;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, LN/d;->next()Ljava/lang/Object;

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, LN/g;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-direct {v4, v2}, LN/g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3, v4}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iput-object v0, p0, Lv/B;->f:LN/f;

    new-instance v0, LN/g;

    iget-object v1, p0, Lv/B;->a:LN/g;

    invoke-direct {v0, v1}, LN/g;-><init>(LN/g;)V

    iput-object v0, p0, Lv/B;->a:LN/g;

    new-instance v0, LN/g;

    iget-object v1, p0, Lv/B;->b:LN/g;

    invoke-direct {v0, v1}, LN/g;-><init>(LN/g;)V

    iput-object v0, p0, Lv/B;->b:LN/g;

    new-instance v0, LN/f;

    iget-object v1, p0, Lv/B;->g:LN/f;

    invoke-direct {v0, v1}, LN/f;-><init>(LN/f;)V

    iput-object v0, p0, Lv/B;->g:LN/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lv/B;->j:Z

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;Lv/w;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lv/B;->c()V

    iget-object v0, p0, Lv/B;->c:LN/f;

    invoke-virtual {v0, p1}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, LN/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lv/B;->c:LN/f;

    invoke-virtual {p0, p1, v0}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
