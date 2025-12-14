.class public abstract LP7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final b(Lyc/Q;LJb/W;)Lyc/Q;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    sget-object v1, Lyc/e0;->INVARIANT:Lyc/e0;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, LJb/W;->A()Lyc/e0;

    move-result-object p1

    invoke-virtual {p0}, Lyc/Q;->a()Lyc/e0;

    move-result-object v0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lyc/Q;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lyc/F;

    new-instance v0, Lyc/y;

    sget-object v1, Lxc/l;->e:Lxc/b;

    const-string v2, "NO_LOCKS"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LDb/E;

    const/16 v3, 0x13

    invoke-direct {v2, v3, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lyc/y;-><init>(Lxc/l;Lsb/a;)V

    invoke-direct {p1, v0}, Lyc/F;-><init>(Lyc/w;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lyc/F;

    invoke-virtual {p0}, Lyc/Q;->b()Lyc/w;

    move-result-object p0

    invoke-direct {p1, p0}, Lyc/F;-><init>(Lyc/w;)V

    :goto_0
    return-object p1

    :cond_2
    new-instance p1, Lyc/F;

    new-instance v0, Llc/a;

    new-instance v1, Llc/c;

    invoke-direct {v1, p0}, Llc/c;-><init>(Lyc/Q;)V

    sget-object v2, Lyc/H;->b:LA7/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lyc/H;->c:Lyc/H;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Llc/a;-><init>(Lyc/Q;Llc/b;ZLyc/H;)V

    invoke-direct {p1, v0}, Lyc/F;-><init>(Lyc/w;)V

    return-object p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_9

    const/16 v3, 0xd

    if-eq v2, v3, :cond_8

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_6

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_5

    packed-switch v2, :pswitch_data_0

    if-ltz v2, :cond_0

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    :cond_0
    const/16 v3, 0x7f

    if-lt v2, v3, :cond_1

    const/16 v3, 0x9f

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x2000

    if-lt v2, v3, :cond_4

    const/16 v3, 0x20ff

    if-gt v2, v3, :cond_4

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\u"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x4

    if-ge v3, v4, :cond_3

    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :pswitch_0
    const-string v2, "\\n"

    goto :goto_2

    :pswitch_1
    const-string v2, "\\t"

    goto :goto_2

    :pswitch_2
    const-string v2, "\\b"

    goto :goto_2

    :cond_5
    const-string v2, "\\\\"

    goto :goto_2

    :cond_6
    const-string v2, "\\/"

    goto :goto_2

    :cond_7
    const-string v2, "\\\""

    goto :goto_2

    :cond_8
    const-string v2, "\\r"

    goto :goto_2

    :cond_9
    const-string v2, "\\f"

    goto :goto_2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "null"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0, v2}, LP7/a;->c(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_4

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0

    :cond_4
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_7

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v0

    :cond_7
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    instance-of v0, p0, LLd/b;

    if-eqz v0, :cond_a

    check-cast p0, LLd/b;

    invoke-interface {p0}, LLd/b;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_b

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, LLd/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_c

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, LLd/a;->i(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k(Lyc/U;)Lyc/U;
    .locals 9

    instance-of v0, p0, Lyc/u;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    check-cast p0, Lyc/u;

    iget-object v0, p0, Lyc/u;->c:[Lyc/Q;

    const-string v2, "<this>"

    invoke-static {v0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "other"

    iget-object p0, p0, Lyc/u;->b:[LJb/W;

    invoke-static {p0, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    array-length v3, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_0

    aget-object v6, v0, v5

    aget-object v7, p0, v5

    new-instance v8, Ldb/j;

    invoke-direct {v8, v6, v7}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v3, v2}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/j;

    iget-object v5, v3, Ldb/j;->a:Ljava/lang/Object;

    check-cast v5, Lyc/Q;

    iget-object v3, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v3, LJb/W;

    invoke-static {v5, v3}, LP7/a;->b(Lyc/Q;LJb/W;)Lyc/Q;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v2, v4, [Lyc/Q;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/Q;

    new-instance v2, Lyc/u;

    invoke-direct {v2, p0, v0, v1}, Lyc/u;-><init>([LJb/W;[Lyc/Q;Z)V

    goto :goto_2

    :cond_2
    new-instance v2, Llc/d;

    invoke-direct {v2, p0, v1}, Llc/d;-><init>(Lyc/U;Z)V

    :goto_2
    return-object v2
.end method
