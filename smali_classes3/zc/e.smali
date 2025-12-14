.class public final Lzc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzc/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzc/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzc/e;->a:Lzc/e;

    return-void
.end method

.method public static b(Lyc/A;)Lyc/A;
    .locals 14

    invoke-virtual {p0}, Lyc/w;->F0()Lyc/L;

    move-result-object v0

    instance-of v1, v0, Llc/c;

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    check-cast v0, Llc/c;

    iget-object v1, v0, Llc/c;->a:Lyc/Q;

    invoke-virtual {v1}, Lyc/Q;->a()Lyc/e0;

    move-result-object v4

    sget-object v5, Lyc/e0;->IN_VARIANCE:Lyc/e0;

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyc/Q;->b()Lyc/w;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lyc/w;->I0()Lyc/d0;

    move-result-object v3

    :cond_1
    move-object v7, v3

    iget-object v1, v0, Llc/c;->b:Lzc/i;

    if-nez v1, :cond_3

    invoke-virtual {v0}, Llc/c;->d()Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/w;

    invoke-virtual {v2}, Lyc/w;->I0()Lyc/d0;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v1, Lzc/i;

    const-string v2, "projection"

    iget-object v9, v0, Llc/c;->a:Lyc/Q;

    invoke-static {v9, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lwc/e;

    const/4 v2, 0x1

    invoke-direct {v10, v2, v3}, Lwc/e;-><init>(ILjava/util/ArrayList;)V

    const/16 v13, 0x8

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lzc/i;-><init>(Lyc/Q;Lwc/e;Lzc/i;LJb/W;I)V

    iput-object v1, v0, Llc/c;->b:Lzc/i;

    :cond_3
    new-instance v1, Lzc/h;

    sget-object v5, LBc/b;->FOR_SUBTYPING:LBc/b;

    iget-object v6, v0, Llc/c;->b:Lzc/i;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lyc/w;->E0()Lyc/H;

    move-result-object v8

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v9

    const/16 v10, 0x20

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lzc/h;-><init>(LBc/b;Lzc/i;Lyc/d0;Lyc/H;ZI)V

    return-object v1

    :cond_4
    instance-of v1, v0, Lyc/v;

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lyc/w;->G0()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Lyc/v;

    iget-object p0, v0, Lyc/v;->b:Ljava/util/LinkedHashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/w;

    const-string v4, "<this>"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_2

    :cond_5
    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object p0, v0, Lyc/v;->a:Lyc/w;

    if-eqz p0, :cond_7

    invoke-static {p0, v5}, Lyc/b0;->g(Lyc/w;Z)Lyc/d0;

    move-result-object v3

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    new-instance v1, Lyc/v;

    invoke-direct {v1, p0}, Lyc/v;-><init>(Ljava/util/AbstractCollection;)V

    iput-object v3, v1, Lyc/v;->a:Lyc/w;

    move-object v3, v1

    :goto_3
    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move-object v0, v3

    :goto_4
    invoke-virtual {v0}, Lyc/v;->f()Lyc/A;

    move-result-object p0

    :cond_9
    return-object p0
.end method


# virtual methods
.method public final a(LBc/d;)Lyc/d0;
    .locals 10

    const-string v0, "type"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lyc/w;

    if-eqz v0, :cond_5

    check-cast p1, Lyc/w;

    invoke-virtual {p1}, Lyc/w;->I0()Lyc/d0;

    move-result-object p1

    instance-of v0, p1, Lyc/A;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyc/A;

    invoke-static {v0}, Lzc/e;->b(Lyc/A;)Lyc/A;

    move-result-object v0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lyc/r;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lyc/r;

    iget-object v1, v0, Lyc/r;->b:Lyc/A;

    invoke-static {v1}, Lzc/e;->b(Lyc/A;)Lyc/A;

    move-result-object v2

    iget-object v0, v0, Lyc/r;->c:Lyc/A;

    invoke-static {v0}, Lzc/e;->b(Lyc/A;)Lyc/A;

    move-result-object v3

    if-ne v2, v1, :cond_2

    if-eq v3, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p1

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {v2, v3}, Lyc/c;->f(Lyc/A;Lyc/A;)Lyc/d0;

    move-result-object v0

    :goto_1
    new-instance v9, LJ2/p;

    const-class v4, Lzc/e;

    const-string v5, "prepareType"

    const/4 v2, 0x1

    const-string v6, "prepareType(Lorg/jetbrains/kotlin/types/model/KotlinTypeMarker;)Lorg/jetbrains/kotlin/types/UnwrappedType;"

    const/4 v7, 0x0

    const/4 v8, 0x7

    move-object v1, v9

    move-object v3, p0

    invoke-direct/range {v1 .. v8}, LJ2/p;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-static {p1}, Lyc/c;->g(Lyc/w;)Lyc/w;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {v9, p0}, LJ2/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyc/w;

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-static {v0, p0}, Lyc/c;->G(Lyc/d0;Lyc/w;)Lyc/d0;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
