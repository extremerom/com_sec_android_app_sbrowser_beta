.class public final synthetic Lcom/sec/android/app/sbrowser/backup/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/backup/ImportBookmarkService;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/backup/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/backup/a;->e:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/backup/a;->f:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/backup/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/io/Serializable;Ljava/lang/Object;I)V
    .locals 0

    iput p6, p0, Lcom/sec/android/app/sbrowser/backup/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/backup/a;->d:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/backup/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/backup/a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/backup/a;->e:Ljava/lang/Object;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/backup/a;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/sbrowser/backup/a;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/a;->d:Ljava/lang/Object;

    check-cast v1, Lg3/n;

    const-string v2, "$this_enqueueUniquelyNamedPeriodic"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/backup/a;->b:Ljava/lang/String;

    const-string v3, "$name"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/backup/a;->c:Ljava/lang/Object;

    check-cast v3, Lo3/c;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/backup/a;->e:Ljava/lang/Object;

    check-cast v4, LA1/d;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/backup/a;->f:Ljava/lang/Object;

    check-cast v0, Lf3/G;

    const-string v5, "$workRequest"

    invoke-static {v0, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v5

    invoke-virtual {v5, v2}, Lo3/r;->n(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    new-instance v0, Lf3/y;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t apply UPDATE policy to the chains of work."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lo3/c;->h(LG5/a3;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v6}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo3/o;

    if-nez v6, :cond_1

    invoke-virtual {v4}, LA1/d;->invoke()Ljava/lang/Object;

    goto/16 :goto_0

    :cond_1
    iget-object v8, v6, Lo3/o;->a:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v9

    if-nez v9, :cond_2

    new-instance v0, Lf3/y;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "WorkSpec with "

    const-string v5, ", that matches a name \""

    const-string v6, "\", wasn\'t found"

    invoke-static {v4, v8, v5, v2, v6}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lo3/c;->h(LG5/a3;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lo3/q;->d()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v0, Lf3/y;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v0}, Lo3/c;->h(LG5/a3;)V

    goto :goto_0

    :cond_3
    iget-object v2, v6, Lo3/o;->b:Lf3/E;

    sget-object v9, Lf3/E;->CANCELLED:Lf3/E;

    if-ne v2, v9, :cond_4

    invoke-virtual {v5, v8}, Lo3/r;->c(Ljava/lang/String;)V

    invoke-virtual {v4}, LA1/d;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v11, v6, Lo3/o;->a:Ljava/lang/String;

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    iget-object v10, v0, Lf3/G;->b:Lo3/q;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v23, 0x7ffffe

    invoke-static/range {v10 .. v23}, Lo3/q;->b(Lo3/q;Ljava/lang/String;Lf3/E;Ljava/lang/String;Lf3/i;IJIIJII)Lo3/q;

    move-result-object v10

    :try_start_0
    iget-object v6, v1, Lg3/n;->f:Lg3/d;

    const-string v2, "processor"

    invoke-static {v6, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v1, Lg3/n;->b:Lf3/c;

    const-string v2, "configuration"

    invoke-static {v8, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v1, Lg3/n;->e:Ljava/util/List;

    const-string v1, "schedulers"

    invoke-static {v9, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v11, v0, Lf3/G;->c:Ljava/util/Set;

    invoke-static/range {v6 .. v11}, LG5/u3;->c(Lg3/d;Landroidx/work/impl/WorkDatabase;Lf3/c;Ljava/util/List;Lo3/q;Ljava/util/Set;)V

    sget-object v0, Lf3/B;->W:Lf3/A;

    invoke-virtual {v3, v0}, Lo3/c;->h(LG5/a3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Lf3/y;

    invoke-direct {v1, v0}, Lf3/y;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v1}, Lo3/c;->h(LG5/a3;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/a;->f:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/backup/a;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/backup/a;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/backup/a;->d:Ljava/lang/Object;

    check-cast v4, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/backup/a;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v4, v2, v3, v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->c(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/download/ui/DHDeleteDialogFragment$DHDeleteDialogListener;)V

    return-void

    :pswitch_1
    iget-object v1, v0, Lcom/sec/android/app/sbrowser/backup/a;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/android/app/sbrowser/backup/a;->e:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/backup/a;->d:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sbrowser/backup/ImportBookmarkService;

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/backup/a;->f:Ljava/lang/Object;

    check-cast v4, Landroid/content/Context;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/backup/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v3, v1, v2, v4, v0}, Lcom/sec/android/app/sbrowser/backup/ImportBookmarkService;->a(Lcom/sec/android/app/sbrowser/backup/ImportBookmarkService;Ljava/lang/String;Ljava/util/List;Landroid/content/Context;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
