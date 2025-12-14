.class public final LQa/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final h:Lwd/j;

.field public static final i:Lwd/j;


# instance fields
.field public a:I

.field public b:[Ljava/lang/String;

.field public c:[I

.field public d:[I

.field public e:I

.field public final f:Lwd/i;

.field public final g:Lwd/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lwd/j;->d:Lwd/j;

    const-string v0, " >/=\n"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, LQa/h;->h:Lwd/j;

    const-string v0, "]]>"

    invoke-static {v0}, Lu5/d;->l(Ljava/lang/String;)Lwd/j;

    move-result-object v0

    sput-object v0, LQa/h;->i:Lwd/j;

    return-void
.end method

.method public constructor <init>(Lwd/i;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQa/h;->a:I

    const/16 v1, 0x20

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, LQa/h;->b:[Ljava/lang/String;

    new-array v2, v1, [I

    iput-object v2, p0, LQa/h;->c:[I

    new-array v1, v1, [I

    iput-object v1, p0, LQa/h;->d:[I

    const/4 v2, 0x1

    iput v2, p0, LQa/h;->e:I

    aput v0, v1, v0

    if-eqz p1, :cond_0

    iput-object p1, p0, LQa/h;->f:Lwd/i;

    invoke-interface {p1}, Lwd/i;->r()Lwd/g;

    move-result-object p1

    iput-object p1, p0, LQa/h;->g:Lwd/g;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final B()V
    .locals 4

    iget-object v0, p0, LQa/h;->d:[I

    iget v1, p0, LQa/h;->e:I

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x0

    aput v3, v0, v2

    add-int/lit8 v0, v1, -0x1

    iput v0, p0, LQa/h;->e:I

    iget-object v2, p0, LQa/h;->b:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    iget-object p0, p0, LQa/h;->c:[I

    add-int/lit8 v1, v1, -0x2

    aget v0, p0, v1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, v1

    return-void
.end method

.method public final E(I)V
    .locals 6

    iget v0, p0, LQa/h;->e:I

    iget-object v1, p0, LQa/h;->d:[I

    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    new-array v3, v2, [I

    new-array v4, v2, [I

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQa/h;->c:[I

    iget v1, p0, LQa/h;->e:I

    invoke-static {v0, v5, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LQa/h;->b:[Ljava/lang/String;

    iget v1, p0, LQa/h;->e:I

    invoke-static {v0, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, LQa/h;->d:[I

    iput-object v4, p0, LQa/h;->c:[I

    iput-object v2, p0, LQa/h;->b:[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, LQa/h;->d:[I

    iget v1, p0, LQa/h;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, LQa/h;->e:I

    aput p1, v0, v1

    return-void
.end method

.method public final G()V
    .locals 11

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LK3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected xml element attribute value (in double quotes or single quotes) but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v2, 0x0

    iput v2, p0, LQa/h;->a:I

    iget-object v3, p0, LQa/h;->b:[Ljava/lang/String;

    iget v4, p0, LQa/h;->e:I

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    if-ne v0, v1, :cond_3

    const/16 v0, 0x22

    goto :goto_1

    :cond_3
    const/16 v0, 0x27

    :cond_4
    :goto_1
    iget-object v1, p0, LQa/h;->f:Lwd/i;

    invoke-interface {v1, v0}, Lwd/i;->Q(B)J

    move-result-wide v3

    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_d

    iget-object v6, p0, LQa/h;->g:Lwd/g;

    invoke-virtual {v6, v3, v4}, Lwd/g;->f(J)B

    move-result v7

    const/16 v8, 0x5c

    const-wide/16 v9, 0x1

    if-ne v7, v8, :cond_c

    add-long/2addr v3, v9

    invoke-virtual {v6, v3, v4}, Lwd/g;->K(J)V

    invoke-interface {v1, v9, v10}, Lwd/i;->I(J)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v6}, Lwd/g;->q()B

    move-result v3

    const/16 v4, 0x62

    if-eq v3, v4, :cond_4

    const/16 v4, 0x66

    if-eq v3, v4, :cond_4

    const/16 v7, 0x6e

    if-eq v3, v7, :cond_4

    const/16 v7, 0x72

    if-eq v3, v7, :cond_4

    const/16 v7, 0x74

    if-eq v3, v7, :cond_4

    const/16 v7, 0x75

    if-eq v3, v7, :cond_5

    goto :goto_1

    :cond_5
    const-wide/16 v7, 0x4

    invoke-interface {v1, v7, v8}, Lwd/i;->I(J)Z

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_2
    const/4 v3, 0x4

    if-ge v1, v3, :cond_9

    int-to-long v9, v1

    invoke-virtual {v6, v9, v10}, Lwd/g;->f(J)B

    move-result v3

    const/16 v9, 0x30

    if-lt v3, v9, :cond_6

    const/16 v9, 0x39

    if-gt v3, v9, :cond_6

    goto :goto_3

    :cond_6
    const/16 v9, 0x61

    if-lt v3, v9, :cond_7

    if-gt v3, v4, :cond_7

    goto :goto_3

    :cond_7
    const/16 v9, 0x41

    if-lt v3, v9, :cond_8

    const/16 v9, 0x46

    if-gt v3, v9, :cond_8

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    sget-object v0, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7, v8, v0}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\u"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    throw v5

    :cond_9
    invoke-virtual {v6, v7, v8}, Lwd/g;->K(J)V

    goto :goto_1

    :cond_a
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    const-string v0, "Unterminated escape sequence"

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    throw v5

    :cond_c
    add-long/2addr v3, v9

    invoke-virtual {v6, v3, v4}, Lwd/g;->K(J)V

    return-void

    :cond_d
    const-string v0, "Unterminated string"

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    throw v5
.end method

.method public final H()V
    .locals 5

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    iget-object v2, p0, LQa/h;->g:Lwd/g;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iput v3, p0, LQa/h;->a:I

    iget-object v0, p0, LQa/h;->f:Lwd/i;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lwd/i;->Q(B)J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0, v1}, Lwd/g;->K(J)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unterminated element text content. Expected </"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQa/h;->b:[Ljava/lang/String;

    iget v2, p0, LQa/h;->e:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> but haven\'t found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iput v3, p0, LQa/h;->a:I

    invoke-virtual {p0}, LQa/h;->f()J

    move-result-wide v0

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Lwd/g;->K(J)V

    :goto_0
    return-void

    :cond_3
    new-instance v0, LK3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected xml element text content but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final J(Ljava/lang/String;)Z
    .locals 4

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, LQa/h;->f:Lwd/i;

    invoke-interface {v2, v0, v1}, Lwd/i;->I(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    int-to-long v2, v1

    iget-object v0, p0, LQa/h;->g:Lwd/g;

    invoke-virtual {v0, v2, v3}, Lwd/g;->f(J)B

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lwd/g;->q()B

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public final K(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, " at path "

    invoke-static {p1, v1}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a()V
    .locals 3

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, LQa/h;->E(I)V

    const/4 v0, 0x0

    iput v0, p0, LQa/h;->a:I

    return-void

    :cond_1
    new-instance v0, LK3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, LQa/g;->ELEMENT_BEGIN:LQa/g;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b()I
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, LQa/h;->d:[I

    iget v2, v0, LQa/h;->e:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v4, v1, v2

    const/16 v5, 0x20

    const/16 v6, 0x2f

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x3

    if-ne v4, v9, :cond_1

    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v1

    int-to-char v1, v1

    if-eq v1, v5, :cond_0

    if-eq v1, v6, :cond_0

    packed-switch v1, :pswitch_data_0

    iput v8, v0, LQa/h;->a:I

    return v8

    :cond_0
    :pswitch_0
    const-string v1, "Expected xml element name (literal expected)"

    invoke-virtual {v0, v1}, LQa/h;->K(Ljava/lang/String;)V

    throw v7

    :cond_1
    iget-object v13, v0, LQa/h;->f:Lwd/i;

    const-wide/16 v14, 0x9

    const/4 v12, 0x4

    const/16 v10, 0x3c

    const/16 v7, 0x3e

    iget-object v11, v0, LQa/h;->g:Lwd/g;

    if-ne v4, v12, :cond_a

    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v1

    if-eq v1, v5, :cond_2

    if-eq v1, v6, :cond_2

    packed-switch v1, :pswitch_data_1

    const/16 v1, 0x8

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_2
    :pswitch_1
    if-eq v1, v6, :cond_8

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_5

    if-ne v1, v7, :cond_4

    invoke-virtual/range {p0 .. p0}, LQa/h;->B()V

    iget-object v1, v0, LQa/h;->d:[I

    iget v2, v0, LQa/h;->e:I

    sub-int/2addr v2, v3

    aput v8, v1, v2

    invoke-virtual {v11}, Lwd/g;->q()B

    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v1

    if-eq v1, v10, :cond_3

    iput v9, v0, LQa/h;->a:I

    return v9

    :cond_3
    invoke-virtual/range {p0 .. p0}, LQa/h;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v11, v14, v15}, Lwd/g;->K(J)V

    const/16 v1, 0x9

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected character \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "\' while trying to read xml elements attribute"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQa/h;->K(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11}, Lwd/g;->q()B

    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_7

    const/16 v3, 0x27

    if-ne v2, v3, :cond_6

    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x7

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_6
    const-string v2, "Expected double quote (\") or single quote (\') while reading xml elements attribute"

    invoke-virtual {v0, v2}, LQa/h;->K(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x6

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_8
    const-wide/16 v1, 0x2

    invoke-interface {v13, v1, v2}, Lwd/i;->I(J)Z

    move-result v1

    if-eqz v1, :cond_9

    const-wide/16 v1, 0x1

    invoke-virtual {v11, v1, v2}, Lwd/g;->f(J)B

    move-result v1

    if-ne v1, v7, :cond_9

    invoke-virtual/range {p0 .. p0}, LQa/h;->B()V

    invoke-virtual {v11}, Lwd/g;->q()B

    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x2

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_9
    const-string v1, "Expected closing />"

    invoke-virtual {v0, v1}, LQa/h;->K(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_a
    if-ne v4, v8, :cond_c

    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v1

    if-eq v1, v10, :cond_b

    iput v9, v0, LQa/h;->a:I

    return v9

    :cond_b
    invoke-virtual/range {p0 .. p0}, LQa/h;->h()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v11, v14, v15}, Lwd/g;->K(J)V

    const/16 v1, 0x9

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_c
    if-nez v4, :cond_d

    aput v3, v1, v2

    goto :goto_0

    :cond_d
    if-ne v4, v3, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQa/h;->o(Z)I

    move-result v2

    const/4 v1, -0x1

    if-ne v2, v1, :cond_f

    iput v12, v0, LQa/h;->a:I

    return v12

    :cond_e
    const/4 v1, 0x6

    if-eq v4, v1, :cond_16

    :cond_f
    :goto_0
    invoke-virtual {v0, v3}, LQa/h;->o(Z)I

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_15

    const/16 v2, 0x27

    if-eq v1, v2, :cond_14

    if-eq v1, v10, :cond_10

    const/4 v1, 0x0

    return v1

    :cond_10
    invoke-virtual {v11}, Lwd/g;->q()B

    const-wide/16 v1, 0x1

    invoke-interface {v13, v1, v2}, Lwd/i;->I(J)Z

    move-result v1

    if-eqz v1, :cond_13

    const-wide/16 v1, 0x0

    invoke-virtual {v11, v1, v2}, Lwd/g;->f(J)B

    move-result v1

    if-ne v1, v6, :cond_13

    invoke-virtual {v11}, Lwd/g;->q()B

    invoke-virtual/range {p0 .. p0}, LQa/h;->t()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, LQa/h;->b:[Ljava/lang/String;

    iget v4, v0, LQa/h;->e:I

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, LQa/h;->o(Z)I

    move-result v1

    if-ne v1, v7, :cond_11

    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x2

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing closing \'>\' character in </"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, LQa/h;->b:[Ljava/lang/String;

    iget v4, v0, LQa/h;->e:I

    sub-int/2addr v4, v3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQa/h;->K(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Expected a closing element tag </"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, LQa/h;->b:[Ljava/lang/String;

    iget v5, v0, LQa/h;->e:I

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    const-string v4, "> but found </"

    const-string v5, ">"

    invoke-static {v2, v3, v4, v1, v5}, Lt/b;->k(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQa/h;->K(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_13
    iput v3, v0, LQa/h;->a:I

    return v3

    :cond_14
    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x7

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_15
    invoke-virtual {v11}, Lwd/g;->q()B

    const/4 v1, 0x6

    iput v1, v0, LQa/h;->a:I

    return v1

    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "XmlReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LQa/h;->B()V

    const/4 v0, 0x0

    iput v0, p0, LQa/h;->a:I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected end of element but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LQa/h;->a:I

    iget-object v0, p0, LQa/h;->g:Lwd/g;

    invoke-virtual {v0}, Lwd/g;->a()V

    iget-object p0, p0, LQa/h;->f:Lwd/i;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    iget v0, p0, LQa/h;->e:I

    iget-object v1, p0, LQa/h;->d:[I

    iget-object p0, p0, LQa/h;->b:[Ljava/lang/String;

    invoke-static {v0, p0, v1}, LQa/e;->d(I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/16 p0, 0x8

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()J
    .locals 4

    sget-object v0, LQa/h;->i:Lwd/j;

    iget-object v1, p0, LQa/h;->f:Lwd/i;

    invoke-interface {v1, v0}, Lwd/i;->A(Lwd/j;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<![CDATA[ at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " has never been closed with ]]>"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()Z
    .locals 5

    iget-object v0, p0, LQa/h;->f:Lwd/i;

    const-wide/16 v1, 0x9

    invoke-interface {v0, v1, v2}, Lwd/i;->I(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    iget-object p0, p0, LQa/h;->g:Lwd/g;

    invoke-virtual {p0, v0, v1}, Lwd/g;->f(J)B

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lwd/g;->f(J)B

    move-result v0

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lwd/g;->f(J)B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const-wide/16 v2, 0x3

    invoke-virtual {p0, v2, v3}, Lwd/g;->f(J)B

    move-result v0

    const/16 v2, 0x43

    if-ne v0, v2, :cond_0

    const-wide/16 v2, 0x4

    invoke-virtual {p0, v2, v3}, Lwd/g;->f(J)B

    move-result v0

    const/16 v2, 0x44

    if-ne v0, v2, :cond_0

    const-wide/16 v2, 0x5

    invoke-virtual {p0, v2, v3}, Lwd/g;->f(J)B

    move-result v0

    const/16 v2, 0x41

    if-ne v0, v2, :cond_0

    const-wide/16 v3, 0x6

    invoke-virtual {p0, v3, v4}, Lwd/g;->f(J)B

    move-result v0

    const/16 v3, 0x54

    if-ne v0, v3, :cond_0

    const-wide/16 v3, 0x7

    invoke-virtual {p0, v3, v4}, Lwd/g;->f(J)B

    move-result v0

    if-ne v0, v2, :cond_0

    const-wide/16 v2, 0x8

    invoke-virtual {p0, v2, v3}, Lwd/g;->f(J)B

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LQa/h;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, LQa/h;->a:I

    iget-object v1, p0, LQa/h;->b:[Ljava/lang/String;

    iget p0, p0, LQa/h;->e:I

    add-int/lit8 p0, p0, -0x1

    aput-object v0, v1, p0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected xml element attribute name but was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()Ljava/lang/String;
    .locals 3

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, LQa/h;->t()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, p0, LQa/h;->a:I

    iget-object v1, p0, LQa/h;->b:[Ljava/lang/String;

    iget v2, p0, LQa/h;->e:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, LQa/h;->E(I)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected XML Tag Element name, but have "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final o(Z)I
    .locals 9

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :goto_1
    add-int/lit8 v2, v1, 0x1

    int-to-long v3, v2

    iget-object v5, p0, LQa/h;->f:Lwd/i;

    invoke-interface {v5, v3, v4}, Lwd/i;->I(J)Z

    move-result v3

    if-eqz v3, :cond_6

    int-to-long v3, v1

    iget-object v1, p0, LQa/h;->g:Lwd/g;

    invoke-virtual {v1, v3, v4}, Lwd/g;->f(J)B

    move-result v6

    const/16 v7, 0xa

    if-eq v6, v7, :cond_5

    const/16 v7, 0x20

    if-eq v6, v7, :cond_5

    const/16 v7, 0xd

    if-eq v6, v7, :cond_5

    const/16 v7, 0x9

    if-ne v6, v7, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v1, v3, v4}, Lwd/g;->K(J)V

    const/16 v2, 0x3c

    if-ne v6, v2, :cond_4

    invoke-virtual {p0}, LQa/h;->h()Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lwd/g;->f(J)B

    move-result v2

    const/16 v3, 0x21

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const-wide/16 v7, 0x4

    invoke-interface {v5, v7, v8}, Lwd/i;->I(J)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    const-string v2, "-->"

    invoke-virtual {p0, v2}, LQa/h;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    goto :goto_0

    :cond_1
    const-string p1, "Unterminated comment"

    invoke-virtual {p0, p1}, LQa/h;->K(Ljava/lang/String;)V

    throw v4

    :cond_2
    const/16 v3, 0x3f

    if-ne v2, v3, :cond_4

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    const-string v2, "?>"

    invoke-virtual {p0, v2}, LQa/h;->J(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lwd/g;->q()B

    invoke-virtual {v1}, Lwd/g;->q()B

    goto/16 :goto_0

    :cond_3
    const-string p1, "Unterminated xml declaration or processing instruction \"<?\""

    invoke-virtual {p0, p1}, LQa/h;->K(Ljava/lang/String;)V

    throw v4

    :cond_4
    return v6

    :cond_5
    :goto_2
    move v1, v2

    goto/16 :goto_1

    :cond_6
    if-nez p1, :cond_7

    const/4 p0, -0x1

    return p0

    :cond_7
    new-instance p1, Ljava/io/EOFException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end of input at path "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q()Ljava/lang/String;
    .locals 6

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    const/4 v2, 0x0

    iget-object v3, p0, LQa/h;->g:Lwd/g;

    if-ne v0, v1, :cond_2

    iput v2, p0, LQa/h;->a:I

    iget-object v0, p0, LQa/h;->f:Lwd/i;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lwd/i;->Q(B)J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0, v1, p0}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unterminated element text content. Expected </"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQa/h;->b:[Ljava/lang/String;

    iget v2, p0, LQa/h;->e:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "> but haven\'t found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQa/h;->K(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    iput v2, p0, LQa/h;->a:I

    invoke-virtual {p0}, LQa/h;->f()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v0, v1, p0}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v0, 0x3

    invoke-virtual {v3, v0, v1}, Lwd/g;->K(J)V

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string p0, ""

    return-object p0

    :cond_4
    new-instance v0, LK3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected xml element text content but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LQa/h;->v()LQa/g;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LQa/h;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Ljava/lang/String;
    .locals 4

    sget-object v0, LQa/h;->h:Lwd/j;

    iget-object v1, p0, LQa/h;->f:Lwd/i;

    invoke-interface {v1, v0}, Lwd/i;->x0(Lwd/j;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    iget-object p0, p0, LQa/h;->g:Lwd/g;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, LKc/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1, v2}, Lwd/g;->G(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lwd/g;->H()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final v()LQa/g;
    .locals 2

    iget v0, p0, LQa/h;->a:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, LQa/h;->b()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    const-string v1, "Unknown XmlToken: Peeked = "

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :pswitch_0
    sget-object p0, LQa/g;->ATTRIBUTE_NAME:LQa/g;

    return-object p0

    :pswitch_1
    sget-object p0, LQa/g;->ATTRIBUTE_VALUE:LQa/g;

    return-object p0

    :pswitch_2
    sget-object p0, LQa/g;->ELEMENT_NAME:LQa/g;

    return-object p0

    :pswitch_3
    sget-object p0, LQa/g;->END_OF_DOCUMENT:LQa/g;

    return-object p0

    :pswitch_4
    sget-object p0, LQa/g;->ELEMENT_TEXT_CONTENT:LQa/g;

    return-object p0

    :pswitch_5
    sget-object p0, LQa/g;->ELEMENT_END:LQa/g;

    return-object p0

    :pswitch_6
    sget-object p0, LQa/g;->ELEMENT_BEGIN:LQa/g;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
