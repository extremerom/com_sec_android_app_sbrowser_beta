.class public final Lk0/k;
.super Lkb/h;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public b:[I

.field public c:I

.field public d:I

.field public e:I

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lk0/l;


# direct methods
.method public constructor <init>(Lk0/l;Lib/c;)V
    .locals 0

    iput-object p1, p0, Lk0/k;->g:Lk0/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/h;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1

    new-instance v0, Lk0/k;

    iget-object p0, p0, Lk0/k;->g:Lk0/l;

    invoke-direct {v0, p0, p2}, Lk0/k;-><init>(Lk0/l;Lib/c;)V

    iput-object p1, v0, Lk0/k;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LJc/m;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lk0/k;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lk0/k;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lk0/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lk0/k;->e:I

    const/16 v3, 0x40

    const/4 v4, 0x0

    const-wide/16 v5, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x2

    const-wide/16 v10, 0x0

    iget-object v12, v0, Lk0/k;->g:Lk0/l;

    const/4 v13, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v13, :cond_2

    if-eq v2, v8, :cond_1

    if-ne v2, v7, :cond_0

    iget v2, v0, Lk0/k;->c:I

    iget-object v8, v0, Lk0/k;->f:Ljava/lang/Object;

    check-cast v8, LJc/m;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move v9, v2

    move v2, v7

    goto/16 :goto_5

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, v0, Lk0/k;->c:I

    iget-object v14, v0, Lk0/k;->f:Ljava/lang/Object;

    check-cast v14, LJc/m;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    move v7, v8

    goto/16 :goto_3

    :cond_2
    iget v2, v0, Lk0/k;->d:I

    iget v14, v0, Lk0/k;->c:I

    iget-object v15, v0, Lk0/k;->b:[I

    iget-object v9, v0, Lk0/k;->f:Ljava/lang/Object;

    check-cast v9, LJc/m;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object v2, v0, Lk0/k;->f:Ljava/lang/Object;

    check-cast v2, LJc/m;

    iget-object v9, v12, Lk0/l;->d:[I

    if-eqz v9, :cond_6

    array-length v14, v9

    move-object v15, v9

    move-object v9, v2

    move v2, v14

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v2, :cond_5

    aget v7, v15, v14

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v9, v0, Lk0/k;->f:Ljava/lang/Object;

    iput-object v15, v0, Lk0/k;->b:[I

    iput v14, v0, Lk0/k;->c:I

    iput v2, v0, Lk0/k;->d:I

    iput v13, v0, Lk0/k;->e:I

    invoke-virtual {v9, v8, v0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object v7

    if-ne v7, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    add-int/2addr v14, v13

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto :goto_0

    :cond_5
    move-object v2, v9

    :cond_6
    iget-wide v7, v12, Lk0/l;->b:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_a

    move-object v14, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_9

    iget-wide v7, v12, Lk0/l;->b:J

    shl-long v17, v5, v2

    and-long v7, v7, v17

    cmp-long v7, v7, v10

    if-eqz v7, :cond_7

    iget v7, v12, Lk0/l;->c:I

    add-int/2addr v7, v2

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v7}, Ljava/lang/Integer;-><init>(I)V

    iput-object v14, v0, Lk0/k;->f:Ljava/lang/Object;

    iput-object v4, v0, Lk0/k;->b:[I

    iput v2, v0, Lk0/k;->c:I

    const/4 v7, 0x2

    iput v7, v0, Lk0/k;->e:I

    invoke-virtual {v14, v8, v0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object v8

    if-ne v8, v1, :cond_8

    return-object v1

    :cond_7
    const/4 v7, 0x2

    :cond_8
    :goto_3
    add-int/2addr v2, v13

    goto :goto_2

    :cond_9
    move-object v2, v14

    :cond_a
    iget-wide v7, v12, Lk0/l;->a:J

    cmp-long v7, v7, v10

    if-eqz v7, :cond_d

    move-object v8, v2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v3, :cond_d

    iget-wide v14, v12, Lk0/l;->a:J

    shl-long v16, v5, v9

    and-long v14, v14, v16

    cmp-long v2, v14, v10

    if-eqz v2, :cond_b

    add-int/lit8 v2, v9, 0x40

    iget v7, v12, Lk0/l;->c:I

    add-int/2addr v2, v7

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    iput-object v8, v0, Lk0/k;->f:Ljava/lang/Object;

    iput-object v4, v0, Lk0/k;->b:[I

    iput v9, v0, Lk0/k;->c:I

    const/4 v2, 0x3

    iput v2, v0, Lk0/k;->e:I

    invoke-virtual {v8, v7, v0}, LJc/m;->c(Ljava/lang/Object;Lkb/h;)Ljb/a;

    move-result-object v7

    if-ne v7, v1, :cond_c

    return-object v1

    :cond_b
    const/4 v2, 0x3

    :cond_c
    :goto_5
    add-int/2addr v9, v13

    goto :goto_4

    :cond_d
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
