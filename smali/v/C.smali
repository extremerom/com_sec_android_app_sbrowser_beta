.class public final Lv/C;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/Set;

.field public final c:LN/f;

.field public final d:LN/f;

.field public final e:LN/f;

.field public final f:LN/f;

.field public final g:LN/f;

.field public final h:Z

.field public final i:I


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Set;LN/f;LN/f;LN/f;LN/f;LN/f;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lv/C;->a:Ljava/util/Set;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/util/Set;

    iput-object p2, p0, Lv/C;->b:Ljava/util/Set;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lv/C;->c:LN/f;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lv/C;->d:LN/f;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lv/C;->e:LN/f;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p6, p0, Lv/C;->f:LN/f;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p7, p0, Lv/C;->g:LN/f;

    iput-boolean p8, p0, Lv/C;->h:Z

    iput p9, p0, Lv/C;->i:I

    return-void
.end method

.method public static a(LN/f;)LN/f;
    .locals 6

    new-instance v0, LN/f;

    iget v1, p0, LN/A;->c:I

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    invoke-virtual {p0}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, LN/a;

    invoke-virtual {p0}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, LN/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LN/g;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    new-instance v5, LN/g;

    invoke-direct {v5, v4}, LN/g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v5}, LN/g;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final b()LN/f;
    .locals 4

    new-instance v0, LN/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/A;-><init>(I)V

    iget-object p0, p0, Lv/C;->f:LN/f;

    invoke-virtual {p0}, LN/f;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, LN/a;

    invoke-virtual {p0}, LN/a;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, LN/g;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v3, v1}, LN/g;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, LN/A;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method
