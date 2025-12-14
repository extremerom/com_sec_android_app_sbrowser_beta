.class public final Lv2/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lib/h;

.field public b:LB3/c;

.field public c:Lv2/y1;

.field public d:Lv2/J0;

.field public final e:LZ3/x;

.field public final f:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final g:Lo3/f;

.field public volatile h:Z

.field public volatile i:I

.field public final j:LQc/A0;

.field public final k:LQc/h0;

.field public final l:LQc/m0;

.field public final synthetic m:Lv2/i;


# direct methods
.method public constructor <init>(Lv2/i;Lib/h;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/e;->m:Lv2/i;

    iput-object p2, p0, Lv2/e;->a:Lib/h;

    new-instance p1, Lv2/U0;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv2/e;->c:Lv2/y1;

    sget-object p1, Lv2/J0;->e:Lv2/J0;

    const-string p2, "null cannot be cast to non-null type androidx.paging.PageStore<T of androidx.paging.PageStore.Companion.initial>"

    invoke-static {p1, p2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lv2/e;->d:Lv2/J0;

    new-instance p1, LZ3/x;

    const/16 p2, 0x1a

    invoke-direct {p1, p2}, LZ3/x;-><init>(I)V

    iput-object p1, p0, Lv2/e;->e:LZ3/x;

    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p2, p0, Lv2/e;->f:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lo3/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lo3/f;-><init>(Z)V

    iput-object v0, p0, Lv2/e;->g:Lo3/f;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v0}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object v0

    iput-object v0, p0, Lv2/e;->j:LQc/A0;

    iget-object p1, p1, LZ3/x;->d:Ljava/lang/Object;

    check-cast p1, LQc/h0;

    iput-object p1, p0, Lv2/e;->k:LQc/h0;

    sget-object p1, LPc/a;->DROP_OLDEST:LPc/a;

    const/4 v0, 0x0

    const/16 v1, 0x40

    invoke-static {v0, v1, p1}, LQc/n0;->a(IILPc/a;)LQc/m0;

    move-result-object p1

    iput-object p1, p0, Lv2/e;->l:LQc/m0;

    new-instance p1, LA4/a;

    const/16 v0, 0x19

    invoke-direct {p1, v0, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final a(Lv2/e;Ljava/util/List;IIZLv2/O;Lv2/O;LB3/c;Lkb/c;)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p8, Lv2/X0;

    if-eqz v0, :cond_0

    move-object v0, p8

    check-cast v0, Lv2/X0;

    iget v1, v0, Lv2/X0;->l:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lv2/X0;->l:I

    goto :goto_0

    :cond_0
    new-instance v0, Lv2/X0;

    invoke-direct {v0, p0, p8}, Lv2/X0;-><init>(Lv2/e;Lkb/c;)V

    :goto_0
    iget-object p8, v0, Lv2/X0;->j:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, Lv2/X0;->l:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-boolean p4, v0, Lv2/X0;->i:Z

    iget p3, v0, Lv2/X0;->h:I

    iget p2, v0, Lv2/X0;->g:I

    iget-object p0, v0, Lv2/X0;->f:Lv2/J0;

    iget-object p7, v0, Lv2/X0;->e:LB3/c;

    iget-object p6, v0, Lv2/X0;->d:Lv2/O;

    iget-object p5, v0, Lv2/X0;->c:Lv2/O;

    iget-object p1, v0, Lv2/X0;->b:Ljava/util/List;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Lv2/X0;->a:Lv2/e;

    invoke-static {p8}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object p8, p0

    move-object p0, v0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p8}, LG5/A2;->f(Ljava/lang/Object;)V

    if-eqz p4, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    const/4 p8, 0x0

    iput-boolean p8, p0, Lv2/e;->h:Z

    new-instance p8, Lv2/J0;

    invoke-direct {p8, p1, p2, p3}, Lv2/J0;-><init>(Ljava/util/List;II)V

    iget-object v2, p0, Lv2/e;->d:Lv2/J0;

    const-string v4, "null cannot be cast to non-null type androidx.paging.PlaceholderPaddedList<T of androidx.paging.PagingDataPresenter>"

    invoke-static {v2, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p8, p0, Lv2/e;->d:Lv2/J0;

    iput-object p7, p0, Lv2/e;->b:LB3/c;

    new-instance v4, Lv2/T0;

    invoke-direct {v4, p8, v2}, Lv2/T0;-><init>(Lv2/J0;Lv2/j1;)V

    iput-object p0, v0, Lv2/X0;->a:Lv2/e;

    move-object v2, p1

    check-cast v2, Ljava/util/List;

    iput-object v2, v0, Lv2/X0;->b:Ljava/util/List;

    iput-object p5, v0, Lv2/X0;->c:Lv2/O;

    iput-object p6, v0, Lv2/X0;->d:Lv2/O;

    iput-object p7, v0, Lv2/X0;->e:LB3/c;

    iput-object p8, v0, Lv2/X0;->f:Lv2/J0;

    iput p2, v0, Lv2/X0;->g:I

    iput p3, v0, Lv2/X0;->h:I

    iput-boolean p4, v0, Lv2/X0;->i:Z

    iput v3, v0, Lv2/X0;->l:I

    invoke-virtual {p0, v4, v0}, Lv2/e;->c(Lv2/F;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    :goto_2
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    if-eqz v0, :cond_9

    const-string v0, "Paging"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Presenting data (\n                            |   first item: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/x1;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v2, Lv2/x1;->b:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-static {v2}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n                            |   last item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/x1;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lv2/x1;->b:Ljava/util/List;

    if-eqz p1, :cond_7

    invoke-static {p1}, Lfb/n;->L(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_7
    move-object p1, v3

    :goto_4
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   placeholdersBefore: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   placeholdersAfter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   hintReceiver: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                            |   sourceLoadStates: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\n                        "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p6, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|   mediatorLoadStates: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "|)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LKc/l;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "message"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    if-eqz p4, :cond_a

    iget-object p1, p0, Lv2/e;->e:LZ3/x;

    invoke-static {p5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LPc/e;

    const/16 p3, 0x8

    invoke-direct {p2, p1, p3, p5, p6}, LPc/e;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, LZ3/x;->p(Lsb/k;)V

    :cond_a
    invoke-virtual {p8}, Lv2/J0;->e()I

    move-result p1

    if-nez p1, :cond_b

    iget-object p0, p0, Lv2/e;->b:LB3/c;

    if-eqz p0, :cond_b

    iget p1, p8, Lv2/J0;->b:I

    new-instance p2, Lv2/A1;

    div-int/lit8 p1, p1, 0x2

    invoke-virtual {p8}, Lv2/J0;->c()I

    move-result p3

    invoke-virtual {p8}, Lv2/J0;->d()I

    move-result p4

    invoke-direct {p2, p1, p1, p3, p4}, Lv2/C1;-><init>(IIII)V

    invoke-virtual {p0, p2}, LB3/c;->e(Lv2/C1;)V

    :cond_b
    sget-object v1, Ldb/r;->a:Ldb/r;

    :goto_5
    return-object v1
.end method


# virtual methods
.method public final b(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lv2/e;->j:LQc/A0;

    :cond_0
    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/e;->h:Z

    iput p1, p0, Lv2/e;->i:I

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    const-string v2, "Paging"

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Accessing item index["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "message"

    invoke-static {v0, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v0, p0, Lv2/e;->b:LB3/c;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lv2/e;->d:Lv2/J0;

    invoke-virtual {v2, p1}, Lv2/J0;->a(I)Lv2/z1;

    move-result-object v2

    invoke-virtual {v0, v2}, LB3/c;->e(Lv2/C1;)V

    :cond_3
    iget-object v0, p0, Lv2/e;->d:Lv2/J0;

    if-ltz p1, :cond_7

    invoke-virtual {v0}, Lv2/J0;->e()I

    move-result v2

    if-ge p1, v2, :cond_8

    iget v2, v0, Lv2/J0;->c:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_5

    iget v2, v0, Lv2/J0;->b:I

    if-lt p1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lv2/J0;->b(I)Ljava/lang/Object;

    move-result-object v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lv2/e;->j:LQc/A0;

    :cond_6
    invoke-virtual {p0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index: "

    const-string v2, ", Size: "

    invoke-static {p1, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lv2/J0;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(Lv2/F;Lkb/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lv2/c;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lv2/c;

    iget v4, v3, Lv2/c;->f:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lv2/c;->f:I

    goto :goto_0

    :cond_0
    new-instance v3, Lv2/c;

    invoke-direct {v3, v0, v2}, Lv2/c;-><init>(Lv2/e;Lkb/c;)V

    :goto_0
    iget-object v2, v3, Lv2/c;->d:Ljava/lang/Object;

    sget-object v4, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v5, v3, Lv2/c;->f:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lv2/c;->c:Lv2/T0;

    iget-object v1, v3, Lv2/c;->b:Lv2/i;

    iget-object v3, v3, Lv2/c;->a:Lv2/e;

    :try_start_0
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, LG5/A2;->f(Ljava/lang/Object;)V

    instance-of v2, v1, Lv2/T0;

    iget-object v5, v0, Lv2/e;->m:Lv2/i;

    if-eqz v2, :cond_1e

    check-cast v1, Lv2/T0;

    iget-object v2, v1, Lv2/T0;->c:Lv2/j1;

    check-cast v2, Lv2/J0;

    invoke-virtual {v2}, Lv2/J0;->e()I

    move-result v2

    iget-object v9, v1, Lv2/T0;->b:Lv2/J0;

    if-nez v2, :cond_3

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v0, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroidx/recyclerview/widget/c;->a(II)V

    goto/16 :goto_d

    :cond_3
    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v2

    iget-object v9, v1, Lv2/T0;->c:Lv2/j1;

    if-nez v2, :cond_4

    check-cast v9, Lv2/J0;

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v0

    if-lez v0, :cond_2d

    iget-object v0, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Landroidx/recyclerview/widget/c;->b(II)V

    goto/16 :goto_d

    :cond_4
    iget-object v2, v5, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v9}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_1
    iget-object v2, v5, Lv2/i;->c:Lib/h;

    new-instance v9, Lv2/d;

    invoke-direct {v9, v1, v5, v7}, Lv2/d;-><init>(Lv2/T0;Lv2/i;Lib/c;)V

    iput-object v0, v3, Lv2/c;->a:Lv2/e;

    iput-object v5, v3, Lv2/c;->b:Lv2/i;

    iput-object v1, v3, Lv2/c;->c:Lv2/T0;

    iput v6, v3, Lv2/c;->f:I

    invoke-static {v2, v9, v3}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    :goto_1
    check-cast v2, Lv2/i1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v3, v5, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    iget-object v3, v1, Lv2/T0;->c:Lv2/j1;

    const-string v4, "<this>"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    iget-object v9, v1, Lv2/T0;->b:Lv2/J0;

    const-string v10, "diffResult"

    invoke-static {v2, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v2, Lv2/i1;->a:Landroidx/recyclerview/widget/z;

    iget-boolean v2, v2, Lv2/i1;->b:Z

    if-eqz v2, :cond_d

    new-instance v11, Lv2/V;

    invoke-direct {v11, v3, v9, v7}, Lv2/V;-><init>(Lv2/j1;Lv2/J0;Landroidx/recyclerview/widget/c;)V

    invoke-virtual {v10, v11}, Landroidx/recyclerview/widget/z;->b(Landroidx/recyclerview/widget/i0;)V

    check-cast v3, Lv2/J0;

    iget v12, v3, Lv2/J0;->c:I

    iget v13, v11, Lv2/V;->c:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v9, Lv2/J0;->c:I

    iget v14, v11, Lv2/V;->c:I

    sub-int/2addr v13, v14

    if-lez v13, :cond_7

    if-lez v12, :cond_6

    sget-object v14, Lv2/u;->PLACEHOLDER_POSITION_CHANGE:Lv2/u;

    invoke-virtual {v7, v8, v12, v14}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_6
    invoke-virtual {v7, v8, v13}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_2

    :cond_7
    if-gez v13, :cond_8

    neg-int v14, v13

    invoke-virtual {v7, v8, v14}, Landroidx/recyclerview/widget/c;->b(II)V

    add-int/2addr v12, v13

    if-lez v12, :cond_8

    sget-object v13, Lv2/u;->PLACEHOLDER_POSITION_CHANGE:Lv2/u;

    invoke-virtual {v7, v8, v12, v13}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_8
    :goto_2
    iget v12, v9, Lv2/J0;->c:I

    iput v12, v11, Lv2/V;->c:I

    iget v12, v3, Lv2/J0;->d:I

    iget v13, v11, Lv2/V;->d:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    iget v13, v9, Lv2/J0;->d:I

    iget v14, v11, Lv2/V;->d:I

    sub-int/2addr v13, v14

    iget v15, v11, Lv2/V;->c:I

    iget v6, v11, Lv2/V;->e:I

    add-int/2addr v15, v6

    add-int/2addr v15, v14

    sub-int v6, v15, v12

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v3

    sub-int/2addr v3, v12

    if-eq v6, v3, :cond_9

    const/4 v3, 0x1

    goto :goto_3

    :cond_9
    move v3, v8

    :goto_3
    if-lez v13, :cond_a

    invoke-virtual {v7, v15, v13}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_4

    :cond_a
    if-gez v13, :cond_b

    add-int/2addr v15, v13

    neg-int v14, v13

    invoke-virtual {v7, v15, v14}, Landroidx/recyclerview/widget/c;->b(II)V

    add-int/2addr v12, v13

    :cond_b
    :goto_4
    if-lez v12, :cond_c

    if-eqz v3, :cond_c

    sget-object v3, Lv2/u;->PLACEHOLDER_POSITION_CHANGE:Lv2/u;

    invoke-virtual {v7, v6, v12, v3}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_c
    iget v3, v9, Lv2/J0;->d:I

    iput v3, v11, Lv2/V;->d:I

    goto/16 :goto_5

    :cond_d
    check-cast v3, Lv2/J0;

    iget v6, v3, Lv2/J0;->c:I

    iget v11, v9, Lv2/J0;->c:I

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v11, v3, Lv2/J0;->c:I

    iget v12, v3, Lv2/J0;->b:I

    add-int/2addr v11, v12

    iget v12, v9, Lv2/J0;->c:I

    iget v13, v9, Lv2/J0;->b:I

    add-int/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    sub-int v12, v11, v6

    if-lez v12, :cond_e

    invoke-virtual {v7, v6, v12}, Landroidx/recyclerview/widget/c;->b(II)V

    invoke-virtual {v7, v6, v12}, Landroidx/recyclerview/widget/c;->a(II)V

    :cond_e
    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v11, v3, Lv2/J0;->c:I

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v13

    if-le v11, v13, :cond_f

    move v11, v13

    :cond_f
    iget v13, v3, Lv2/J0;->c:I

    iget v14, v3, Lv2/J0;->b:I

    add-int/2addr v13, v14

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v14

    if-le v13, v14, :cond_10

    move v13, v14

    :cond_10
    sget-object v14, Lv2/u;->ITEM_TO_PLACEHOLDER:Lv2/u;

    sub-int v15, v12, v11

    if-lez v15, :cond_11

    invoke-virtual {v7, v11, v15, v14}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_11
    sub-int/2addr v13, v6

    if-lez v13, :cond_12

    invoke-virtual {v7, v6, v13, v14}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_12
    iget v11, v9, Lv2/J0;->c:I

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v13

    if-le v11, v13, :cond_13

    move v11, v13

    :cond_13
    iget v13, v9, Lv2/J0;->c:I

    iget v14, v9, Lv2/J0;->b:I

    add-int/2addr v13, v14

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v14

    if-le v13, v14, :cond_14

    move v13, v14

    :cond_14
    sget-object v14, Lv2/u;->PLACEHOLDER_TO_ITEM:Lv2/u;

    sub-int/2addr v12, v11

    if-lez v12, :cond_15

    invoke-virtual {v7, v11, v12, v14}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_15
    sub-int/2addr v13, v6

    if-lez v13, :cond_16

    invoke-virtual {v7, v6, v13, v14}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_16
    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v6

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v11

    sub-int/2addr v6, v11

    if-lez v6, :cond_17

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v3

    invoke-virtual {v7, v3, v6}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_5

    :cond_17
    if-gez v6, :cond_18

    invoke-virtual {v3}, Lv2/J0;->e()I

    move-result v3

    add-int/2addr v3, v6

    neg-int v6, v6

    invoke-virtual {v7, v3, v6}, Landroidx/recyclerview/widget/c;->b(II)V

    :cond_18
    :goto_5
    iget v3, v5, Lv2/i;->e:I

    iget-object v1, v1, Lv2/T0;->c:Lv2/j1;

    invoke-static {v1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_19

    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v1

    invoke-static {v8, v1}, LG5/d3;->l(II)Lzb/d;

    move-result-object v1

    invoke-static {v3, v1}, LG5/d3;->g(ILzb/d;)I

    move-result v1

    goto :goto_9

    :cond_19
    check-cast v1, Lv2/J0;

    iget v2, v1, Lv2/J0;->c:I

    sub-int v2, v3, v2

    iget v4, v1, Lv2/J0;->b:I

    if-ltz v2, :cond_1d

    if-ge v2, v4, :cond_1d

    move v4, v8

    :goto_6
    const/16 v6, 0x1e

    if-ge v4, v6, :cond_1d

    div-int/lit8 v6, v4, 0x2

    rem-int/lit8 v7, v4, 0x2

    const/4 v11, -0x1

    const/4 v12, 0x1

    if-ne v7, v12, :cond_1a

    move v7, v11

    goto :goto_7

    :cond_1a
    move v7, v12

    :goto_7
    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    if-ltz v6, :cond_1c

    iget v7, v1, Lv2/J0;->b:I

    if-lt v6, v7, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-virtual {v10, v6}, Landroidx/recyclerview/widget/z;->a(I)I

    move-result v6

    if-eq v6, v11, :cond_1c

    iget v1, v9, Lv2/J0;->c:I

    add-int/2addr v1, v6

    goto :goto_9

    :cond_1c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_1d
    invoke-virtual {v9}, Lv2/J0;->e()I

    move-result v1

    invoke-static {v8, v1}, LG5/d3;->l(II)Lzb/d;

    move-result-object v1

    invoke-static {v3, v1}, LG5/d3;->g(ILzb/d;)I

    move-result v1

    :goto_9
    iput v1, v5, Lv2/i;->e:I

    invoke-virtual {v0, v1}, Lv2/e;->b(I)Ljava/lang/Object;

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    move-object v1, v5

    :goto_a
    iget-object v1, v1, Lv2/i;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    throw v0

    :cond_1e
    instance-of v0, v1, Lv2/S0;

    if-eqz v0, :cond_22

    move-object v0, v1

    check-cast v0, Lv2/S0;

    iget-object v1, v0, Lv2/S0;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lv2/S0;->d:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, v2, v3

    sub-int/2addr v1, v3

    if-lez v3, :cond_1f

    iget-object v6, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v6, v4, v3, v7}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_1f
    if-lez v1, :cond_20

    iget-object v4, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v4, v8, v1}, Landroidx/recyclerview/widget/c;->a(II)V

    :cond_20
    iget v0, v0, Lv2/S0;->c:I

    sub-int/2addr v0, v2

    add-int/2addr v0, v3

    if-lez v0, :cond_21

    iget-object v1, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, v8, v0}, Landroidx/recyclerview/widget/c;->a(II)V

    goto/16 :goto_d

    :cond_21
    if-gez v0, :cond_2d

    iget-object v1, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    neg-int v0, v0

    invoke-virtual {v1, v8, v0}, Landroidx/recyclerview/widget/c;->b(II)V

    goto/16 :goto_d

    :cond_22
    instance-of v0, v1, Lv2/P0;

    if-eqz v0, :cond_26

    move-object v0, v1

    check-cast v0, Lv2/P0;

    iget-object v1, v0, Lv2/P0;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, v0, Lv2/P0;->e:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    sub-int v4, v1, v3

    iget v6, v0, Lv2/P0;->b:I

    add-int v8, v6, v3

    if-lez v3, :cond_23

    iget-object v9, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v9, v6, v3, v7}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_23
    if-lez v4, :cond_24

    iget-object v7, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v7, v8, v4}, Landroidx/recyclerview/widget/c;->a(II)V

    :cond_24
    iget v0, v0, Lv2/P0;->d:I

    sub-int v2, v0, v2

    add-int/2addr v2, v3

    add-int/2addr v6, v1

    add-int/2addr v6, v0

    if-lez v2, :cond_25

    iget-object v0, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6, v2}, Landroidx/recyclerview/widget/c;->a(II)V

    goto/16 :goto_d

    :cond_25
    if-gez v2, :cond_2d

    iget-object v0, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    neg-int v1, v2

    invoke-virtual {v0, v6, v1}, Landroidx/recyclerview/widget/c;->b(II)V

    goto :goto_d

    :cond_26
    instance-of v0, v1, Lv2/R0;

    if-eqz v0, :cond_29

    move-object v0, v1

    check-cast v0, Lv2/R0;

    iget v1, v0, Lv2/R0;->c:I

    iget v2, v0, Lv2/R0;->b:I

    sub-int/2addr v1, v2

    iget v2, v0, Lv2/R0;->d:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_27

    iget-object v3, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v3, v8, v1}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_b

    :cond_27
    if-gez v1, :cond_28

    iget-object v3, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    neg-int v4, v1

    invoke-virtual {v3, v8, v4}, Landroidx/recyclerview/widget/c;->b(II)V

    :cond_28
    :goto_b
    add-int/2addr v2, v1

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, v0, Lv2/R0;->c:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_2d

    iget-object v2, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v2, v1, v0, v7}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    goto :goto_d

    :cond_29
    instance-of v0, v1, Lv2/Q0;

    if-eqz v0, :cond_2d

    move-object v0, v1

    check-cast v0, Lv2/Q0;

    iget v1, v0, Lv2/Q0;->d:I

    iget v2, v0, Lv2/Q0;->c:I

    sub-int v2, v1, v2

    iget v3, v0, Lv2/Q0;->e:I

    sub-int/2addr v2, v3

    iget v4, v0, Lv2/Q0;->b:I

    add-int/2addr v1, v4

    if-lez v2, :cond_2a

    iget-object v6, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    sub-int/2addr v1, v2

    invoke-virtual {v6, v1, v2}, Landroidx/recyclerview/widget/c;->a(II)V

    goto :goto_c

    :cond_2a
    if-gez v2, :cond_2b

    iget-object v6, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    neg-int v9, v2

    invoke-virtual {v6, v1, v9}, Landroidx/recyclerview/widget/c;->b(II)V

    :cond_2b
    :goto_c
    if-gez v2, :cond_2c

    neg-int v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    :cond_2c
    iget v0, v0, Lv2/Q0;->d:I

    sub-int/2addr v0, v3

    add-int/2addr v0, v8

    if-lez v0, :cond_2d

    iget-object v1, v5, Lv2/i;->b:Landroidx/recyclerview/widget/c;

    invoke-virtual {v1, v4, v0, v7}, Landroidx/recyclerview/widget/c;->c(IILjava/lang/Object;)V

    :cond_2d
    :goto_d
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0
.end method
