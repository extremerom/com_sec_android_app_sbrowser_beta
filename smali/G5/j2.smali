.class public abstract LG5/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Ljava/lang/String;LS2/a;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sql"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p0}, LS2/a;->w0(Ljava/lang/String;)LS2/c;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, LS2/c;->t0()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, LG5/y;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static c(Lq2/a;)V
    .locals 5

    const v0, -0x800001

    iput v0, p0, Lq2/a;->i:F

    const/high16 v0, -0x80000000

    iput v0, p0, Lq2/a;->h:I

    iget-object v0, p0, Lq2/a;->a:Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_3

    instance-of v1, v0, Landroid/text/Spannable;

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    iput-object v0, p0, Lq2/a;->a:Ljava/lang/CharSequence;

    :cond_0
    iget-object p0, p0, Lq2/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroid/text/Spannable;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    instance-of v4, v3, Landroid/text/style/AbsoluteSizeSpan;

    if-nez v4, :cond_1

    instance-of v4, v3, Landroid/text/style/RelativeSizeSpan;

    if-eqz v4, :cond_2

    :cond_1
    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static d(IIFI)F
    .locals 2

    const v0, -0x800001

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_3

    const/4 p3, 0x1

    if-eq p0, p3, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    return p2

    :cond_2
    int-to-float p0, p1

    :goto_0
    mul-float/2addr p2, p0

    return p2

    :cond_3
    int-to-float p0, p3

    goto :goto_0
.end method

.method public static final e(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error code: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p0, ", message: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/database/SQLException;

    invoke-direct {p1, p0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static f(Lcom/google/common/util/concurrent/y;Lcom/google/common/util/concurrent/s;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    sget v0, Lcom/google/common/util/concurrent/r;->j:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/google/common/util/concurrent/p;

    invoke-direct {v0, p0, p1}, Lcom/google/common/util/concurrent/r;-><init>(Lcom/google/common/util/concurrent/y;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/common/util/concurrent/t;->INSTANCE:Lcom/google/common/util/concurrent/t;

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/util/concurrent/z;

    invoke-direct {p1, p2, v0}, Lcom/google/common/util/concurrent/z;-><init>(Ljava/util/concurrent/Executor;Lcom/google/common/util/concurrent/r;)V

    move-object p2, p1

    :goto_0
    invoke-interface {p0, v0, p2}, Lcom/google/common/util/concurrent/y;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
