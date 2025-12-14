.class public final Lg7/h;
.super Ln7/e;
.source "SourceFile"


# instance fields
.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Ln7/e;-><init>(I)V

    iput p2, p0, Lg7/h;->c:I

    return-void
.end method


# virtual methods
.method public final h()I
    .locals 1

    iget-object v0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg7/g;

    invoke-virtual {p0}, Lg7/g;->c()I

    move-result v0

    invoke-virtual {p0}, Lg7/g;->b()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final k(Ln7/b;)V
    .locals 14

    iget v0, p1, Ln7/b;->c:I

    iget-object v1, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length v1, v1

    invoke-virtual {p1}, Ln7/b;->d()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_7

    invoke-virtual {p0, v2}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg7/g;

    invoke-virtual {v4}, Lg7/g;->b()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    if-nez v5, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v8, p1, Ln7/b;->f:I

    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v9

    iget v9, p1, Ln7/b;->e:I

    sub-int/2addr v9, v8

    invoke-virtual {v4}, Lg7/g;->e()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    goto/16 :goto_4

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lg7/g;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v9, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    goto :goto_1

    :cond_2
    sub-int/2addr v9, v7

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/io/StringWriter;

    add-int/2addr v10, v11

    mul-int/lit8 v10, v10, 0x3

    invoke-direct {v12, v10}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v10, LU9/c;

    invoke-direct {v10, v12, v7, v9, v6}, LU9/c;-><init>(Ljava/io/StringWriter;IILjava/lang/String;)V

    :try_start_0
    iget-object v7, v10, LU9/c;->e:Ljava/lang/Object;

    check-cast v7, Ln7/f;

    invoke-virtual {v7, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v4, v10, LU9/c;->f:Ljava/lang/Object;

    check-cast v4, Ln7/f;

    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v4, v10, LU9/c;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuffer;

    iget-object v7, v10, LU9/c;->c:Ljava/lang/Comparable;

    check-cast v7, Ljava/lang/StringBuffer;

    iget-object v8, v10, LU9/c;->f:Ljava/lang/Object;

    check-cast v8, Ln7/f;

    iget-object v9, v10, LU9/c;->e:Ljava/lang/Object;

    check-cast v9, Ln7/f;

    :try_start_1
    invoke-static {v7, v9}, LU9/c;->d(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    invoke-static {v4, v8}, LU9/c;->d(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    invoke-virtual {v10}, LU9/c;->j()V

    invoke-static {v7, v9}, LU9/c;->d(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_2
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    const/16 v13, 0xa

    if-eqz v11, :cond_3

    invoke-virtual {v8, v13}, Ln7/f;->write(I)V

    invoke-virtual {v10}, LU9/c;->j()V

    goto :goto_2

    :cond_3
    invoke-static {v4, v8}, LU9/c;->d(Ljava/lang/StringBuffer;Ljava/io/Writer;)V

    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v9, v13}, Ln7/f;->write(I)V

    invoke-virtual {v10}, LU9/c;->j()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_4
    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_4
    if-eqz v7, :cond_5

    invoke-virtual {p1, v5, v7}, Ln7/b;->b(ILjava/lang/String;)V

    goto :goto_5

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {p1, v5, v6}, Ln7/b;->b(ILjava/lang/String;)V

    :cond_6
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "shouldn\'t happen"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_7
    :goto_6
    if-ge v3, v1, :cond_8

    invoke-virtual {p0, v3}, Ln7/e;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg7/g;

    :try_start_2
    invoke-virtual {v2, p1}, Lg7/g;->j(Ln7/b;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "...while writing "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Ln7/d;->a(Ljava/lang/String;Ljava/lang/Exception;)Ln7/d;

    move-result-object p0

    throw p0

    :cond_8
    iget p1, p1, Ln7/b;->c:I

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p0}, Lg7/h;->h()I

    move-result v0

    if-ne p1, v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "write length mismatch; expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg7/h;->h()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but actually wrote "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
