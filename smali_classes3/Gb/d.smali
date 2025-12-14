.class public final LGb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, LGb/l;->NUMBER_TYPES:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LGb/l;

    const-string v3, "primitiveType"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, LGb/q;->l:Lhc/c;

    invoke-virtual {v2}, LGb/l;->g()Lhc/f;

    move-result-object v2

    invoke-virtual {v3, v2}, Lhc/c;->a(Lhc/f;)Lhc/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v0, LGb/p;->f:Lhc/d;

    invoke-virtual {v0}, Lhc/d;->g()Lhc/c;

    move-result-object v0

    invoke-static {v1, v0}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, LGb/p;->h:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->g()Lhc/c;

    move-result-object v1

    invoke-static {v0, v1}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, LGb/p;->j:Lhc/d;

    invoke-virtual {v1}, Lhc/d;->g()Lhc/c;

    move-result-object v1

    invoke-static {v0, v1}, Lfb/n;->S(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhc/c;

    const-string v3, "topLevelFqName"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lhc/b;

    invoke-virtual {v2}, Lhc/c;->b()Lhc/c;

    move-result-object v4

    iget-object v2, v2, Lhc/c;->a:Lhc/d;

    invoke-virtual {v2}, Lhc/d;->f()Lhc/f;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sput-object v1, LGb/d;->a:Ljava/util/LinkedHashSet;

    return-void
.end method
