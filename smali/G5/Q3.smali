.class public abstract LG5/Q3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lx1/r;La0/m;I)V
    .locals 2

    check-cast p1, La0/q;

    const v0, 0x524845ee

    invoke-virtual {p1, v0}, La0/q;->S(I)La0/q;

    and-int/lit8 v0, p2, 0xe

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v0, v0, 0xb

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, La0/q;->K()V

    goto :goto_4

    :cond_3
    :goto_2
    sget-object v0, LK1/v;->a:LK1/v;

    const v1, -0x428332f6

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    const v1, 0x7076b8d0

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    iget-object v1, p1, La0/q;->a:LJ2/i0;

    instance-of v1, v1, Lx1/b;

    if-eqz v1, :cond_6

    invoke-virtual {p1}, La0/q;->O()V

    iget-boolean v1, p1, La0/q;->O:Z

    if-eqz v1, :cond_4

    new-instance v1, LA4/a;

    invoke-direct {v1, v0}, LA4/a;-><init>(Lsb/a;)V

    invoke-virtual {p1, v1}, La0/q;->k(Lsb/a;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, La0/q;->d0()V

    :goto_3
    sget-object v0, LK1/e;->j:LK1/e;

    invoke-static {p1, p0, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, La0/q;->p(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, La0/q;->p(Z)V

    invoke-virtual {p1, v0}, La0/q;->p(Z)V

    :goto_4
    invoke-virtual {p1}, La0/q;->r()La0/i0;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, LE1/d;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p0}, LE1/d;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, La0/i0;->d:Lsb/n;

    :cond_5
    return-void

    :cond_6
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final b(IILjava/lang/String;)Ljava/net/InetAddress;
    .locals 17

    move/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x10

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, -0x1

    move/from16 v6, p0

    move v7, v4

    move v8, v5

    move v9, v8

    :goto_0
    const/4 v10, 0x0

    if-ge v6, v0, :cond_13

    if-ne v7, v2, :cond_0

    return-object v10

    :cond_0
    add-int/lit8 v11, v6, 0x2

    const/16 v12, 0xff

    if-gt v11, v0, :cond_3

    const-string v13, "::"

    invoke-static {v6, v1, v13, v4}, LKc/r;->m(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eq v8, v5, :cond_1

    return-object v10

    :cond_1
    add-int/lit8 v7, v7, 0x2

    if-ne v11, v0, :cond_2

    move v0, v2

    move v8, v7

    goto/16 :goto_8

    :cond_2
    move v8, v7

    move v9, v11

    goto/16 :goto_5

    :cond_3
    if-eqz v7, :cond_4

    const-string v11, ":"

    invoke-static {v6, v1, v11, v4}, LKc/r;->m(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_4
    move v9, v6

    goto/16 :goto_5

    :cond_5
    const-string v11, "."

    invoke-static {v6, v1, v11, v4}, LKc/r;->m(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    add-int/lit8 v6, v7, -0x2

    move v11, v6

    :goto_1
    if-ge v9, v0, :cond_e

    if-ne v11, v2, :cond_6

    goto :goto_4

    :cond_6
    if-eq v11, v6, :cond_8

    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_7

    goto :goto_4

    :cond_7
    add-int/lit8 v9, v9, 0x1

    :cond_8
    move v14, v4

    move v13, v9

    :goto_2
    if-ge v13, v0, :cond_c

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v4, 0x30

    invoke-static {v15, v4}, Ltb/k;->h(II)I

    move-result v16

    if-ltz v16, :cond_c

    const/16 v2, 0x39

    invoke-static {v15, v2}, Ltb/k;->h(II)I

    move-result v2

    if-lez v2, :cond_9

    goto :goto_3

    :cond_9
    if-nez v14, :cond_a

    if-eq v9, v13, :cond_a

    goto :goto_4

    :cond_a
    mul-int/lit8 v14, v14, 0xa

    add-int/2addr v14, v15

    sub-int/2addr v14, v4

    if-le v14, v12, :cond_b

    goto :goto_4

    :cond_b
    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x10

    const/4 v4, 0x0

    goto :goto_2

    :cond_c
    :goto_3
    sub-int v2, v13, v9

    if-nez v2, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v2, v11, 0x1

    int-to-byte v4, v14

    aput-byte v4, v3, v11

    move v11, v2

    move v9, v13

    const/16 v2, 0x10

    const/4 v4, 0x0

    goto :goto_1

    :cond_e
    add-int/lit8 v0, v7, 0x2

    if-ne v11, v0, :cond_f

    add-int/lit8 v7, v7, 0x2

    const/16 v0, 0x10

    goto :goto_8

    :cond_f
    :goto_4
    return-object v10

    :goto_5
    move v6, v9

    const/4 v2, 0x0

    :goto_6
    if-ge v6, v0, :cond_10

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lid/b;->q(C)I

    move-result v4

    if-eq v4, v5, :cond_10

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_10
    sub-int v4, v6, v9

    if-eqz v4, :cond_12

    const/4 v11, 0x4

    if-le v4, v11, :cond_11

    goto :goto_7

    :cond_11
    add-int/lit8 v4, v7, 0x1

    ushr-int/lit8 v10, v2, 0x8

    and-int/2addr v10, v12

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int/lit8 v7, v7, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    const/16 v2, 0x10

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    :goto_7
    return-object v10

    :cond_13
    move v0, v2

    :goto_8
    if-eq v7, v0, :cond_15

    if-ne v8, v5, :cond_14

    return-object v10

    :cond_14
    sub-int v1, v7, v8

    rsub-int/lit8 v2, v1, 0x10

    invoke-static {v3, v8, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    rsub-int/lit8 v2, v7, 0x10

    add-int/2addr v2, v8

    const/4 v0, 0x0

    invoke-static {v3, v8, v2, v0}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_15
    invoke-static {v3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public static c(LJ2/i0;ZZLjava/lang/Boolean;ZLo3/f;Lec/f;)LOb/b;
    .locals 4

    const-string v0, "container"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p6, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, LJ2/i0;->d:Ljava/lang/Object;

    check-cast v1, LJb/S;

    if-eqz p1, :cond_4

    if-eqz p3, :cond_3

    instance-of p1, p0, Luc/w;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Luc/w;

    sget-object v2, Lcc/j;->INTERFACE:Lcc/j;

    iget-object v3, p1, Luc/w;->h:Lcc/j;

    if-ne v3, v2, :cond_0

    const-string p0, "DefaultImpls"

    invoke-static {p0}, Lhc/f;->f(Ljava/lang/String;)Lhc/f;

    move-result-object p0

    iget-object p1, p1, Luc/w;->g:Lhc/b;

    invoke-virtual {p1, p0}, Lhc/b;->d(Lhc/f;)Lhc/b;

    move-result-object p0

    invoke-static {p5, p0, p6}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    instance-of p1, p0, Luc/x;

    if-eqz p1, :cond_4

    instance-of p1, v1, Lac/h;

    if-eqz p1, :cond_1

    move-object p1, v1

    check-cast p1, Lac/h;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p1, Lac/h;->b:Lpc/b;

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_4

    new-instance p0, Lhc/c;

    invoke-virtual {p1}, Lpc/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "getInternalName(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p2, 0x2f

    const/16 p3, 0x2e

    invoke-static {p1, p2, p3}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lhc/c;-><init>(Ljava/lang/String;)V

    new-instance p1, Lhc/b;

    invoke-virtual {p0}, Lhc/c;->b()Lhc/c;

    move-result-object p2

    iget-object p0, p0, Lhc/c;->a:Lhc/d;

    invoke-virtual {p0}, Lhc/d;->f()Lhc/f;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lhc/b;-><init>(Lhc/c;Lhc/f;)V

    invoke-static {p5, p1, p6}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isConst should not be null for property (container="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    if-eqz p2, :cond_8

    instance-of p1, p0, Luc/w;

    if-eqz p1, :cond_8

    move-object p1, p0

    check-cast p1, Luc/w;

    sget-object p2, Lcc/j;->COMPANION_OBJECT:Lcc/j;

    iget-object p3, p1, Luc/w;->h:Lcc/j;

    if-ne p3, p2, :cond_8

    iget-object p1, p1, Luc/w;->f:Luc/w;

    if-eqz p1, :cond_8

    sget-object p2, Lcc/j;->CLASS:Lcc/j;

    iget-object p3, p1, Luc/w;->h:Lcc/j;

    if-eq p3, p2, :cond_5

    sget-object p2, Lcc/j;->ENUM_CLASS:Lcc/j;

    if-eq p3, p2, :cond_5

    if-eqz p4, :cond_8

    sget-object p2, Lcc/j;->INTERFACE:Lcc/j;

    if-eq p3, p2, :cond_5

    sget-object p2, Lcc/j;->ANNOTATION_CLASS:Lcc/j;

    if-ne p3, p2, :cond_8

    :cond_5
    iget-object p0, p1, LJ2/i0;->d:Ljava/lang/Object;

    check-cast p0, LJb/S;

    instance-of p1, p0, Lac/p;

    if-eqz p1, :cond_6

    check-cast p0, Lac/p;

    goto :goto_2

    :cond_6
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_7

    iget-object v0, p0, Lac/p;->a:LOb/b;

    :cond_7
    return-object v0

    :cond_8
    instance-of p0, p0, Luc/x;

    if-eqz p0, :cond_a

    instance-of p0, v1, Lac/h;

    if-eqz p0, :cond_a

    const-string p0, "null cannot be cast to non-null type org.jetbrains.kotlin.load.kotlin.JvmPackagePartSource"

    invoke-static {v1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lac/h;

    iget-object p0, v1, Lac/h;->c:LOb/b;

    if-nez p0, :cond_9

    invoke-virtual {v1}, Lac/h;->a()Lhc/b;

    move-result-object p0

    invoke-static {p5, p0, p6}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    :cond_9
    return-object p0

    :cond_a
    return-object v0
.end method

.method public static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    const-string v1, "<this>"

    invoke-static {p0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ":"

    invoke-static {p0, v1}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_b

    const-string v1, "["

    invoke-static {p0, v1, v2}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "]"

    invoke-static {p0, v1}, LKc/r;->h(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {v0, v1, p0}, LG5/Q3;->b(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v2, v1, p0}, LG5/Q3;->b(IILjava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v3

    :cond_1
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    array-length v5, v3

    const/4 v6, 0x4

    const/16 v7, 0x10

    if-ne v5, v7, :cond_9

    move p0, v2

    move v1, p0

    :goto_1
    array-length v5, v3

    if-ge p0, v5, :cond_4

    move v5, p0

    :goto_2
    if-ge v5, v7, :cond_2

    aget-byte v8, v3, v5

    if-nez v8, :cond_2

    add-int/lit8 v8, v5, 0x1

    aget-byte v8, v3, v8

    if-nez v8, :cond_2

    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    :cond_2
    sub-int v8, v5, p0

    if-le v8, v1, :cond_3

    if-lt v8, v6, :cond_3

    move v4, p0

    move v1, v8

    :cond_3
    add-int/lit8 p0, v5, 0x2

    goto :goto_1

    :cond_4
    new-instance p0, Lwd/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :cond_5
    :goto_3
    array-length v5, v3

    if-ge v2, v5, :cond_8

    const/16 v5, 0x3a

    if-ne v2, v4, :cond_6

    invoke-virtual {p0, v5}, Lwd/g;->b0(I)V

    add-int/2addr v2, v1

    if-ne v2, v7, :cond_5

    invoke-virtual {p0, v5}, Lwd/g;->b0(I)V

    goto :goto_3

    :cond_6
    if-lez v2, :cond_7

    invoke-virtual {p0, v5}, Lwd/g;->b0(I)V

    :cond_7
    aget-byte v5, v3, v2

    sget-object v6, Lid/b;->a:[B

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v6, v2, 0x1

    aget-byte v6, v3, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v5, v6

    int-to-long v5, v5

    invoke-virtual {p0, v5, v6}, Lwd/g;->k0(J)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lwd/g;->H()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    array-length v0, v3

    if-ne v0, v6, :cond_a

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Invalid IPv6 address: \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, p0}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_b
    :try_start_0
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "toASCII(host)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v1, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {p0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    return-object v3

    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v2

    :goto_4
    if-ge v5, v1, :cond_f

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x1f

    invoke-static {v6, v7}, Ltb/k;->h(II)I

    move-result v7

    if-lez v7, :cond_10

    const/16 v7, 0x7f

    invoke-static {v6, v7}, Ltb/k;->h(II)I

    move-result v7

    if-ltz v7, :cond_d

    goto :goto_5

    :cond_d
    const-string v7, " #%/:?@[\\]"

    const/4 v8, 0x6

    invoke-static {v7, v6, v2, v2, v8}, LKc/k;->u(Ljava/lang/CharSequence;CIZI)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v6, v4, :cond_e

    goto :goto_5

    :cond_e
    add-int/2addr v5, v0

    goto :goto_4

    :cond_f
    move-object v3, p0

    :catch_0
    :cond_10
    :goto_5
    return-object v3
.end method
