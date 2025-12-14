.class public final Lo3/h;
.super LJ2/i0;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(LJ2/U;I)V
    .locals 0

    iput p2, p0, Lo3/h;->e:I

    invoke-direct {p0, p1}, LJ2/i0;-><init>(LJ2/U;)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lo3/h;->e:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "DELETE FROM worktag WHERE work_spec_id=?"

    return-object p0

    :pswitch_0
    const-string p0, "UPDATE workspec SET run_attempt_count=run_attempt_count+1 WHERE id=?"

    return-object p0

    :pswitch_1
    const-string p0, "UPDATE workspec SET last_enqueue_time=? WHERE id=?"

    return-object p0

    :pswitch_2
    const-string p0, "UPDATE workspec SET output=? WHERE id=?"

    return-object p0

    :pswitch_3
    const-string p0, "UPDATE workspec SET period_count=period_count+1 WHERE id=?"

    return-object p0

    :pswitch_4
    const-string p0, "UPDATE workspec SET stop_reason = CASE WHEN state=1 THEN 1 ELSE -256 END, state=5 WHERE id=?"

    return-object p0

    :pswitch_5
    const-string p0, "UPDATE workspec SET state=? WHERE id=?"

    return-object p0

    :pswitch_6
    const-string p0, "DELETE FROM workspec WHERE id=?"

    return-object p0

    :pswitch_7
    const-string p0, "UPDATE OR ABORT `WorkSpec` SET `id` = ?,`state` = ?,`worker_class_name` = ?,`input_merger_class_name` = ?,`input` = ?,`output` = ?,`initial_delay` = ?,`interval_duration` = ?,`flex_duration` = ?,`run_attempt_count` = ?,`backoff_policy` = ?,`backoff_delay_duration` = ?,`last_enqueue_time` = ?,`minimum_retention_duration` = ?,`schedule_requested_at` = ?,`run_in_foreground` = ?,`out_of_quota_policy` = ?,`period_count` = ?,`generation` = ?,`next_schedule_time_override` = ?,`next_schedule_time_override_generation` = ?,`stop_reason` = ?,`required_network_type` = ?,`requires_charging` = ?,`requires_device_idle` = ?,`requires_battery_not_low` = ?,`requires_storage_not_low` = ?,`trigger_content_update_delay` = ?,`trigger_max_content_delay` = ?,`content_uri_triggers` = ? WHERE `id` = ?"

    return-object p0

    :pswitch_8
    const-string p0, "UPDATE workspec SET stop_reason=? WHERE id=?"

    return-object p0

    :pswitch_9
    const-string p0, "UPDATE workspec SET generation=generation+1 WHERE id=?"

    return-object p0

    :pswitch_a
    const-string p0, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    return-object p0

    :pswitch_b
    const-string p0, "UPDATE workspec SET schedule_requested_at=-1 WHERE state NOT IN (2, 3, 5)"

    return-object p0

    :pswitch_c
    const-string p0, "UPDATE workspec SET schedule_requested_at=? WHERE id=?"

    return-object p0

    :pswitch_d
    const-string p0, "UPDATE workspec SET next_schedule_time_override=9223372036854775807 WHERE (id=? AND next_schedule_time_override_generation=?)"

    return-object p0

    :pswitch_e
    const-string p0, "UPDATE workspec SET next_schedule_time_override=? WHERE id=?"

    return-object p0

    :pswitch_f
    const-string p0, "UPDATE workspec SET run_attempt_count=0 WHERE id=?"

    return-object p0

    :pswitch_10
    const-string p0, "DELETE FROM WorkProgress"

    return-object p0

    :pswitch_11
    const-string p0, "DELETE from WorkProgress where work_spec_id=?"

    return-object p0

    :pswitch_12
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=?"

    return-object p0

    :pswitch_13
    const-string p0, "DELETE FROM SystemIdInfo where work_spec_id=? AND generation=?"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public w(LT2/h;Ljava/lang/Object;)V
    .locals 10

    check-cast p2, Lo3/q;

    iget-object p0, p2, Lo3/q;->a:Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p2, Lo3/q;->b:Lf3/E;

    invoke-static {v0}, LD/a;->q(Lf3/E;)I

    move-result v0

    const/4 v1, 0x2

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    iget-object v0, p2, Lo3/q;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1, v1, v0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_1
    iget-object v0, p2, Lo3/q;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1, v0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_2
    iget-object v0, p2, Lo3/q;->e:Lf3/i;

    invoke-static {v0}, Lf3/i;->c(Lf3/i;)[B

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1, v1, v0}, LT2/f;->f0(I[B)V

    :goto_3
    iget-object v0, p2, Lo3/q;->f:Lf3/i;

    invoke-static {v0}, Lf3/i;->c(Lf3/i;)[B

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    goto :goto_4

    :cond_4
    invoke-interface {p1, v1, v0}, LT2/f;->f0(I[B)V

    :goto_4
    const/4 v0, 0x7

    iget-wide v1, p2, Lo3/q;->g:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 v0, 0x8

    iget-wide v1, p2, Lo3/q;->h:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 v0, 0x9

    iget-wide v1, p2, Lo3/q;->i:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget v0, p2, Lo3/q;->k:I

    int-to-long v0, v0

    const/16 v2, 0xa

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget-object v0, p2, Lo3/q;->l:Lf3/a;

    invoke-static {v0}, LD/a;->a(Lf3/a;)I

    move-result v0

    const/16 v1, 0xb

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    const/16 v0, 0xc

    iget-wide v1, p2, Lo3/q;->m:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 v0, 0xd

    iget-wide v1, p2, Lo3/q;->n:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 v0, 0xe

    iget-wide v1, p2, Lo3/q;->o:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    const/16 v0, 0xf

    iget-wide v1, p2, Lo3/q;->p:J

    invoke-interface {p1, v0, v1, v2}, LT2/f;->i(IJ)V

    iget-boolean v0, p2, Lo3/q;->q:Z

    const/16 v1, 0x10

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    iget-object v0, p2, Lo3/q;->r:Lf3/C;

    invoke-static {v0}, LD/a;->m(Lf3/C;)I

    move-result v0

    const/16 v1, 0x11

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    iget v0, p2, Lo3/q;->s:I

    int-to-long v0, v0

    const/16 v2, 0x12

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget v0, p2, Lo3/q;->t:I

    int-to-long v0, v0

    const/16 v2, 0x13

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget-wide v0, p2, Lo3/q;->u:J

    const/16 v2, 0x14

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget v0, p2, Lo3/q;->v:I

    int-to-long v0, v0

    const/16 v2, 0x15

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget v0, p2, Lo3/q;->w:I

    int-to-long v0, v0

    const/16 v2, 0x16

    invoke-interface {p1, v2, v0, v1}, LT2/f;->i(IJ)V

    iget-object p2, p2, Lo3/q;->j:Lf3/f;

    const/16 v0, 0x1e

    const/16 v1, 0x1d

    const/16 v2, 0x1c

    const/16 v3, 0x1b

    const/16 v4, 0x1a

    const/16 v5, 0x19

    const/16 v6, 0x18

    const/16 v7, 0x17

    if-eqz p2, :cond_5

    iget-object v8, p2, Lf3/f;->a:Lf3/v;

    invoke-static {v8}, LD/a;->l(Lf3/v;)I

    move-result v8

    int-to-long v8, v8

    invoke-interface {p1, v7, v8, v9}, LT2/f;->i(IJ)V

    iget-boolean v7, p2, Lf3/f;->b:Z

    int-to-long v7, v7

    invoke-interface {p1, v6, v7, v8}, LT2/f;->i(IJ)V

    iget-boolean v6, p2, Lf3/f;->c:Z

    int-to-long v6, v6

    invoke-interface {p1, v5, v6, v7}, LT2/f;->i(IJ)V

    iget-boolean v5, p2, Lf3/f;->d:Z

    int-to-long v5, v5

    invoke-interface {p1, v4, v5, v6}, LT2/f;->i(IJ)V

    iget-boolean v4, p2, Lf3/f;->e:Z

    int-to-long v4, v4

    invoke-interface {p1, v3, v4, v5}, LT2/f;->i(IJ)V

    iget-wide v3, p2, Lf3/f;->f:J

    invoke-interface {p1, v2, v3, v4}, LT2/f;->i(IJ)V

    iget-wide v2, p2, Lf3/f;->g:J

    invoke-interface {p1, v1, v2, v3}, LT2/f;->i(IJ)V

    iget-object p2, p2, Lf3/f;->h:Ljava/util/Set;

    invoke-static {p2}, LD/a;->p(Ljava/util/Set;)[B

    move-result-object p2

    invoke-interface {p1, v0, p2}, LT2/f;->f0(I[B)V

    goto :goto_5

    :cond_5
    invoke-interface {p1, v7}, LT2/f;->l(I)V

    invoke-interface {p1, v6}, LT2/f;->l(I)V

    invoke-interface {p1, v5}, LT2/f;->l(I)V

    invoke-interface {p1, v4}, LT2/f;->l(I)V

    invoke-interface {p1, v3}, LT2/f;->l(I)V

    invoke-interface {p1, v2}, LT2/f;->l(I)V

    invoke-interface {p1, v1}, LT2/f;->l(I)V

    invoke-interface {p1, v0}, LT2/f;->l(I)V

    :goto_5
    const/16 p2, 0x1f

    if-nez p0, :cond_6

    invoke-interface {p1, p2}, LT2/f;->l(I)V

    goto :goto_6

    :cond_6
    invoke-interface {p1, p2, p0}, LT2/f;->U(ILjava/lang/String;)V

    :goto_6
    return-void
.end method
