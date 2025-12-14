.class public final LZb/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/LinkedHashMap;


# direct methods
.method public constructor <init>(Ljava/util/LinkedHashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZb/q;->a:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final a()LZb/q;
    .locals 7

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object p0, p0, LZb/q;->a:Ljava/util/LinkedHashMap;

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

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZb/d;

    iget-object v3, v1, LZb/d;->a:LZb/g;

    new-instance v4, LZb/d;

    const/4 v5, 0x1

    iget-object v6, v1, LZb/d;->b:LZb/e;

    iget-boolean v1, v1, LZb/d;->c:Z

    invoke-direct {v4, v3, v6, v1, v5}, LZb/d;-><init>(LZb/g;LZb/e;ZZ)V

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p0, LZb/q;

    invoke-direct {p0, v0}, LZb/q;-><init>(Ljava/util/LinkedHashMap;)V

    return-object p0
.end method
