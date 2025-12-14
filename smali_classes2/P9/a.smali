.class public final LP9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVb/e;


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Application;LG6/f;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, LP9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LP9/a;->b:I

    const-string v0, "Tracker Constructor"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iput-object p1, p0, LP9/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LP9/a;->d:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, LP9/a;->e:Ljava/lang/Object;

    new-instance v1, LF4/c;

    invoke-direct {v1, v0}, LF4/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LB3/c;

    invoke-direct {v0, p0}, LB3/c;-><init>(Ljava/lang/Object;)V

    iput-object v0, p2, LG6/f;->e:Ljava/lang/Object;

    const-string v0, "Tracker Constructor SingleThreadExecutor"

    const v1, -0x2d2207ed

    invoke-static {v0, v1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    invoke-static {}, Lu5/d;->n()Lu5/d;

    move-result-object v2

    new-instance v3, Lo3/t;

    invoke-direct {v3, p0, p2, p1}, Lo3/t;-><init>(LP9/a;LG6/f;Landroid/app/Application;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lu5/d;->m(LJa/a;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    const-string p0, "Tracker start:6.05.081"

    invoke-static {p0}, LG5/F3;->f(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, LP9/a;->a:I

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LG5/g4;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG5/g4;-><init>(IZ)V

    const/16 v1, 0x8

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, LG5/g4;->c:Ljava/lang/Object;

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_0

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, v0, LG5/g4;->d:Ljava/lang/Object;

    iput v4, v0, LG5/g4;->b:I

    iput-object v0, p0, LP9/a;->c:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, LP9/a;->e:Ljava/lang/Object;

    iput-object p1, p0, LP9/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/i;LJb/m;LYb/e;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LP9/a;->a:I

    const-string v0, "c"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterOwner"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP9/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LP9/a;->d:Ljava/lang/Object;

    iput p4, p0, LP9/a;->b:I

    invoke-interface {p3}, LYb/e;->m()Ljava/util/ArrayList;

    move-result-object p1

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    add-int/lit8 p4, p3, 0x1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move p3, p4

    goto :goto_0

    :cond_0
    iput-object p2, p0, LP9/a;->e:Ljava/lang/Object;

    iget-object p1, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast p1, Lo3/i;

    iget-object p1, p1, Lo3/i;->a:Ljava/lang/Object;

    check-cast p1, LVb/a;

    iget-object p1, p1, LVb/a;->a:Lxc/l;

    new-instance p2, LMb/a;

    const/16 p3, 0x8

    invoke-direct {p2, p3, p0}, LMb/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Lxc/l;->c(Lsb/k;)Lxc/j;

    move-result-object p1

    iput-object p1, p0, LP9/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lo3/n;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LP9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP9/a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LP9/a;->d:Ljava/lang/Object;

    iput-object p1, p0, LP9/a;->e:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, LP9/a;->b:I

    iput-object p1, p0, LP9/a;->f:Ljava/lang/Object;

    return-void
.end method

.method public static b(LP9/a;)Z
    .locals 4

    const-string v0, "Tracker is not initialized, status : "

    monitor-enter p0

    :try_start_0
    iget v1, p0, LP9/a;->b:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, LP9/a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LG5/F3;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, LP9/a;->q()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    iget-object v0, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v0, LF4/c;

    invoke-virtual {v0}, LF4/c;->a()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    move v3, v1

    :cond_1
    monitor-exit p0

    :goto_0
    return v3

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public static synthetic m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    iget p2, p0, LP9/a;->b:I

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {p0, p2, p1, p3}, LP9/a;->l(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public a(LPb/B;)LJb/W;
    .locals 1

    const-string v0, "javaTypeParameter"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v0, Lxc/j;

    invoke-virtual {v0, p1}, Lxc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LWb/G;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast p0, Lo3/i;

    iget-object p0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast p0, LVb/e;

    invoke-interface {p0, p1}, LVb/e;->a(LPb/B;)LJb/W;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c(ILjava/lang/CharSequence;)I
    .locals 3

    add-int/lit8 v0, p1, 0x4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput p1, p0, LP9/a;->b:I

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget p1, p0, LP9/a;->b:I

    invoke-virtual {p0, p1, p2}, LP9/a;->c(ILjava/lang/CharSequence;)I

    move-result p0

    return p0

    :cond_0
    const-string p1, "Unexpected EOF during unicode escape"

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, p1, p2, v0, v1}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v0

    :cond_1
    invoke-virtual {p0, p1, p2}, LP9/a;->p(ILjava/lang/CharSequence;)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2}, LP9/a;->p(ILjava/lang/CharSequence;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2, p2}, LP9/a;->p(ILjava/lang/CharSequence;)I

    move-result v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 p1, p1, 0x3

    invoke-virtual {p0, p1, p2}, LP9/a;->p(ILjava/lang/CharSequence;)I

    move-result p1

    add-int/2addr p1, v1

    int-to-char p1, p1

    iget-object p0, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v0
.end method

.method public d()Z
    .locals 4

    iget v0, p0, LP9/a;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    :goto_0
    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_6

    const/16 v3, 0xa

    if-eq v1, v3, :cond_6

    const/16 v3, 0xd

    if-eq v1, v3, :cond_6

    const/16 v3, 0x9

    if-ne v1, v3, :cond_1

    goto :goto_3

    :cond_1
    iput v0, p0, LP9/a;->b:I

    const/16 p0, 0x7d

    const/4 v0, 0x1

    if-ne v1, p0, :cond_2

    goto :goto_1

    :cond_2
    const/16 p0, 0x5d

    if-ne v1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/16 p0, 0x3a

    if-ne v1, p0, :cond_4

    :goto_1
    move v2, v0

    goto :goto_2

    :cond_4
    const/16 p0, 0x2c

    if-ne v1, p0, :cond_5

    goto :goto_1

    :cond_5
    :goto_2
    xor-int/lit8 p0, v2, 0x1

    return p0

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_7
    iput v0, p0, LP9/a;->b:I

    return v2
.end method

.method public e()Ljava/lang/String;
    .locals 13

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, LP9/a;->g(C)V

    iget v1, p0, LP9/a;->b:I

    iget-object v2, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v2, v0, v1, v3, v4}, LKc/k;->u(Ljava/lang/CharSequence;CIZI)I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eq v5, v8, :cond_c

    move v9, v1

    :goto_0
    if-ge v9, v5, :cond_b

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_a

    iget v1, p0, LP9/a;->b:I

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v10, v3

    :goto_1
    if-eq v5, v0, :cond_8

    const-string v12, "Unexpected EOF"

    if-ne v5, v11, :cond_5

    iget-object v5, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p0, v9}, LP9/a;->s(I)I

    move-result v1

    const/4 v5, 0x6

    if-eq v1, v8, :cond_4

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v10, 0x75

    if-ne v1, v10, :cond_0

    invoke-virtual {p0, v9, v2}, LP9/a;->c(ILjava/lang/CharSequence;)I

    move-result v9

    goto :goto_3

    :cond_0
    if-ge v1, v10, :cond_1

    sget-object v10, Lfd/a;->a:[C

    aget-char v10, v10, v1

    goto :goto_2

    :cond_1
    move v10, v3

    :goto_2
    if-eqz v10, :cond_3

    iget-object v1, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p0, v9}, LP9/a;->s(I)I

    move-result v1

    if-eq v1, v8, :cond_2

    :goto_4
    move v9, v1

    move v10, v6

    goto :goto_5

    :cond_2
    invoke-static {p0, v12, v1, v7, v4}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escaped char \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v7, v5}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_4
    const-string v0, "Expected escape sequence to continue, got EOF"

    invoke-static {p0, v0, v3, v7, v5}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_5
    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v9, v5, :cond_7

    iget-object v5, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast v5, Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, LP9/a;->s(I)I

    move-result v1

    if-eq v1, v8, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0, v12, v1, v7, v4}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v7

    :cond_7
    :goto_5
    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_1

    :cond_8
    if-nez v10, :cond_9

    invoke-virtual {v2, v1, v9}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_9
    invoke-virtual {p0, v1, v9}, LP9/a;->k(II)Ljava/lang/String;

    move-result-object v0

    :goto_6
    add-int/2addr v9, v6

    iput v9, p0, LP9/a;->b:I

    return-object v0

    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v5, 0x1

    iput v0, p0, LP9/a;->b:I

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_c
    invoke-virtual {p0}, LP9/a;->i()Ljava/lang/String;

    invoke-virtual {p0, v6, v3}, LP9/a;->n(BZ)V

    throw v7
