.class public abstract LGb/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Set;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Ljava/util/HashMap;

.field public static final d:Ljava/util/LinkedHashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    invoke-static {}, LGb/t;->values()[LGb/t;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    invoke-virtual {v5}, LGb/t;->d()Lhc/f;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LGb/u;->a:Ljava/util/Set;

    invoke-static {}, LGb/s;->values()[LGb/s;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, v0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    invoke-virtual {v5}, LGb/s;->a()Lhc/f;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LGb/u;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, LGb/u;->c:Ljava/util/HashMap;

    sget-object v0, LGb/s;->UBYTEARRAY:LGb/s;

    const-string v1, "ubyteArrayOf"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/s;->USHORTARRAY:LGb/s;

    const-string v1, "ushortArrayOf"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v4, Ldb/j;

    invoke-direct {v4, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/s;->UINTARRAY:LGb/s;

    const-string v1, "uintArrayOf"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v5, Ldb/j;

    invoke-direct {v5, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LGb/s;->ULONGARRAY:LGb/s;

    const-string v1, "ulongArrayOf"

    invoke-static {v1}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object v1

    new-instance v6, Ldb/j;

    invoke-direct {v6, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v4, v5, v6}, [Ldb/j;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Lfb/C;->g(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v1, v0}, Lfb/B;->m(Ljava/util/HashMap;[Ldb/j;)V

    invoke-static {}, LGb/t;->values()[LGb/t;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    array-length v2, v0

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, LGb/t;->a()Lhc/b;

    move-result-object v5

    invoke-virtual {v5}, Lhc/b;->f()Lhc/f;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sput-object v1, LGb/u;->d:Ljava/util/LinkedHashSet;

    invoke-static {}, LGb/t;->values()[LGb/t;

    move-result-object v0

    array-length v1, v0

    :goto_3
    if-ge v3, v1, :cond_3

    aget-object v2, v0, v3

    sget-object v4, LGb/u;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, LGb/t;->a()Lhc/b;

    move-result-object v5

    invoke-virtual {v2}, LGb/t;->c()Lhc/b;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, LGb/u;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, LGb/t;->c()Lhc/b;

    move-result-object v5

    invoke-virtual {v2}, LGb/t;->a()Lhc/b;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public static final a(Lyc/w;)Z
    .locals 3

    invoke-static {p0}, Lyc/b0;->l(Lyc/w;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object p0

    invoke-interface {p0}, Lyc/L;->c()LJb/i;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, LJb/l;->k()LJb/l;

    move-result-object v0

    instance-of v2, v0, LJb/H;

    if-eqz v2, :cond_2

    check-cast v0, LJb/H;

    check-cast v0, LMb/D;

    iget-object v0, v0, LMb/D;->f:Lhc/c;

    sget-object v2, LGb/q;->l:Lhc/c;

    invoke-static {v0, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LGb/u;->a:Ljava/util/Set;

    invoke-interface {p0}, LJb/l;->getName()Lhc/f;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
