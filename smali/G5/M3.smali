.class public abstract LG5/M3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx1/r;IILi0/a;La0/m;II)V
    .locals 11

    move-object v1, p0

    move-object v4, p3

    move/from16 v5, p5

    move-object v0, p4

    check-cast v0, La0/q;

    const v2, -0x704a306d

    invoke-virtual {v0, v2}, La0/q;->S(I)La0/q;

    and-int/lit8 v2, v5, 0xe

    if-nez v2, :cond_1

    invoke-virtual {v0, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v5

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_3

    or-int/lit8 v2, v2, 0x30

    :cond_2
    move v6, p1

    goto :goto_3

    :cond_3
    and-int/lit8 v6, v5, 0x70

    if-nez v6, :cond_2

    move v6, p1

    invoke-virtual {v0, p1}, La0/q;->c(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const/16 v7, 0x20

    goto :goto_2

    :cond_4
    const/16 v7, 0x10

    :goto_2
    or-int/2addr v2, v7

    :goto_3
    and-int/lit8 v7, p6, 0x4

    if-eqz v7, :cond_6

    or-int/lit16 v2, v2, 0x180

    :cond_5
    move v8, p2

    goto :goto_5

    :cond_6
    and-int/lit16 v8, v5, 0x380

    if-nez v8, :cond_5

    move v8, p2

    invoke-virtual {v0, p2}, La0/q;->c(I)Z

    move-result v9

    if-eqz v9, :cond_7

    const/16 v9, 0x100

    goto :goto_4

    :cond_7
    const/16 v9, 0x80

    :goto_4
    or-int/2addr v2, v9

    :goto_5
    and-int/lit16 v9, v5, 0x1c00

    if-nez v9, :cond_9

    invoke-virtual {v0, p3}, La0/q;->g(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const/16 v9, 0x800

    goto :goto_6

    :cond_8
    const/16 v9, 0x400

    :goto_6
    or-int/2addr v2, v9

    :cond_9
    and-int/lit16 v9, v2, 0x16db

    const/16 v10, 0x492

    if-ne v9, v10, :cond_b

    invoke-virtual {v0}, La0/q;->x()Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v0}, La0/q;->K()V

    :goto_7
    move v2, v6

    move v3, v8

    goto :goto_a

    :cond_b
    :goto_8
    const/4 v9, 0x0

    if-eqz v3, :cond_c

    move v6, v9

    :cond_c
    if-eqz v7, :cond_d

    move v8, v9

    :cond_d
    sget-object v3, LK1/g;->a:LK1/g;

    const v7, 0x227c4e56

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    const v7, -0x20ad3f64

    invoke-virtual {v0, v7}, La0/q;->R(I)V

    iget-object v7, v0, La0/q;->a:LJ2/i0;

    instance-of v7, v7, Lx1/b;

    if-eqz v7, :cond_10

    invoke-virtual {v0}, La0/q;->O()V

    iget-boolean v7, v0, La0/q;->O:Z

    if-eqz v7, :cond_e

    invoke-virtual {v0, v3}, La0/q;->k(Lsb/a;)V

    goto :goto_9

    :cond_e
    invoke-virtual {v0}, La0/q;->d0()V

    :goto_9
    sget-object v3, LK1/e;->d:LK1/e;

    invoke-static {v0, p0, v3}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    new-instance v3, LK1/a;

    invoke-direct {v3, v8}, LK1/a;-><init>(I)V

    sget-object v7, LK1/e;->e:LK1/e;

    invoke-static {v0, v3, v7}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    new-instance v3, LK1/b;

    invoke-direct {v3, v6}, LK1/b;-><init>(I)V

    sget-object v7, LK1/e;->f:LK1/e;

    invoke-static {v0, v3, v7}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v3, LK1/j;->a:LK1/j;

    shr-int/lit8 v2, v2, 0x6

    and-int/lit8 v2, v2, 0x70

    or-int/lit8 v2, v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v3, v0, v2}, Li0/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, La0/q;->p(Z)V

    invoke-virtual {v0, v9}, La0/q;->p(Z)V

    invoke-virtual {v0, v9}, La0/q;->p(Z)V

    goto :goto_7

    :goto_a
    invoke-virtual {v0}, La0/q;->r()La0/i0;

    move-result-object v8

    if-eqz v8, :cond_f

    new-instance v9, LK1/h;

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v4, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v7}, LK1/h;-><init>(Lx1/r;IILi0/a;III)V

    iput-object v9, v8, La0/i0;->d:Lsb/n;

    :cond_f
    return-void

    :cond_10
    invoke-static {}, La0/d;->B()V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final b(Lf2/a;La0/m;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/q;

    const v0, -0x78b3bc9

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, Landroidx/compose/ui/platform/h;->a:La0/L0;

    invoke-virtual {p1, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p0, v0}, Lf2/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, La0/q;->p(Z)V

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)Lhd/D;
    .locals 10

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lhd/D;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    const/16 v2, 0x22

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "typeSubtype.group(1)"

    invoke-static {v3, v4}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "typeSubtype.group(2)"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lhd/D;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x0

    if-ge v0, v7, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v0, v7}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v7, 0x3

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    const-string v9, "\'"

    invoke-static {v7, v9, v8}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-static {v7, v9}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v6, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v1

    invoke-virtual {v7, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Parameter is not formatted correctly: \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" for: \""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, p0, v2}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lhd/D;

    new-array v1, v8, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Lhd/D;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "No subtype found for: \""

    invoke-static {v2, v0, p0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)Lhd/D;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, LG5/M3;->c(Ljava/lang/String;)Lhd/D;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
