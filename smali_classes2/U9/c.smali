.class public final LU9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJa/a;
.implements Lcd/a;


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Comparable;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/ContentValues;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.sec.android.log.diagmonagent.sa/common"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LU9/c;->b:Ljava/lang/Object;

    const-string v0, "content://com.sec.android.log.diagmonagent.sa/log"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LU9/c;->c:Ljava/lang/Comparable;

    const/4 v0, 0x0

    iput-object v0, p0, LU9/c;->d:Ljava/lang/Object;

    iput-object p1, p0, LU9/c;->e:Ljava/lang/Object;

    iput p2, p0, LU9/c;->a:I

    iput-object p3, p0, LU9/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Led/e;Lfd/h;LP9/a;Lbd/d;)V
    .locals 1

    const-string v0, "mode"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU9/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LU9/c;->c:Ljava/lang/Comparable;

    iput-object p3, p0, LU9/c;->d:Ljava/lang/Object;

    const/4 p2, -0x1

    iput p2, p0, LU9/c;->a:I

    iget-object p1, p1, Led/b;->a:Led/d;

    iput-object p1, p0, LU9/c;->e:Ljava/lang/Object;

    iget-boolean p1, p1, Led/d;->f:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p1, Lfd/d;

    invoke-direct {p1, p4}, Lfd/d;-><init>(Lbd/d;)V

    :goto_0
    iput-object p1, p0, LU9/c;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/io/StringWriter;IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    if-lt p3, v0, :cond_0

    new-instance v0, Ljava/io/StringWriter;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2, v1}, Ljava/io/StringWriter;-><init>(I)V

    iput-object p1, p0, LU9/c;->b:Ljava/lang/Object;

    iput p2, p0, LU9/c;->a:I

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, LU9/c;->c:Ljava/lang/Comparable;

    invoke-virtual {v2}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p1

    iput-object p1, p0, LU9/c;->d:Ljava/lang/Object;

    new-instance p1, Ln7/f;

    const-string v1, ""

    invoke-direct {p1, v0, p2, v1}, Ln7/f;-><init>(Ljava/io/StringWriter;ILjava/lang/String;)V

    iput-object p1, p0, LU9/c;->e:Ljava/lang/Object;

    new-instance p1, Ln7/f;

    invoke-direct {p1, v2, p3, p4}, Ln7/f;-><init>(Ljava/io/StringWriter;ILjava/lang/String;)V

    iput-object p1, p0, LU9/c;->f:Ljava/lang/Object;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "rightWidth < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "leftWidth < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "out == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ljava/lang/StringBuffer;Ljava/io/Writer;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result p0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbd/d;)LU9/c;
    .locals 11

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LU9/c;->b:Ljava/lang/Object;

    check-cast v0, Led/e;

    invoke-interface {p1}, Lbd/d;->d()LG5/u;

    move-result-object v1

    instance-of v2, v1, Lbd/a;

    const/4 v3, 0x0

    iget-object v4, v0, Led/b;->a:Led/d;

    if-eqz v2, :cond_0

    sget-object v1, Lfd/h;->POLY_OBJ:Lfd/h;

    goto :goto_1

    :cond_0
    sget-object v2, Lbd/g;->c:Lbd/g;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lfd/h;->LIST:Lfd/h;

    goto :goto_1

    :cond_1
    sget-object v2, Lbd/g;->d:Lbd/g;

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1, v3}, Lbd/d;->h(I)Lbd/d;

    move-result-object v1

    iget-object v2, v0, Led/b;->b:Lu5/d;

    invoke-static {v1, v2}, Lfd/e;->c(Lbd/d;Lu5/d;)Lbd/d;

    move-result-object v1

    invoke-interface {v1}, Lbd/d;->d()LG5/u;

    move-result-object v2

    instance-of v5, v2, Lbd/c;

    if-nez v5, :cond_4

    sget-object v5, Lbd/f;->c:Lbd/f;

    invoke-static {v2, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v2, v4, Led/d;->d:Z

    if-eqz v2, :cond_3

    sget-object v1, Lfd/h;->LIST:Lfd/h;

    goto :goto_1

    :cond_3
    new-instance p0, Lfd/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Value of type \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lbd/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' can\'t be used in JSON as a key in the map. It should have either primitive or enum kind, but its kind is \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lbd/d;->d()LG5/u;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'.\nUse \'allowStructuredMapKeys = true\' in \'Json {}\' builder to convert such maps to [key1, value1, key2, value2,...] arrays."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "message"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    sget-object v1, Lfd/h;->MAP:Lfd/h;

    goto :goto_1

    :cond_5
    sget-object v1, Lfd/h;->OBJ:Lfd/h;

    :goto_1
    iget-object v2, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast v2, LP9/a;

    iget-object v5, v2, LP9/a;->c:Ljava/lang/Object;

    check-cast v5, LG5/g4;

    iget v6, v5, LG5/g4;->b:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v5, LG5/g4;->b:I

    iget-object v8, v5, LG5/g4;->c:Ljava/lang/Object;

    check-cast v8, [Ljava/lang/Object;

    array-length v9, v8

    if-ne v6, v9, :cond_6

    mul-int/lit8 v9, v6, 0x2

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    const-string v10, "copyOf(this, newSize)"

    invoke-static {v8, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v5, LG5/g4;->c:Ljava/lang/Object;

    iget-object v8, v5, LG5/g4;->d:Ljava/lang/Object;

    check-cast v8, [I

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    invoke-static {v8, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v5, LG5/g4;->d:Ljava/lang/Object;

    :cond_6
    iget-object v5, v5, LG5/g4;->c:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    iget-char v5, v1, Lfd/h;->begin:C

    invoke-virtual {v2, v5}, LP9/a;->g(C)V

    invoke-virtual {v2}, LP9/a;->r()B

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_9

    sget-object v3, Lfd/g;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v7, :cond_8

    const/4 v5, 0x2

    if-eq v3, v5, :cond_8

    const/4 v5, 0x3

    if-eq v3, v5, :cond_8

    iget-object v3, p0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v3, Lfd/h;

    if-ne v3, v1, :cond_7

    iget-boolean v3, v4, Led/d;->f:Z

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, LU9/c;

    invoke-direct {p0, v0, v1, v2, p1}, LU9/c;-><init>(Led/e;Lfd/h;LP9/a;Lbd/d;)V

    goto :goto_2

    :cond_8
    new-instance p0, LU9/c;

    invoke-direct {p0, v0, v1, v2, p1}, LU9/c;-><init>(Led/e;Lfd/h;LP9/a;Lbd/d;)V

    :goto_2
    return-object p0

    :cond_9
    const-string p0, "Unexpected leading comma"

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-static {v2, p0, v3, v0, p1}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0
.end method

.method public b()I
    .locals 19

    move-object/from16 v0, p0

    iget-object v0, v0, LU9/c;->d:Ljava/lang/Object;

    check-cast v0, LP9/a;

    invoke-virtual {v0}, LP9/a;->t()I

    move-result v1

    invoke-virtual {v0, v1}, LP9/a;->s(I)I

    move-result v1

    iget-object v2, v0, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "EOF"

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v1, v3, :cond_1e

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1e

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x22

    if-ne v3, v9, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v4, v6, v7, v5}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_1
    move v3, v6

    :goto_0
    move v12, v1

    move v13, v6

    move v14, v13

    move v15, v14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "Numeric value overflow"

    if-eq v12, v5, :cond_e

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x65

    if-eq v5, v7, :cond_3

    const/16 v7, 0x45

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v17, v4

    move/from16 v16, v15

    const/4 v7, 0x0

    const/4 v15, 0x6

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v13, :cond_2

    if-eq v12, v1, :cond_4

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v13, 0x1

    :goto_3
    const/4 v15, 0x1

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected symbol "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, " in numeric literal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v7, 0x0

    invoke-static {v0, v1, v7, v3, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :goto_4
    const-string v4, "Unexpected symbol \'-\' in numeric literal"

    const/16 v7, 0x2d

    if-ne v5, v7, :cond_6

    if-eqz v13, :cond_6

    if-eq v12, v1, :cond_5

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v15, 0x0

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v4, v5, v6, v15}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v6

    :cond_6
    const/4 v15, 0x0

    const/16 v7, 0x2b

    if-ne v5, v7, :cond_8

    if-eqz v13, :cond_8

    if-eq v12, v1, :cond_7

    add-int/lit8 v12, v12, 0x1

    move-object v7, v15

    move-object/from16 v4, v17

    const/4 v6, 0x0

    goto :goto_3

    :cond_7
    const-string v1, "Unexpected symbol \'+\' in numeric literal"

    const/4 v2, 0x0

    const/4 v7, 0x6

    invoke-static {v0, v1, v2, v15, v7}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :cond_8
    move-object/from16 v18, v2

    const/4 v7, 0x6

    const/16 v2, 0x2d

    if-ne v5, v2, :cond_a

    if-ne v12, v1, :cond_9

    add-int/lit8 v12, v12, 0x1

    move-object v7, v15

    move/from16 v15, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/4 v6, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    invoke-static {v0, v4, v2, v15, v7}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v15

    :cond_a
    invoke-static {v5}, Lfd/e;->d(C)B

    move-result v2

    if-nez v2, :cond_f

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v2, v5, -0x30

    if-ltz v2, :cond_d

    const/16 v4, 0xa

    if-ge v2, v4, :cond_d

    if-eqz v13, :cond_b

    int-to-long v4, v4

    mul-long/2addr v10, v4

    int-to-long v4, v2

    add-long/2addr v10, v4

    :goto_5
    move/from16 v15, v16

    move-object/from16 v4, v17

    move-object/from16 v2, v18

    const/4 v6, 0x0

    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_b
    int-to-long v4, v4

    mul-long/2addr v8, v4

    int-to-long v4, v2

    sub-long/2addr v8, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v8, v4

    if-gtz v2, :cond_c

    goto :goto_5

    :cond_c
    const/4 v2, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v6, v7, v8, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_d
    const/4 v2, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected symbol \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "\' in numeric literal"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7, v8, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v8

    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move/from16 v16, v15

    :cond_f
    if-eq v12, v1, :cond_10

    const/4 v2, 0x1

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    :goto_6
    if-eq v1, v12, :cond_11

    if-eqz v14, :cond_12

    add-int/lit8 v4, v12, -0x1

    if-eq v1, v4, :cond_11

    goto :goto_7

    :cond_11
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_c

    :cond_12
    :goto_7
    if-eqz v3, :cond_15

    if-eqz v2, :cond_14

    move-object/from16 v2, v18

    invoke-virtual {v2, v12}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_13

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_13
    const-string v1, "Expected closing quotation mark"

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_14
    move-object/from16 v1, v17

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_15
    :goto_8
    iput v12, v0, LP9/a;->b:I

    if-eqz v13, :cond_1a

    long-to-double v1, v8

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    if-nez v16, :cond_16

    long-to-double v7, v10

    neg-double v7, v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    goto :goto_9

    :cond_16
    move/from16 v7, v16

    const/4 v5, 0x1

    if-ne v7, v5, :cond_19

    long-to-double v7, v10

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    :goto_9
    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_18

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v1, v3

    if-ltz v3, :cond_18

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-nez v3, :cond_17

    double-to-long v8, v1

    goto :goto_a

    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t convert "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " to Long"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_18
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v6, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_19
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1a
    :goto_a
    if-eqz v14, :cond_1b

    goto :goto_b

    :cond_1b
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, v8, v1

    if-eqz v1, :cond_1d

    neg-long v8, v8

    :goto_b
    long-to-int v1, v8

    int-to-long v2, v1

    cmp-long v2, v8, v2

    if-nez v2, :cond_1c

    return v1

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse int for input \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_1d
    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v6, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :goto_c
    const-string v1, "Expected numeric literal"

    invoke-static {v0, v1, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4

    :cond_1e
    move-object v1, v4

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-static {v0, v1, v3, v4, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v4
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LU9/c;->e:Ljava/lang/Object;

    check-cast v0, Led/d;

    iget-boolean v0, v0, Led/d;->c:Z

    iget-object p0, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast p0, LP9/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LP9/a;->j()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LP9/a;->h()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public e(Lbd/d;)I
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "descriptor"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lfd/g;->a:[I

    iget-object v3, v0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v3, Lfd/h;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    iget-object v4, v0, LU9/c;->d:Ljava/lang/Object;

    check-cast v4, LP9/a;

    const/4 v5, 0x2

    const-string v6, "Unexpected trailing comma"

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v12, 0x3a

    const/4 v13, -0x1

    iget-object v14, v4, LP9/a;->c:Ljava/lang/Object;

    check-cast v14, LG5/g4;

    if-eq v2, v5, :cond_28

    if-eq v2, v7, :cond_4

    invoke-virtual {v4}, LP9/a;->u()Z

    move-result v1

    invoke-virtual {v4}, LP9/a;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, LU9/c;->a:I

    if-eq v2, v13, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Expected end of the array or comma"

    invoke-static {v4, v0, v9, v11, v10}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v11

    :cond_1
    :goto_0
    add-int/lit8 v13, v2, 0x1

    iput v13, v0, LU9/c;->a:I

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    :goto_1
    move-object/from16 v19, v3

    goto/16 :goto_17

    :cond_3
    invoke-static {v4, v6, v9, v11, v10}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v11

    :cond_4
    invoke-virtual {v4}, LP9/a;->u()Z

    move-result v2

    :goto_2
    invoke-virtual {v4}, LP9/a;->d()Z

    move-result v5

    iget-object v13, v0, LU9/c;->f:Ljava/lang/Object;

    check-cast v13, Lfd/d;

    if-eqz v5, :cond_21

    iget-object v2, v0, LU9/c;->e:Ljava/lang/Object;

    check-cast v2, Led/d;

    iget-boolean v5, v2, Led/d;->c:Z

    if-eqz v5, :cond_5

    invoke-virtual {v4}, LP9/a;->j()Ljava/lang/String;

    move-result-object v17

    :goto_3
    move-object/from16 v9, v17

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, LP9/a;->e()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    :goto_4
    invoke-virtual {v4, v12}, LP9/a;->g(C)V

    iget-object v12, v0, LU9/c;->b:Ljava/lang/Object;

    check-cast v12, Led/e;

    invoke-static {v1, v12, v9}, Lfd/e;->f(Lbd/d;Led/e;Ljava/lang/String;)I

    move-result v11

    const/4 v10, -0x3

    if-eq v11, v10, :cond_14

    iget-boolean v15, v2, Led/d;->h:Z

    if-eqz v15, :cond_10

    invoke-interface {v1, v11}, Lbd/d;->h(I)Lbd/d;

    move-result-object v15

    invoke-interface {v15}, Lbd/d;->a()V

    invoke-virtual {v4}, LP9/a;->t()I

    move-result v7

    invoke-virtual {v4, v7}, LP9/a;->s(I)I

    move-result v7

    iget-object v10, v4, LP9/a;->f:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v8, v18, v7

    const/16 v18, 0x0

    const/4 v1, 0x4

    if-lt v8, v1, :cond_6

    const/4 v1, -0x1

    if-ne v7, v1, :cond_7

    :cond_6
    move-object/from16 v19, v3

    goto :goto_6

    :cond_7
    move-object/from16 v19, v3

    move/from16 v3, v18

    :goto_5
    const/4 v1, 0x4

    if-ge v3, v1, :cond_9

    const-string v1, "null"

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int v0, v7, v3

    invoke-virtual {v10, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_8

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_5

    :cond_9
    move v0, v1

    if-le v8, v0, :cond_a

    add-int/lit8 v1, v7, 0x4

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lfd/e;->d(C)B

    move-result v1

    if-nez v1, :cond_a

    goto :goto_6

    :cond_a
    add-int/2addr v7, v0

    iput v7, v4, LP9/a;->b:I

    const/16 v18, 0x1

    :goto_6
    if-eqz v18, :cond_b

    goto :goto_a

    :cond_b
    invoke-interface {v15}, Lbd/d;->d()LG5/u;

    move-result-object v0

    sget-object v1, Lbd/f;->c:Lbd/f;

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v15}, Lbd/d;->a()V

    invoke-virtual {v4}, LP9/a;->r()B

    move-result v0

    if-eqz v5, :cond_d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    if-eqz v0, :cond_c

    :goto_7
    const/4 v0, 0x0

    goto :goto_9

    :cond_c
    invoke-virtual {v4}, LP9/a;->i()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_d
    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, LP9/a;->h()Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, v4, LP9/a;->d:Ljava/lang/Object;

    :goto_9
    if-nez v0, :cond_f

    goto :goto_b

    :cond_f
    invoke-static {v15, v12, v0}, Lfd/e;->f(Lbd/d;Led/e;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_11

    invoke-virtual {v4}, LP9/a;->h()Ljava/lang/String;

    :goto_a
    invoke-virtual {v4}, LP9/a;->u()Z

    move-result v0

    const/4 v1, 0x0

    goto :goto_d

    :cond_10
    move-object/from16 v19, v3

    :cond_11
    :goto_b
    if-eqz v13, :cond_13

    iget-object v0, v13, Lfd/d;->a:Ldd/c;

    const/16 v1, 0x40

    if-ge v11, v1, :cond_12

    iget-wide v1, v0, Ldd/c;->c:J

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v11

    or-long/2addr v1, v3

    iput-wide v1, v0, Ldd/c;->c:J

    goto :goto_c

    :cond_12
    const-wide/16 v3, 0x1

    ushr-int/lit8 v1, v11, 0x6

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    and-int/lit8 v2, v11, 0x3f

    iget-object v0, v0, Ldd/c;->d:[J

    aget-wide v5, v0, v1

    shl-long v2, v3, v2

    or-long/2addr v2, v5

    aput-wide v2, v0, v1

    :cond_13
    :goto_c
    move v13, v11

    goto/16 :goto_17

    :cond_14
    move-object/from16 v19, v3

    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_d
    if-eqz v1, :cond_20

    iget-boolean v0, v2, Led/d;->b:Z

    iget-object v1, v4, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, LP9/a;->r()B

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_15

    const/4 v7, 0x6

    if-eq v2, v7, :cond_15

    invoke-virtual {v4}, LP9/a;->i()Ljava/lang/String;

    goto/16 :goto_11

    :cond_15
    :goto_e
    invoke-virtual {v4}, LP9/a;->r()B

    move-result v2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_17

    if-eqz v5, :cond_16

    invoke-virtual {v4}, LP9/a;->i()Ljava/lang/String;

    goto :goto_e

    :cond_16
    invoke-virtual {v4}, LP9/a;->e()Ljava/lang/String;

    goto :goto_e

    :cond_17
    if-ne v2, v3, :cond_18

    goto :goto_f

    :cond_18
    const/4 v7, 0x6

    if-ne v2, v7, :cond_19

    :goto_f
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_19
    const/16 v7, 0x9

    if-ne v2, v7, :cond_1b

    invoke-static {v0}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    if-ne v2, v3, :cond_1a

    invoke-static {v0}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto :goto_10

    :cond_1a
    iget v0, v4, LP9/a;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found ] instead of } at path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lfd/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Lfd/b;

    move-result-object v0

    throw v0

    :cond_1b
    const/4 v7, 0x7

    if-ne v2, v7, :cond_1d

    invoke-static {v0}, Lfb/n;->K(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    move-result v2

    const/4 v7, 0x6

    if-ne v2, v7, :cond_1c

    invoke-static {v0}, Lfb/t;->t(Ljava/util/AbstractList;)Ljava/lang/Object;

    goto :goto_10

    :cond_1c
    iget v0, v4, LP9/a;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "found } instead of ] at path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lfd/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Lfd/b;

    move-result-object v0

    throw v0

    :cond_1d
    const/16 v7, 0xa

    if-eq v2, v7, :cond_1e

    :goto_10
    invoke-virtual {v4}, LP9/a;->f()B

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_15

    :goto_11
    invoke-virtual {v4}, LP9/a;->u()Z

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v19

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v12, 0x3a

    const/4 v13, -0x1

    goto/16 :goto_2

    :cond_1e
    const-string v0, "Unexpected end of input due to malformed JSON during ignoring unknown keys"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v4, v0, v2, v1, v3}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_1f
    const/4 v2, 0x0

    const/4 v3, 0x6

    iget v0, v4, LP9/a;->b:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3, v9}, LKc/k;->z(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    const-string v1, "Encountered an unknown key \'"

    const/16 v2, 0x27

    invoke-static {v2, v1, v9}, LB/e;->m(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Use \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-virtual {v4, v0, v1, v2}, LP9/a;->l(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_20
    move-object/from16 v1, p1

    move v2, v0

    move-object/from16 v3, v19

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/16 v12, 0x3a

    const/4 v13, -0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_21
    move-object/from16 v19, v3

    if-nez v2, :cond_27

    if-eqz v13, :cond_26

    iget-object v0, v13, Lfd/d;->a:Ldd/c;

    iget-object v1, v0, Ldd/c;->a:Lbd/d;

    invoke-interface {v1}, Lbd/d;->c()I

    move-result v2

    :cond_22
    iget-wide v3, v0, Ldd/c;->c:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    iget-object v8, v0, Ldd/c;->b:Lfd/c;

    if-eqz v7, :cond_23

    not-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v3

    iget-wide v4, v0, Ldd/c;->c:J

    const-wide/16 v6, 0x1

    shl-long v9, v6, v3

    or-long/2addr v4, v9

    iput-wide v4, v0, Ldd/c;->c:J

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v8, v1, v4}, Lfd/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_22

    :goto_12
    move v13, v3

    goto/16 :goto_17

    :cond_23
    const/16 v3, 0x40

    if-le v2, v3, :cond_26

    iget-object v0, v0, Ldd/c;->d:[J

    array-length v2, v0

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v2, :cond_26

    add-int/lit8 v3, v9, 0x1

    mul-int/lit8 v4, v3, 0x40

    aget-wide v10, v0, v9

    :cond_24
    cmp-long v7, v10, v5

    if-eqz v7, :cond_25

    not-long v12, v10

    invoke-static {v12, v13}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v7

    const-wide/16 v12, 0x1

    shl-long v15, v12, v7

    or-long/2addr v10, v15

    add-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v8, v1, v15}, Lfd/c;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_24

    aput-wide v10, v0, v9

    move v13, v7

    goto :goto_17

    :cond_25
    const-wide/16 v12, 0x1

    aput-wide v10, v0, v9

    move v9, v3

    goto :goto_13

    :cond_26
    const/4 v13, -0x1

    goto :goto_17

    :cond_27
    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v4, v6, v0, v2, v1}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_28
    move-object/from16 v19, v3

    iget v1, v0, LU9/c;->a:I

    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_29

    const/4 v2, 0x1

    goto :goto_14

    :cond_29
    const/4 v2, 0x0

    :goto_14
    if-eqz v2, :cond_2a

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    invoke-virtual {v4}, LP9/a;->u()Z

    move-result v1

    goto :goto_15

    :cond_2a
    const/16 v1, 0x3a

    const/4 v3, -0x1

    invoke-virtual {v4, v1}, LP9/a;->g(C)V

    :cond_2b
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v4}, LP9/a;->d()Z

    move-result v5

    if-eqz v5, :cond_30

    if-eqz v2, :cond_2f

    iget v2, v0, LU9/c;->a:I

    if-ne v2, v3, :cond_2d

    iget v2, v4, LP9/a;->b:I

    if-nez v1, :cond_2c

    goto :goto_16

    :cond_2c
    const/4 v3, 0x0

    invoke-static {v4, v6, v2, v3, v7}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_2d
    const/4 v3, 0x0

    iget v2, v4, LP9/a;->b:I

    if-eqz v1, :cond_2e

    goto :goto_16

    :cond_2e
    const-string v0, "Expected comma after the key-value pair"

    invoke-static {v4, v0, v2, v3, v7}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3

    :cond_2f
    :goto_16
    iget v1, v0, LU9/c;->a:I

    const/4 v2, 0x1

    add-int/lit8 v13, v1, 0x1

    iput v13, v0, LU9/c;->a:I

    goto :goto_17

    :cond_30
    if-nez v1, :cond_32

    goto/16 :goto_12

    :goto_17
    sget-object v0, Lfd/h;->MAP:Lfd/h;

    move-object/from16 v3, v19

    if-eq v3, v0, :cond_31

    iget-object v0, v14, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, v14, LG5/g4;->b:I

    aput v13, v0, v1

    :cond_31
    return v13

    :cond_32
    const-string v0, "Expected \'}\', but had \',\' instead"

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v4, v0, v1, v3, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v3
.end method

.method public f(Lbd/d;I)I
    .locals 0

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LU9/c;->b()I

    move-result p0

    return p0
.end method

.method public g(Lbd/d;ILad/b;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const-string p4, "descriptor"

    invoke-static {p1, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "deserializer"

    invoke-static {p3, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Lfd/h;->MAP:Lfd/h;

    iget-object v0, p0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v0, Lfd/h;

    const/4 v1, 0x1

    if-ne v0, p4, :cond_0

    and-int/lit8 p2, p2, 0x1

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p4, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast p4, LP9/a;

    const/4 v0, -0x2

    iget-object p4, p4, LP9/a;->c:Ljava/lang/Object;

    check-cast p4, LG5/g4;

    if-eqz p2, :cond_1

    iget-object v2, p4, LG5/g4;->d:Ljava/lang/Object;

    check-cast v2, [I

    iget v3, p4, LG5/g4;->b:I

    aget v2, v2, v3

    if-ne v2, v0, :cond_1

    iget-object v2, p4, LG5/g4;->c:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    sget-object v4, Lfd/f;->a:Lfd/f;

    aput-object v4, v2, v3

    :cond_1
    const-string v2, "descriptor"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LU9/c;->h(Lad/b;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p2, :cond_3

    iget-object p1, p4, LG5/g4;->d:Ljava/lang/Object;

    check-cast p1, [I

    iget p2, p4, LG5/g4;->b:I

    aget p1, p1, p2

    if-eq p1, v0, :cond_2

    add-int/2addr p2, v1

    iput p2, p4, LG5/g4;->b:I

    iget-object p1, p4, LG5/g4;->c:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    array-length p3, p1

    if-ne p2, p3, :cond_2

    mul-int/lit8 p2, p2, 0x2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "copyOf(this, newSize)"

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p4, LG5/g4;->c:Ljava/lang/Object;

    iget-object p1, p4, LG5/g4;->d:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-static {p1, p3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p4, LG5/g4;->d:Ljava/lang/Object;

    :cond_2
    iget-object p1, p4, LG5/g4;->c:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget p2, p4, LG5/g4;->b:I

    aput-object p0, p1, p2

    iget-object p1, p4, LG5/g4;->d:Ljava/lang/Object;

    check-cast p1, [I

    aput v0, p1, p2

    :cond_3
    return-object p0
.end method

.method public h(Lad/b;)Ljava/lang/Object;
    .locals 3

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {p1, p0}, Lad/b;->deserialize(Lcd/a;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lad/c; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v1, "at path"

    invoke-static {v0, v1}, LKc/k;->q(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    throw p1

    :cond_0
    new-instance v0, Lad/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast p0, LP9/a;

    iget-object p0, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast p0, LG5/g4;

    invoke-virtual {p0}, LG5/g4;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object v1, p1, Lad/c;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, p0, p1}, Lad/c;-><init>(Ljava/util/ArrayList;Ljava/lang/String;Lad/c;)V

    throw v0
.end method

.method public i(Lbd/d;)V
    .locals 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LU9/c;->b:Ljava/lang/Object;

    check-cast v0, Led/e;

    iget-object v0, v0, Led/b;->a:Led/d;

    iget-boolean v0, v0, Led/d;->b:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lbd/d;->c()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, LU9/c;->e(Lbd/d;)I

    move-result v0

    if-ne v0, v1, :cond_0

    :cond_1
    iget-object p1, p0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast p1, Lfd/h;

    iget-char p1, p1, Lfd/h;->end:C

    iget-object p0, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast p0, LP9/a;

    invoke-virtual {p0, p1}, LP9/a;->g(C)V

    iget-object p0, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast p0, LG5/g4;

    iget p1, p0, LG5/g4;->b:I

    iget-object v0, p0, LG5/g4;->d:Ljava/lang/Object;

    check-cast v0, [I

    aget v2, v0, p1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    aput v1, v0, p1

    add-int/2addr p1, v1

    iput p1, p0, LG5/g4;->b:I

    :cond_2
    iget p1, p0, LG5/g4;->b:I

    if-eq p1, v1, :cond_3

    add-int/2addr p1, v1

    iput p1, p0, LG5/g4;->b:I

    :cond_3
    return-void
.end method

.method public j()V
    .locals 8

    :goto_0
    iget-object v0, p0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v0, Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    iget-object v4, p0, LU9/c;->b:Ljava/lang/Object;

    check-cast v4, Ljava/io/StringWriter;

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_4

    iget v6, p0, LU9/c;->a:I

    sub-int/2addr v6, v2

    :goto_1
    if-lez v6, :cond_3

    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_4
    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(I)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v5, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public onFinish()I
    .locals 5

    const-string v0, "Save Result = "

    const-string v1, "SendLog Result = "

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, LU9/c;->d:Ljava/lang/Object;

    check-cast v3, Landroid/net/Uri;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LG5/F3;->a(Ljava/lang/String;)V

    iget v1, p0, LU9/c;->a:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    iget-object p0, p0, LU9/c;->e:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v1, "sendCommonSuccess"

    invoke-interface {p0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to get send result"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->j(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return v2
.end method

.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, LU9/c;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    iget-object v2, p0, LU9/c;->f:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentValues;

    iget-object v3, p0, LU9/c;->e:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    if-ne v0, v1, :cond_0

    :try_start_1
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LU9/c;->b:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LU9/c;->d:Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, LU9/c;->d:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to send log"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->j(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
