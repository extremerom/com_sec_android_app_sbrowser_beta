.class public abstract Ll5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method public static a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lt/z0;->a()Lt/z0;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lt/z0;->c(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/io/InputStream;Ljava/lang/String;)LQd/j;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, LOd/a;->a:Ljava/util/regex/Pattern;

    new-instance v1, LZ3/x;

    new-instance v2, Lorg/jsoup/parser/b;

    invoke-direct {v2}, Lorg/jsoup/parser/b;-><init>()V

    invoke-direct {v1, v2}, LZ3/x;-><init>(Lorg/jsoup/parser/b;)V

    const-string v2, "charset"

    const-string v3, ""

    if-nez v0, :cond_0

    new-instance v0, LQd/j;

    invoke-direct {v0, v3}, LQd/j;-><init>(Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_0
    sget v4, LPd/a;->e:I

    instance-of v4, v0, LPd/a;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    check-cast v0, LPd/a;

    move-object v4, v0

    goto :goto_0

    :cond_1
    new-instance v4, LPd/a;

    invoke-direct {v4, v5, v0}, LPd/a;-><init>(ILjava/io/InputStream;)V

    :goto_0
    const v0, 0x8000

    :try_start_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->mark(I)V

    const/16 v6, 0x13ff

    new-array v7, v6, [B

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move v9, v6

    :goto_1
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v4, v7, v5, v10}, LPd/a;->read([BII)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    goto :goto_2

    :cond_2
    if-lt v10, v9, :cond_1a

    invoke-virtual {v8, v7, v5, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v11, :cond_3

    move v7, v8

    goto :goto_3

    :cond_3
    move v7, v5

    :goto_3
    invoke-virtual {v4}, LPd/a;->reset()V

    invoke-static {v6}, LOd/a;->a(Ljava/nio/ByteBuffer;)LJ2/b0;

    move-result-object v9

    if-eqz v9, :cond_4

    iget-object v10, v9, LJ2/b0;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    move-object/from16 v10, p1

    :goto_4
    sget-object v11, LOd/a;->c:Ljava/lang/String;

    sget-object v12, LOd/a;->b:Ljava/nio/charset/Charset;

    iget-object v13, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v13, Lorg/jsoup/parser/b;

    if-nez v10, :cond_13

    :try_start_1
    invoke-virtual {v12, v6}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v15

    if-eqz v15, :cond_5

    new-instance v15, Ljava/io/CharArrayReader;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v14

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v0

    invoke-virtual {v6}, Ljava/nio/Buffer;->limit()I

    move-result v6

    invoke-direct {v15, v14, v0, v6}, Ljava/io/CharArrayReader;-><init>([CII)V

    invoke-virtual {v13, v15, v3, v1}, Lorg/jsoup/parser/b;->C(Ljava/io/Reader;Ljava/lang/String;LZ3/x;)LQd/j;

    move-result-object v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_5
    invoke-virtual {v6}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, LZ3/x;->b:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/b;

    invoke-virtual {v0, v6, v3, v1}, Lorg/jsoup/parser/b;->C(Ljava/io/Reader;Ljava/lang/String;LZ3/x;)LQd/j;

    move-result-object v0
    :try_end_1
    .catch LNd/a; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    :try_start_2
    const-string v6, "meta[http-equiv=content-type], meta[charset]"

    invoke-virtual {v0, v6}, LQd/n;->J(Ljava/lang/String;)LRd/d;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v14, 0x0

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, LQd/n;

    const-string v5, "http-equiv"

    invoke-virtual {v15, v5}, LQd/u;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "content"

    invoke-virtual {v15, v5}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    const/4 v14, 0x0

    goto :goto_7

    :cond_7
    sget-object v14, LOd/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v14, "charset="

    invoke-virtual {v5, v14, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, LOd/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    :cond_8
    :goto_7
    if-nez v14, :cond_9

    invoke-virtual {v15, v2}, LQd/u;->l(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v15, v2}, LQd/u;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v14, v5

    :cond_9
    if-eqz v14, :cond_a

    goto :goto_8

    :cond_a
    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    :goto_8
    if-nez v14, :cond_10

    iget-object v2, v0, LQd/n;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {v0}, LQd/n;->k()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LQd/u;

    instance-of v5, v2, LQd/x;

    if-eqz v5, :cond_c

    check-cast v2, LQd/x;

    goto :goto_a

    :cond_c
    instance-of v5, v2, LQd/e;

    if-eqz v5, :cond_f

    check-cast v2, LQd/e;

    invoke-virtual {v2}, LQd/t;->z()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_e

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    const-string v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    :cond_d
    move v5, v8

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_f

    invoke-virtual {v2}, LQd/e;->B()LQd/x;

    move-result-object v2

    goto :goto_a

    :cond_f
    const/4 v2, 0x0

    :goto_a
    if-eqz v2, :cond_10

    invoke-virtual {v2}, LQd/t;->z()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string v5, "encoding"

    invoke-virtual {v2, v5}, LQd/t;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_10
    invoke-static {v14}, LOd/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v2, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\"\']"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_c

    :cond_11
    if-nez v7, :cond_12

    goto :goto_c

    :cond_12
    move-object v14, v0

    goto :goto_d

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_13
    const-string v0, "Must set charset arg to character set of file to parse. Set to null to attempt to detect from HTML"

    invoke-static {v10, v0}, LOd/b;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    const/4 v14, 0x0

    :goto_d
    if-nez v14, :cond_19

    if-nez v10, :cond_14

    move-object v10, v11

    :cond_14
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    const v5, 0x8000

    invoke-direct {v2, v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_16

    :try_start_3
    iget-boolean v0, v9, LJ2/b0;->b:Z

    if-eqz v0, :cond_16

    const-wide/16 v5, 0x1

    invoke-virtual {v2, v5, v6}, Ljava/io/BufferedReader;->skip(J)J

    move-result-wide v14

    cmp-long v0, v14, v5

    if-nez v0, :cond_15

    move v5, v8

    goto :goto_e

    :cond_15
    const/4 v5, 0x0

    :goto_e
    invoke-static {v5}, LOd/b;->d(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_f

    :catchall_1
    move-exception v0

    goto :goto_11

    :cond_16
    :goto_f
    :try_start_4
    invoke-virtual {v13, v2, v3, v1}, Lorg/jsoup/parser/b;->C(Ljava/io/Reader;Ljava/lang/String;LZ3/x;)LQd/j;

    move-result-object v0
    :try_end_4
    .catch LNd/a; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    move-object v1, v12

    goto :goto_10

    :cond_17
    invoke-static {v10}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    :goto_10
    iget-object v3, v0, LQd/j;->j:LQd/h;

    iput-object v1, v3, LQd/h;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->canEncode()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-virtual {v0, v12}, LQd/j;->O(Ljava/nio/charset/Charset;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_18
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_12

    :catch_1
    move-exception v0

    move-object v1, v0

    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_11
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_19
    move-object v0, v14

    :goto_12
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :goto_13
    return-object v0

    :cond_1a
    move v5, v0

    sub-int/2addr v9, v10

    const/4 v0, 0x0

    :try_start_9
    invoke-virtual {v8, v7, v0, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move/from16 v16, v5

    move v5, v0

    move/from16 v0, v16

    goto/16 :goto_1

    :goto_14
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static c(Ljava/lang/String;)LQd/j;
    .locals 3

    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, LZ3/x;

    invoke-direct {p0, v0}, LZ3/x;-><init>(Lorg/jsoup/parser/b;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2, p0}, Lorg/jsoup/parser/b;->C(Ljava/io/Reader;Ljava/lang/String;LZ3/x;)LQd/j;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/nio/MappedByteBuffer;)Ls1/b;
    .locals 13

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    const/16 v1, 0x64

    const-string v2, "Cannot read metadata."

    if-gt v0, v1, :cond_5

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    const-wide v4, 0xffffffffL

    const-wide/16 v6, -0x1

    if-ge v3, v0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v9

    add-int/lit8 v9, v9, 0x4

    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v9

    int-to-long v9, v9

    and-long/2addr v9, v4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v11

    add-int/lit8 v11, v11, 0x4

    invoke-virtual {p0, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const v11, 0x6d657461

    if-ne v11, v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-wide v9, v6

    :goto_1
    cmp-long v0, v9, v6

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    int-to-long v6, v0

    sub-long v6, v9, v6

    long-to-int v0, v6

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    int-to-long v6, v0

    and-long/2addr v6, v4

    :goto_2
    int-to-long v11, v1

    cmp-long v0, v11, v6

    if-gez v0, :cond_4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-long v11, v3

    and-long/2addr v11, v4

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    const v3, 0x456d6a69

    if-eq v3, v0, :cond_3

    const v3, 0x656d6a69

    if-ne v3, v0, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-long/2addr v11, v9

    long-to-int v0, v11

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v0, Ls1/b;

    invoke-direct {v0}, Lf1/L;-><init>()V

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v1

    iput-object p0, v0, Lf1/L;->d:Ljava/lang/Object;

    iput v2, v0, Lf1/L;->a:I

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p0

    sub-int/2addr v2, p0

    iput v2, v0, Lf1/L;->b:I

    iget-object p0, v0, Lf1/L;->d:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    iput p0, v0, Lf1/L;->c:I

    return-object v0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
