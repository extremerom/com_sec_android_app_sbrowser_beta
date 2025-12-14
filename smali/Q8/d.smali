.class public final LQ8/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQ8/e;


# direct methods
.method public synthetic constructor <init>(LQ8/e;I)V
    .locals 0

    iput p2, p0, LQ8/d;->a:I

    iput-object p1, p0, LQ8/d;->b:LQ8/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 13

    move-object v1, p0

    move-object/from16 v8, p3

    move-object/from16 v0, p4

    const/4 v9, 0x0

    const/4 v2, 0x0

    const-string v3, "file"

    const-string v4, "observing_uri"

    const-wide/16 v5, 0x0

    iget-object v7, v1, LQ8/d;->b:LQ8/e;

    iget v10, v1, LQ8/d;->a:I

    packed-switch v10, :pswitch_data_0

    const-string v0, "["

    const-string v1, "] GET_STATUS: is_finished: "

    invoke-static {v0, v8, v1}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, v7, LQ8/e;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v7, LQ8/e;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, LQ8/e;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v7, LQ8/e;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "e"

    invoke-static {v1, v0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v1, v7, LQ8/e;->e:Z

    const-string v2, "is_finished"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, v7, LQ8/e;->f:Z

    const-string v2, "is_success"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, v7, LQ8/e;->e:Z

    if-nez v1, :cond_1

    iget-wide v1, v7, LQ8/e;->d:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v7, LQ8/e;->c:J

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long v5, v3, v1

    :goto_0
    long-to-int v1, v5

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-object v0

    :pswitch_0
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    iput-wide v5, v7, LQ8/e;->c:J

    iput-wide v5, v7, LQ8/e;->d:J

    iput-boolean v2, v7, LQ8/e;->e:Z

    iput-boolean v2, v7, LQ8/e;->f:Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, LQ8/c;

    const/4 v7, 0x1

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, LQ8/c;-><init>(LP8/b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v0, "RESTORE_"

    invoke-static {v0, v8}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    return-object v9

    :pswitch_1
    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    iput-wide v5, v7, LQ8/e;->c:J

    iput-wide v5, v7, LQ8/e;->d:J

    iput-boolean v2, v7, LQ8/e;->e:Z

    iput-boolean v2, v7, LQ8/e;->f:Z

    new-instance v11, Ljava/lang/Thread;

    new-instance v12, LQ8/c;

    const/4 v7, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v5, p3

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, LQ8/c;-><init>(LP8/b;Ljava/lang/Object;Landroid/content/Context;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    const-string v0, "BACKUP_"

    invoke-static {v0, v8}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v12, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    return-object v9

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
