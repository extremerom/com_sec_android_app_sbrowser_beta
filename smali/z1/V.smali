.class public abstract Lz1/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final errorUiLayout:I

.field private final sessionManager:Lc2/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sizeMode:Lz1/b1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final stateDefinition:Ld2/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld2/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0e029d

    iput v0, p0, Lz1/V;->errorUiLayout:I

    sget-object v0, Lc2/v;->a:Lc2/u;

    iput-object v0, p0, Lz1/V;->sessionManager:Lc2/n;

    sget-object v0, Lz1/a1;->a:Lz1/a1;

    iput-object v0, p0, Lz1/V;->sizeMode:Lz1/b1;

    sget-object v0, Ld2/j;->a:Ld2/j;

    iput-object v0, p0, Lz1/V;->stateDefinition:Ld2/g;

    return-void
.end method

.method public static synthetic onDelete$suspendImpl(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/V;",
            "Landroid/content/Context;",
            "Lx1/o;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static synthetic triggerAction$glance_appwidget_release$default(Lz1/V;Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;Lib/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    if-nez p7, :cond_1

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lz1/V;->triggerAction$glance_appwidget_release(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: triggerAction"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic update$glance_appwidget_release$default(Lz1/V;Landroid/content/Context;ILandroid/os/Bundle;Lib/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p6, :cond_1

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lz1/V;->update$glance_appwidget_release(Landroid/content/Context;ILandroid/os/Bundle;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: update"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final deleted$glance_appwidget_release(Landroid/content/Context;ILib/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, " Error in user-provided deletion callback"

    instance-of v5, v3, Lz1/Q;

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Lz1/Q;

    iget v6, v5, Lz1/Q;->g:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lz1/Q;->g:I

    goto :goto_0

    :cond_0
    new-instance v5, Lz1/Q;

    invoke-direct {v5, v0, v3}, Lz1/Q;-><init>(Lz1/V;Lib/c;)V

    :goto_0
    iget-object v3, v5, Lz1/Q;->e:Ljava/lang/Object;

    sget-object v6, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v7, v5, Lz1/Q;->g:I

    sget-object v8, Ldb/r;->a:Ldb/r;

    const-string v9, "Could not delete LayoutConfiguration dataStoreFile when cleaning upold appwidget id "

    const-string v10, "id"

    const-string v11, "context"

    const-string v12, "msg"

    const/4 v13, 0x0

    packed-switch v7, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, v5, Lz1/Q;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    iget-object v1, v5, Lz1/Q;->b:Ljava/lang/Object;

    check-cast v1, Lz1/e;

    iget-object v2, v5, Lz1/Q;->a:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_a

    :pswitch_1
    iget-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    check-cast v0, Lz1/e;

    iget-object v1, v5, Lz1/Q;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_9

    :pswitch_2
    iget-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    check-cast v0, Lz1/e;

    iget-object v1, v5, Lz1/Q;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_d

    :pswitch_3
    iget-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    check-cast v0, Lz1/e;

    iget-object v1, v5, Lz1/Q;->a:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_4
    iget v1, v5, Lz1/Q;->d:I

    iget-object v0, v5, Lz1/Q;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lz1/e;

    iget-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/content/Context;

    iget-object v0, v5, Lz1/Q;->a:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Lz1/V;

    :try_start_0
    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    move v2, v1

    move-object v1, v7

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v7

    goto/16 :goto_8

    :catch_0
    move-object v0, v2

    move v2, v1

    move-object v1, v7

    goto/16 :goto_c

    :pswitch_5
    iget v0, v5, Lz1/Q;->d:I

    iget-object v1, v5, Lz1/Q;->c:Ljava/lang/Object;

    check-cast v1, Lz1/e;

    iget-object v2, v5, Lz1/Q;->b:Ljava/lang/Object;

    check-cast v2, Landroid/content/Context;

    iget-object v7, v5, Lz1/Q;->a:Ljava/lang/Object;

    check-cast v7, Lz1/V;

    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    move-object v3, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v7

    goto :goto_2

    :pswitch_6
    invoke-static {v3}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance v3, Lz1/e;

    invoke-direct {v3, v2}, Lz1/e;-><init>(I)V

    invoke-static/range {p1 .. p1}, LC1/B;->a(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    iput-object v0, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v1, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v3, v5, Lz1/Q;->c:Ljava/lang/Object;

    iput v2, v5, Lz1/Q;->d:I

    const/4 v7, 0x1

    iput v7, v5, Lz1/Q;->g:I

    sget-object v7, LC1/z;->a:LC1/z;

    new-instance v14, LC1/o;

    invoke-direct {v14, v3, v13}, LC1/o;-><init>(Lz1/e;Lib/c;)V

    invoke-virtual {v7, v14, v5}, LC1/z;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    if-ne v7, v6, :cond_2

    return-object v6

    :cond_2
    :goto_2
    move-object v14, v0

    goto :goto_3

    :cond_3
    iget-object v7, v0, Lz1/V;->sessionManager:Lc2/n;

    new-instance v14, Lz1/S;

    invoke-direct {v14, v3, v13}, Lz1/S;-><init>(Lz1/e;Lib/c;)V

    iput-object v0, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v1, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v3, v5, Lz1/Q;->c:Ljava/lang/Object;

    iput v2, v5, Lz1/Q;->d:I

    const/4 v15, 0x2

    iput v15, v5, Lz1/Q;->g:I

    invoke-interface {v7, v14, v5}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_2

    return-object v6

    :goto_3
    :try_start_1
    iput-object v14, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v1, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v3, v5, Lz1/Q;->c:Ljava/lang/Object;

    iput v2, v5, Lz1/Q;->d:I

    const/4 v0, 0x3

    iput v0, v5, Lz1/Q;->g:I

    invoke-virtual {v14, v1, v3, v5}, Lz1/V;->onDelete(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v6, :cond_4

    return-object v6

    :cond_4
    move-object v0, v3

    :goto_4
    invoke-virtual {v14}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v3

    if-eqz v3, :cond_5

    sget-object v4, Ld2/f;->a:Ld2/f;

    invoke-static {v2}, Lz1/u;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v1, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v13, v5, Lz1/Q;->c:Ljava/lang/Object;

    const/4 v7, 0x4

    iput v7, v5, Lz1/Q;->g:I

    invoke-virtual {v4, v1, v3, v2, v5}, Ld2/f;->a(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_5

    return-object v6

    :cond_5
    :goto_5
    invoke-static {v1, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz1/u;->c(Lz1/e;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Lz1/e;->a:I

    invoke-static {v2}, LG5/a3;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_e

    :catch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-static {v0, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    move/from16 v16, v2

    move-object v2, v1

    move/from16 v1, v16

    goto :goto_8

    :catch_2
    move-object v0, v3

    goto/16 :goto_c

    :goto_8
    :try_start_3
    const-string v7, "GWT:AppWidget"

    sget-object v15, Le7/a;->a:Ljava/lang/String;

    invoke-virtual {v15, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v14}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v4, Ld2/f;->a:Ld2/f;

    invoke-static {v1}, Lz1/u;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v2, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v3, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v13, v5, Lz1/Q;->c:Ljava/lang/Object;

    const/4 v7, 0x6

    iput v7, v5, Lz1/Q;->g:I

    invoke-virtual {v4, v2, v0, v1, v5}, Ld2/f;->a(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_6

    return-object v6

    :cond_6
    move-object v1, v2

    move-object v0, v3

    :goto_9
    move-object v3, v0

    move-object v2, v1

    :cond_7
    invoke-static {v2, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lz1/u;->c(Lz1/e;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, v3, Lz1/e;->a:I

    invoke-static {v0}, LG5/a3;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_e

    :catch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :catchall_2
    move-exception v0

    invoke-virtual {v14}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v4

    if-eqz v4, :cond_9

    sget-object v7, Ld2/f;->a:Ld2/f;

    invoke-static {v1}, Lz1/u;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v2, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v3, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v0, v5, Lz1/Q;->c:Ljava/lang/Object;

    const/4 v8, 0x7

    iput v8, v5, Lz1/Q;->g:I

    invoke-virtual {v7, v2, v4, v1, v5}, Ld2/f;->a(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v6, :cond_8

    return-object v6

    :cond_8
    move-object v1, v3

    :goto_a
    move-object v3, v1

    :cond_9
    invoke-static {v2, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lz1/u;->c(Lz1/e;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, v3, Lz1/e;->a:I

    invoke-static {v1}, LG5/a3;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_b

    :catch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v12}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_a
    :goto_b
    throw v0

    :goto_c
    invoke-virtual {v14}, Lz1/V;->getStateDefinition()Ld2/g;

    move-result-object v3

    if-eqz v3, :cond_b

    sget-object v4, Ld2/f;->a:Ld2/f;

    invoke-static {v2}, Lz1/u;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v1, v5, Lz1/Q;->a:Ljava/lang/Object;

    iput-object v0, v5, Lz1/Q;->b:Ljava/lang/Object;

    iput-object v13, v5, Lz1/Q;->c:Ljava/lang/Object;

    const/4 v7, 0x5

    iput v7, v5, Lz1/Q;->g:I

    invoke-virtual {v4, v1, v3, v2, v5}, Ld2/f;->a(Landroid/content/Context;Ld2/g;Ljava/lang/String;Lkb/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v6, :cond_b

    return-object v6

    :cond_b
    :goto_d
    invoke-static {v1, v11}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lz1/u;->c(Lz1/e;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v0, Lz1/e;->a:I

    invoke-static {v2}, LG5/a3;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, LOd/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_e

    :catch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    :goto_e
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getErrorUiLayout$glance_appwidget_release()I
    .locals 0

    iget p0, p0, Lz1/V;->errorUiLayout:I

    return p0
.end method

.method public abstract getSizeMode()Lz1/b1;
.end method

.method public getStateDefinition()Ld2/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld2/g;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lz1/V;->stateDefinition:Ld2/g;

    return-object p0
.end method

.method public onCompositionError(Landroid/content/Context;Lx1/o;ILjava/lang/Throwable;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx1/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "glanceId"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "throwable"

    invoke-static {p4, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lz1/V;->getErrorUiLayout$glance_appwidget_release()I

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0}, Lz1/V;->getErrorUiLayout$glance_appwidget_release()I

    move-result p0

    invoke-direct {p2, p4, p0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p0

    invoke-virtual {p0, p3, p2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    return-void

    :cond_0
    throw p4
.end method

.method public onDelete(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx1/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lx1/o;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lz1/V;->onDelete$suspendImpl(Lz1/V;Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract provideGlance(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;
.end method

.method public final resize$glance_appwidget_release(Landroid/content/Context;ILandroid/os/Bundle;Lib/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/os/Bundle;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-virtual {p0}, Lz1/V;->getSizeMode()Lz1/b1;

    move-result-object v0

    instance-of v0, v0, Lz1/a1;

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-le v0, v2, :cond_0

    invoke-virtual {p0}, Lz1/V;->getSizeMode()Lz1/b1;

    :cond_0
    new-instance v5, Lz1/e;

    invoke-direct {v5, p2}, Lz1/e;-><init>(I)V

    invoke-static {p1}, LC1/B;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "resize at not default process / "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v3, " "

    const-string v4, "GWT:MultiProcess"

    invoke-static {v0, v3, p2, v4}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, LC1/z;->a:LC1/z;

    new-instance v7, LC1/q;

    const/4 p2, 0x0

    invoke-direct {v7, p3, v2, p2}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    sget-object p2, LC1/z;->a:LC1/z;

    new-instance p3, LC1/p;

    const/4 v8, 0x0

    move-object v3, p3

    move-object v4, p1

    move-object v6, p0

    invoke-direct/range {v3 .. v8}, LC1/p;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Lsb/o;Lib/c;)V

    invoke-virtual {p2, p3, p4}, LC1/z;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    iget-object p2, p0, Lz1/V;->sessionManager:Lc2/n;

    new-instance v8, LC1/q;

    const/4 v0, 0x4

    invoke-direct {v8, p3, v2, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance v0, Lz1/T;

    const/4 v9, 0x0

    move-object v3, v0

    move-object v4, p1

    move-object v6, p0

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Lz1/T;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Landroid/os/Bundle;Lsb/o;Lib/c;)V

    invoke-interface {p2, v0, p4}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_5

    goto :goto_2

    :cond_5
    move-object p0, v1

    :goto_2
    if-ne p0, p1, :cond_6

    return-object p0

    :cond_6
    return-object v1
.end method

.method public final triggerAction$glance_appwidget_release(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v2, Lz1/e;

    invoke-direct {v2, p2}, Lz1/e;-><init>(I)V

    invoke-static {p1}, LC1/B;->a(Landroid/content/Context;)Z

    move-result v0

    sget-object v7, Ldb/r;->a:Ldb/r;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "triggerAction "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "msg"

    invoke-static {p2, p4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p4, Le7/a;->a:Ljava/lang/String;

    const-string v0, " "

    const-string v3, "GWT:MultiProcess"

    invoke-static {p4, v0, p2, v3}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, LC1/z;->a:LC1/z;

    new-instance v4, LC1/q;

    const/4 p2, 0x1

    invoke-direct {v4, p3, v1, p2}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    sget-object p2, LC1/z;->a:LC1/z;

    new-instance p3, LC1/p;

    const/4 v5, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, LC1/p;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Lsb/o;Lib/c;)V

    invoke-virtual {p2, p3, p5}, LC1/z;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v7

    :goto_0
    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v7

    :goto_1
    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    return-object v7

    :cond_3
    iget-object p2, p0, Lz1/V;->sessionManager:Lc2/n;

    new-instance v5, LC1/q;

    const/4 v0, 0x5

    invoke-direct {v5, p3, v1, v0}, LC1/q;-><init>(Ljava/lang/Object;Lib/c;I)V

    new-instance p3, Lz1/T;

    const/4 v6, 0x0

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lz1/T;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Landroid/os/Bundle;Lsb/o;Lib/c;)V

    invoke-interface {p2, p3, p5}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p0, v7

    :goto_2
    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    return-object v7
.end method

.method public final update(Landroid/content/Context;Lx1/o;Lib/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lx1/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lx1/o;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p2, Lz1/e;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lz1/e;

    invoke-static {v0}, Lz1/u;->c(Lz1/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Lz1/e;

    iget v2, p2, Lz1/e;->a:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-static/range {v0 .. v6}, Lz1/V;->update$glance_appwidget_release$default(Lz1/V;Landroid/content/Context;ILandroid/os/Bundle;Lib/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Glance ID"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final update$glance_appwidget_release(Landroid/content/Context;ILandroid/os/Bundle;Lib/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/os/Bundle;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lz1/d1;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lz1/e1;->a:Lz1/e1;

    const-string v1, "GlanceAppWidget::update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lz1/e1;->a(Ljava/lang/String;I)V

    :cond_0
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    sget-object v1, Ldb/r;->a:Ldb/r;

    if-nez v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Widget id("

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is not bound"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "msg"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le7/a;->a:Ljava/lang/String;

    const-string p2, " "

    const-string p3, "GWT:AppWidget"

    invoke-static {p1, p2, p0, p3}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    new-instance v6, Lz1/e;

    invoke-direct {v6, p2}, Lz1/e;-><init>(I)V

    invoke-static {p1}, LC1/B;->a(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, LC1/z;->a:LC1/z;

    new-instance p3, LC1/r;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v6, p0, v0}, LC1/r;-><init>(Landroid/content/Context;Lz1/e;Lz1/V;Lib/c;)V

    invoke-virtual {p2, p3, p4}, LC1/z;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    return-object v1

    :cond_4
    iget-object p2, p0, Lz1/V;->sessionManager:Lc2/n;

    new-instance v0, Lz1/U;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v4, p3

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lz1/U;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lib/c;Lz1/e;Lz1/V;)V

    invoke-interface {p2, v0, p4}, Lc2/n;->a(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    return-object v1
.end method
