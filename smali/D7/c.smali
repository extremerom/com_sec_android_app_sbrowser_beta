.class public final synthetic LD7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LD7/e;


# direct methods
.method public synthetic constructor <init>(LD7/e;I)V
    .locals 0

    iput p2, p0, LD7/c;->a:I

    iput-object p1, p0, LD7/c;->b:LD7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LD7/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD7/c;->b:LD7/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, LD7/e;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD7/e;->a:Lp7/f;

    invoke-virtual {v1}, Lp7/f;->a()V

    iget-object v1, v1, Lp7/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lt9/c;->a(Landroid/content/Context;)Lt9/c;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, LD7/e;->c:Lo3/c;

    invoke-virtual {v2}, Lo3/c;->j()LE7/b;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Lt9/c;->k()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_c

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object v1, LE7/d;->REGISTER_ERROR:LE7/d;

    iget-object v3, v2, LE7/b;->b:LE7/d;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-nez v6, :cond_4

    sget-object v6, LE7/d;->UNREGISTERED:LE7/d;

    if-ne v3, v6, :cond_2

    move v4, v5

    :cond_2
    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, p0, LD7/e;->d:LD7/l;

    invoke-virtual {v3, v2}, LD7/l;->a(LE7/b;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, v2}, LD7/e;->b(LE7/b;)LE7/b;

    move-result-object v3

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, LD7/e;->g(LE7/b;)LE7/b;

    move-result-object v3
    :try_end_3
    .catch LD7/g; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    monitor-enter v0

    :try_start_4
    iget-object v4, p0, LD7/e;->a:Lp7/f;

    invoke-virtual {v4}, Lp7/f;->a()V

    iget-object v4, v4, Lp7/f;->a:Landroid/content/Context;

    invoke-static {v4}, Lt9/c;->a(Landroid/content/Context;)Lt9/c;

    move-result-object v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v5, p0, LD7/e;->c:Lo3/c;

    invoke-virtual {v5, v3}, Lo3/c;->f(LE7/b;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Lt9/c;->k()V

    goto :goto_4

    :catchall_1
    move-exception p0

    goto/16 :goto_9

    :cond_5
    :goto_4
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-enter p0

    :try_start_7
    iget-object v0, p0, LD7/e;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, v2, LE7/b;->a:Ljava/lang/String;

    iget-object v2, v3, LE7/b;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, LD7/e;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x0

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_7
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_8
    :goto_5
    monitor-exit p0

    sget-object v0, LE7/d;->REGISTERED:LE7/d;

    iget-object v2, v3, LE7/b;->b:LE7/d;

    if-ne v2, v0, :cond_9

    iget-object v0, v3, LE7/b;->a:Ljava/lang/String;

    monitor-enter p0

    :try_start_8
    iput-object v0, p0, LD7/e;->j:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit p0

    goto :goto_6

    :catchall_3
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :cond_9
    :goto_6
    iget-object v0, v3, LE7/b;->b:LE7/d;

    if-ne v0, v1, :cond_a

    new-instance v0, LD7/g;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0, v0}, LD7/e;->h(Ljava/lang/Exception;)V

    goto :goto_b

    :cond_a
    sget-object v1, LE7/d;->NOT_GENERATED:LE7/d;

    if-eq v0, v1, :cond_c

    sget-object v1, LE7/d;->ATTEMPT_MIGRATION:LE7/d;

    if-ne v0, v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {p0, v3}, LD7/e;->i(LE7/b;)V

    goto :goto_b

    :cond_c
    :goto_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Installation ID could not be validated with the Firebase servers (maybe it was deleted). Firebase Installations will need to create a new Installation ID and auth token. Please retry your last request."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, LD7/e;->h(Ljava/lang/Exception;)V

    goto :goto_b

    :goto_8
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :catchall_4
    move-exception p0

    if-eqz v4, :cond_d

    :try_start_b
    invoke-virtual {v4}, Lt9/c;->k()V

    :cond_d
    throw p0

    :goto_9
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw p0

    :goto_a
    invoke-virtual {p0, v0}, LD7/e;->h(Ljava/lang/Exception;)V

    :cond_e
    :goto_b
    return-void

    :catchall_5
    move-exception p0

    if-eqz v1, :cond_f

    :try_start_c
    invoke-virtual {v1}, Lt9/c;->k()V

    :cond_f
    throw p0

    :goto_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw p0

    :pswitch_0
    iget-object p0, p0, LD7/c;->b:LD7/e;

    invoke-virtual {p0}, LD7/e;->a()V

    return-void

    :pswitch_1
    iget-object p0, p0, LD7/c;->b:LD7/e;

    invoke-virtual {p0}, LD7/e;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
