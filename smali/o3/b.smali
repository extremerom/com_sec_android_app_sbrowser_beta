.class public final Lo3/b;
.super LJ2/i0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LJ2/U;I)V
    .locals 0

    iput p2, p0, Lo3/b;->e:I

    invoke-direct {p0, p1}, LJ2/i0;-><init>(LJ2/U;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lo3/b;->e:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final w(LT2/h;Ljava/lang/Object;)V
    .locals 9

    iget p0, p0, Lo3/b;->e:I

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lo3/s;

    iget-object p0, p2, Lo3/s;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_0
    const/4 p0, 0x2

    iget-object p2, p2, Lo3/s;->b:Ljava/lang/String;

    if-nez p2, :cond_1

    invoke-interface {p1, p0}, LT2/f;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, p0, p2}, LT2/f;->U(ILjava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    check-cast p2, Lo3/q;

    iget-object p0, p2, Lo3/q;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_2

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_2
    iget-object p0, p2, Lo3/q;->b:Lf3/E;

    invoke-static {p0}, LD/a;->q(Lf3/E;)I

    move-result p0

    const/4 v0, 0x2

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget-object p0, p2, Lo3/q;->c:Ljava/lang/String;

    const/4 v0, 0x3

    if-nez p0, :cond_3

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_3
    iget-object p0, p2, Lo3/q;->d:Ljava/lang/String;

    const/4 v0, 0x4

    if-nez p0, :cond_4

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_4
    iget-object p0, p2, Lo3/q;->e:Lf3/i;

    invoke-static {p0}, Lf3/i;->c(Lf3/i;)[B

    move-result-object p0

    const/4 v0, 0x5

    if-nez p0, :cond_5

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v0, p0}, LT2/f;->f0(I[B)V

    :goto_5
    iget-object p0, p2, Lo3/q;->f:Lf3/i;

    invoke-static {p0}, Lf3/i;->c(Lf3/i;)[B

    move-result-object p0

    const/4 v0, 0x6

    if-nez p0, :cond_6

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, v0, p0}, LT2/f;->f0(I[B)V

    :goto_6
    const/4 p0, 0x7

    iget-wide v0, p2, Lo3/q;->g:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    const/16 p0, 0x8

    iget-wide v0, p2, Lo3/q;->h:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    const/16 p0, 0x9

    iget-wide v0, p2, Lo3/q;->i:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/q;->k:I

    int-to-long v0, p0

    const/16 p0, 0xa

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget-object p0, p2, Lo3/q;->l:Lf3/a;

    invoke-static {p0}, LD/a;->a(Lf3/a;)I

    move-result p0

    const/16 v0, 0xb

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 p0, 0xc

    iget-wide v0, p2, Lo3/q;->m:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    const/16 p0, 0xd

    iget-wide v0, p2, Lo3/q;->n:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    const/16 p0, 0xe

    iget-wide v0, p2, Lo3/q;->o:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    const/16 p0, 0xf

    iget-wide v0, p2, Lo3/q;->p:J

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget-boolean p0, p2, Lo3/q;->q:Z

    const/16 v0, 0x10

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget-object p0, p2, Lo3/q;->r:Lf3/C;

    invoke-static {p0}, LD/a;->m(Lf3/C;)I

    move-result p0

    const/16 v0, 0x11

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/q;->s:I

    int-to-long v0, p0

    const/16 p0, 0x12

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/q;->t:I

    int-to-long v0, p0

    const/16 p0, 0x13

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget-wide v0, p2, Lo3/q;->u:J

    const/16 p0, 0x14

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/q;->v:I

    int-to-long v0, p0

    const/16 p0, 0x15

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/q;->w:I

    int-to-long v0, p0

    const/16 p0, 0x16

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget-object p0, p2, Lo3/q;->j:Lf3/f;

    const/16 p2, 0x1e

    const/16 v0, 0x1d

    const/16 v1, 0x1c

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    const/16 v4, 0x19

    const/16 v5, 0x18

    const/16 v6, 0x17

    if-eqz p0, :cond_7

    iget-object v7, p0, Lf3/f;->a:Lf3/v;

    invoke-static {v7}, LD/a;->l(Lf3/v;)I

    move-result v7

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, LT2/f;->i(IJ)V

    iget-boolean v6, p0, Lf3/f;->b:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, LT2/f;->i(IJ)V

    iget-boolean v5, p0, Lf3/f;->c:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, LT2/f;->i(IJ)V

    iget-boolean v4, p0, Lf3/f;->d:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, LT2/f;->i(IJ)V

    iget-boolean v3, p0, Lf3/f;->e:Z

    int-to-long v3, v3

    invoke-interface {p1, v2, v3, v4}, LT2/f;->i(IJ)V

    iget-wide v2, p0, Lf3/f;->f:J

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    iget-wide v1, p0, Lf3/f;->g:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget-object p0, p0, Lf3/f;->h:Ljava/util/Set;

    invoke-static {p0}, LD/a;->p(Ljava/util/Set;)[B

    move-result-object p0

    invoke-interface {p1, p2, p0}, LT2/f;->f0(I[B)V

    goto :goto_7

    :cond_7
    invoke-interface {p1, v6}, LT2/f;->l(I)V

    invoke-interface {p1, v5}, LT2/f;->l(I)V

    invoke-interface {p1, v4}, LT2/f;->l(I)V

    invoke-interface {p1, v3}, LT2/f;->l(I)V

    invoke-interface {p1, v2}, LT2/f;->l(I)V

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    invoke-interface {p1, p2}, LT2/f;->l(I)V

    :goto_7
    return-void

    :pswitch_1
    check-cast p2, Lo3/m;

    iget-object p0, p2, Lo3/m;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_8

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_8

    :cond_8
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_8
    iget-object p0, p2, Lo3/m;->b:Lf3/i;

    invoke-static {p0}, Lf3/i;->c(Lf3/i;)[B

    move-result-object p0

    const/4 p2, 0x2

    if-nez p0, :cond_9

    invoke-interface {p1, p2}, LT2/f;->l(I)V

    goto :goto_9

    :cond_9
    invoke-interface {p1, p2, p0}, LT2/f;->f0(I[B)V

    :goto_9
    return-void

    :pswitch_2
    check-cast p2, Lo3/k;

    iget-object p0, p2, Lo3/k;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_a

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_a

    :cond_a
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_a
    iget-object p0, p2, Lo3/k;->b:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-interface {p1, p2, p0}, LT2/f;->U(ILjava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Lo3/g;

    iget-object p0, p2, Lo3/g;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_b

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_b

    :cond_b
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_b
    iget p0, p2, Lo3/g;->b:I

    int-to-long v0, p0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    iget p0, p2, Lo3/g;->c:I

    int-to-long v0, p0

    const/4 p0, 0x3

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    return-void

    :pswitch_4
    check-cast p2, Lo3/d;

    iget-object p0, p2, Lo3/d;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    iget-object p0, p2, Lo3/d;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 p0, 0x2

    invoke-interface {p1, p0, v0, v1}, LT2/f;->i(IJ)V

    return-void

    :pswitch_5
    check-cast p2, Lo3/a;

    iget-object p0, p2, Lo3/a;->a:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    const/4 p0, 0x2

    iget-object p2, p2, Lo3/a;->b:Ljava/lang/String;

    if-nez p2, :cond_c

    invoke-interface {p1, p0}, LT2/f;->l(I)V

    goto :goto_c

    :cond_c
    invoke-interface {p1, p0, p2}, LT2/f;->U(ILjava/lang/String;)V

    :goto_c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final x(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, LJ2/i0;->a()LT2/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lo3/b;->w(LT2/h;Ljava/lang/Object;)V

    invoke-interface {v0}, LT2/h;->P()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, LJ2/i0;->r(LT2/h;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, LJ2/i0;->r(LT2/h;)V

    throw p1
.end method