.end method

.method public f()B
    .locals 3

    :cond_0
    iget v0, p0, LP9/a;->b:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget v0, p0, LP9/a;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, LP9/a;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lfd/e;->d(C)B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return v0

    :cond_1
    const/16 p0, 0xa

    return p0
.end method

.method public g(C)V
    .locals 5

    iget v0, p0, LP9/a;->b:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    :cond_0
    :goto_0
    iget v0, p0, LP9/a;->b:I

    iget-object v3, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget v0, p0, LP9/a;->b:I

    add-int/lit8 v4, v0, 0x1

    iput v4, p0, LP9/a;->b:I

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x20

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, p1}, LP9/a;->v(C)V

    throw v1

    :cond_3
    iput v2, p0, LP9/a;->b:I

    invoke-virtual {p0, p1}, LP9/a;->v(C)V

    throw v1

    :cond_4
    invoke-virtual {p0, p1}, LP9/a;->v(C)V

    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LP9/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, LP9/a;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LP9/a;->e()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, LP9/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v1, p0, LP9/a;->d:Ljava/lang/Object;

    return-object v0

    :cond_0
    invoke-virtual {p0}, LP9/a;->t()I

    move-result v0

    iget-object v2, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_7

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lfd/e;->d(C)B

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, LP9/a;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v6, 0x0

    if-nez v4, :cond_6

    move v1, v6

    :cond_2
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lfd/e;->d(C)B

    move-result v4

    if-nez v4, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_2

    iget v1, p0, LP9/a;->b:I

    iget-object v4, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, LP9/a;->s(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    iput v0, p0, LP9/a;->b:I

    invoke-virtual {p0, v6, v6}, LP9/a;->k(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    move v0, v1

    move v1, v5

    goto :goto_0

    :cond_4
    if-nez v1, :cond_5

    iget v1, p0, LP9/a;->b:I

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget v1, p0, LP9/a;->b:I

    invoke-virtual {p0, v1, v0}, LP9/a;->k(II)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput v0, p0, LP9/a;->b:I

    return-object v1

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Expected beginning of the string, but got "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {p0, v0, v6, v1, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1

    :cond_7
    const/4 v2, 0x4

    const-string v3, "EOF"

    invoke-static {p0, v3, v0, v1, v2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public j()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, LP9/a;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-static {v0, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, LP9/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Unexpected \'null\' value instead of string literal"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {p0, v0, v1, v2, v3}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v2

    :cond_1
    :goto_0
    return-object v0
.end method

.method public k(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    iget-object p0, p0, LP9/a;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    return-object p1
.end method

.method public l(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hint"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    const-string v0, "\n"

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    :goto_0
    const-string v0, " at path: "

    invoke-static {p2, v0}, Lt/b;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast v0, LG5/g4;

    invoke-virtual {v0}, LG5/g4;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lfd/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Lfd/b;

    move-result-object p0

    throw p0
.end method

.method public n(BZ)V
    .locals 4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "quotation mark \'\"\'"

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "string escape sequence \'\\\'"

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const-string p1, "comma \',\'"

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    const-string p1, "colon \':\'"

    goto :goto_0

    :cond_3
    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    const-string p1, "start of the object \'{\'"

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    const-string p1, "end of the object \'}\'"

    goto :goto_0

    :cond_5
    const/16 v0, 0x8

    if-ne p1, v0, :cond_6

    const-string p1, "start of the array \'[\'"

    goto :goto_0

    :cond_6
    const/16 v0, 0x9

    if-ne p1, v0, :cond_7

    const-string p1, "end of the array \']\'"

    goto :goto_0

    :cond_7
    const/16 v0, 0xa

    if-ne p1, v0, :cond_8

    const-string p1, "end of the input"

    goto :goto_0

    :cond_8
    const/16 v0, 0x7f

    if-ne p1, v0, :cond_9

    const-string p1, "invalid token"

    goto :goto_0

    :cond_9
    const-string p1, "valid token"

    :goto_0
    if-eqz p2, :cond_a

    iget p2, p0, LP9/a;->b:I

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_a
    iget p2, p0, LP9/a;->b:I

    :goto_1
    iget v0, p0, LP9/a;->b:I

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_c

    if-gez p2, :cond_b

    goto :goto_2

    :cond_b
    invoke-virtual {v1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_c
    :goto_2
    const-string v0, "EOF"

    :goto_3
    const-string v1, "Expected "

    const-string v2, ", but had \'"

    const-string v3, "\' instead"

    invoke-static {v1, p1, v2, v0, v3}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, LP9/a;->d:Ljava/lang/Object;

    check-cast v0, Lg7/d;

    if-nez v0, :cond_0

    iget-object v0, p0, LP9/a;->c:Ljava/lang/Object;

    check-cast v0, Lo3/n;

    invoke-virtual {v0}, Lo3/n;->s()V

    iget-object v0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast v0, Lg7/d;

    iput-object v0, p0, LP9/a;->d:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public p(ILjava/lang/CharSequence;)I
    .locals 2

    invoke-interface {p2, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    const/16 p2, 0x30

    if-gt p2, p1, :cond_0

    const/16 v0, 0x3a

    if-ge p1, v0, :cond_0

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/16 p2, 0x61

    if-gt p2, p1, :cond_1

    const/16 p2, 0x67

    if-ge p1, p2, :cond_1

    add-int/lit8 p1, p1, -0x57

    goto :goto_0

    :cond_1
    const/16 p2, 0x41

    if-gt p2, p1, :cond_2

    const/16 p2, 0x47

    if-ge p1, p2, :cond_2

    add-int/lit8 p1, p1, -0x37

    :goto_0
    return p1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Invalid toHexChar char \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, "\' in unicode escape"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, LP9/a;->m(LP9/a;Ljava/lang/String;ILjava/lang/String;I)V

    throw v1
.end method

.method public q()I
    .locals 18

    move-object/from16 v1, p0

    iget v0, v1, LP9/a;->b:I

    const/4 v2, 0x1

    if-nez v0, :cond_15

    iget-object v0, v1, LP9/a;->e:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "current user is locked"

    invoke-static {v0}, LG5/F3;->a(Ljava/lang/String;)V

    iput v4, v1, LP9/a;->b:I

    return v4

    :cond_0
    iget-object v0, v1, LP9/a;->d:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, LG6/f;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, LG5/H;->a:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    if-eq v0, v8, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, LG5/s3;->d(Landroid/content/Context;)I

    move-result v0

    const v9, 0x202fbf00

    if-lt v0, v9, :cond_3

    const v9, 0x23c34600

    if-lt v0, v9, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v7

    :goto_0
    sput v0, LG5/H;->a:I

    goto :goto_1

    :cond_3
    sput v8, LG5/H;->a:I

    :goto_1
    sget v0, LG5/H;->a:I

    iget-object v9, v1, LP9/a;->c:Ljava/lang/Object;

    check-cast v9, Landroid/app/Application;

    if-nez v0, :cond_4

    invoke-static {v9}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/c;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/c;

    const-string v11, "dom"

    const-string v12, ""

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/c;->a(Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;

    const-string v11, "uri"

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;->a(Ljava/lang/String;)V

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;

    const-string v11, "bat-uri"

    invoke-interface {v0, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/b;->a(Ljava/lang/String;)V

    invoke-static {v3}, LG5/H;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lu5/d;->n()Lu5/d;

    move-result-object v0

    invoke-static {v3}, LQ9/a;->r(Landroid/content/Context;)LQ9/a;

    move-result-object v10

    new-instance v11, Lo3/f;

    const/4 v12, 0x6

    invoke-direct {v11, v12, v1}, Lo3/f;-><init>(ILjava/lang/Object;)V

    invoke-static {v9, v5, v0, v10, v11}, LG5/H;->j(Landroid/content/Context;LG6/f;Lu5/d;LQ9/a;Lo3/f;)V

    :cond_4
    invoke-static {v3}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "enable_device"

    invoke-interface {v10, v11, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    const-string v12, "getBoolean"

    const/4 v13, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v14, "getInstance"

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v0, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    invoke-virtual {v14, v13, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-class v15, Ljava/lang/String;

    filled-new-array {v15}, [Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v0, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v12, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v14, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_1
    const-string v12, "content://com.sec.android.log.diagmonagent.sa/check/diagnostic"

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v14, v12, v13, v13, v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v13, :cond_5

    move v13, v2

    goto :goto_2

    :cond_5
    move v13, v4

    :goto_2
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_1
    move v13, v4

    goto :goto_3

    :cond_6
    move v0, v4

    goto :goto_5

    :catch_2
    :goto_3
    const-string v12, "DMA is not supported"

    invoke-static {v12}, LG5/F3;->a(Ljava/lang/String;)V

    const-class v12, LR9/a;

    invoke-static {v0, v12}, LG5/F3;->e(Ljava/lang/Exception;Ljava/lang/Class;)V

    :goto_4
    move v0, v13

    :goto_5
    if-nez v0, :cond_7

    const-string v12, "feature is not supported"

    invoke-static {v12}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_7
    const-string v12, "cf feature is supported"

    invoke-static {v12}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v11, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_6

    :cond_8
    if-ne v0, v2, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v4

    :goto_6
    if-nez v0, :cond_a

    const-string v0, "Device is not enabled for logging"

    invoke-static {v0}, LG5/F3;->a(Ljava/lang/String;)V

    iput v8, v1, LP9/a;->b:I

    return v8

    :cond_a
    sget v0, LG5/H;->a:I

    if-ne v8, v0, :cond_b

    const-string v0, "SenderType is None"

    invoke-static {v0}, LG5/F3;->a(Ljava/lang/String;)V

    iput v8, v1, LP9/a;->b:I

    return v8

    :cond_b
    if-ne v0, v7, :cond_e

    invoke-static {v3}, LG5/s3;->g(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_d

    array-length v7, v0

    move v10, v4

    :goto_7
    if-ge v10, v7, :cond_d

    aget-object v11, v0, v10

    const-string v12, "com.sec.spp.permission.TOKEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_d
    move v0, v4

    :goto_8
    if-nez v0, :cond_e

    const-string v0, "SamsungAnalytics2 need to define \'com.sec.spp.permission.TOKEN_XXXX\' permission in AndroidManifest"

    invoke-static {v0}, LG5/H3;->p(Ljava/lang/String;)V

    iput v8, v1, LP9/a;->b:I

    return v8

    :cond_e
    invoke-static {v3}, LG5/H3;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14

    const v0, 0x2a51bd80

    invoke-static {v3}, LG5/s3;->d(Landroid/content/Context;)I

    move-result v7

    if-gt v0, v7, :cond_f

    move v0, v2

    goto :goto_9

    :cond_f
    move v0, v4

    :goto_9
    if-nez v0, :cond_10

    iget-object v0, v5, LG6/f;->e:Ljava/lang/Object;

    check-cast v0, LB3/c;

    invoke-virtual {v0}, LB3/c;->n()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_10
    sget v0, LG5/H;->a:I

    if-ne v0, v6, :cond_14

    invoke-static {v3}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v3}, LG5/s3;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "None"

    if-eqz v7, :cond_11

    move-object v3, v8

    :cond_11
    const-string v7, "sendCommonSuccess"

    invoke-interface {v0, v7, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v7, "appVersion"

    invoke-interface {v0, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-wide/16 v10, 0x0

    const-string v12, "sendCommonTime"

    invoke-interface {v0, v12, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string v14, "AppVersion = "

    const-string v15, ", prefAppVersion = "

    const-string v2, ", beforeSendCommonTime = "

    invoke-static {v14, v3, v15, v8, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ", success = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v4, :cond_13

    const/4 v2, 0x7

    invoke-static {v13, v2}, LG5/H3;->e(Ljava/lang/Long;I)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_a

    :cond_12
    move-object v8, v7

    goto :goto_b

    :cond_13
    :goto_a
    if-nez v4, :cond_14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const/4 v2, 0x6

    move-object v8, v7

    int-to-long v6, v2

    const-wide/32 v16, 0x36ee80

    mul-long v6, v6, v16

    add-long/2addr v6, v10

    cmp-long v2, v13, v6

    if-lez v2, :cond_14

    :goto_b
    const-string v2, "send app common"

    invoke-static {v2}, LG5/F3;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v2, 0x3

    invoke-static {v9, v2, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/c;->c(Landroid/content/Context;ILG6/f;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/a;

    move-result-object v0

    check-cast v0, LU9/b;

    invoke-virtual {v0}, LU9/b;->f()V

    :cond_14
    const/4 v2, 0x1

    :cond_15
    iput v2, v1, LP9/a;->b:I

    return v2
.end method

.method public r()B
    .locals 4

    iget v0, p0, LP9/a;->b:I

    :goto_0
    invoke-virtual {p0, v0}, LP9/a;->s(I)I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-eq v0, v1, :cond_2

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x20

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iput v0, p0, LP9/a;->b:I

    invoke-static {v1}, Lfd/e;->d(C)B

    move-result p0

    return p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, LP9/a;->b:I

    return v2
.end method

.method public s(I)I
    .locals 0

    iget-object p0, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public t()I
    .locals 3

    iget v0, p0, LP9/a;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v0

    :cond_0
    :goto_0
    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput v0, p0, LP9/a;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LP9/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader(source=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LP9/a;->b:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, LV0/c;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public u()Z
    .locals 4

    invoke-virtual {p0}, LP9/a;->t()I

    move-result v0

    iget-object v1, p0, LP9/a;->f:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_1

    iget v0, p0, LP9/a;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, LP9/a;->b:I

    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method public v(C)V
    .locals 4

    iget v0, p0, LP9/a;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/16 v3, 0x22

    if-ne p1, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    :try_start_0
    iput v3, p0, LP9/a;->b:I

    invoke-virtual {p0}, LP9/a;->i()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, LP9/a;->b:I

    const-string v0, "null"

    invoke-static {v3, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, LP9/a;->b:I

    sub-int/2addr p1, v2

    const-string v0, "Use \'coerceInputValues = true\' in \'Json {}\' builder to coerce nulls to default values."

    const-string v2, "Expected string literal but \'null\' literal was found"

    invoke-virtual {p0, p1, v2, v0}, LP9/a;->l(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p1

    iput v0, p0, LP9/a;->b:I

    throw p1

    :cond_0
    invoke-static {p1}, Lfd/e;->d(C)B

    move-result p1

    invoke-virtual {p0, p1, v2}, LP9/a;->n(BZ)V

    throw v1
.end method
