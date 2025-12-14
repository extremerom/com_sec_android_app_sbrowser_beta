.class public final Lp3/n;
.super Lp3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lg3/n;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg3/n;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lp3/n;->c:I

    iput-object p1, p0, Lp3/n;->d:Lg3/n;

    iput-object p2, p0, Lp3/n;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lp3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 63

    move-object/from16 v0, p0

    const/16 v8, 0x11

    const/16 v9, 0x10

    const/16 v10, 0xf

    const/16 v11, 0xe

    const/16 v12, 0xd

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xa

    iget-object v5, v0, Lp3/n;->e:Ljava/lang/Object;

    iget-object v6, v0, Lp3/n;->d:Lg3/n;

    iget v0, v0, Lp3/n;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, v6, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->d()Lo3/f;

    move-result-object v0

    const-string v6, "<this>"

    check-cast v5, Lo3/i;

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SELECT * FROM workspec"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v5, Lo3/i;->d:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    const-string v9, "states"

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const-string v10, ")"

    const-string v11, " AND"

    if-nez v9, :cond_1

    new-instance v9, Ljava/util/ArrayList;

    invoke-static {v8, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf3/E;

    invoke-static {v12}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-static {v12}, LD/a;->q(Lf3/E;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v8, " WHERE state IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, LG5/p;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v8, v11

    goto :goto_1

    :cond_1
    const-string v8, " WHERE"

    :goto_1
    iget-object v9, v5, Lo3/i;->a:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    const-string v12, "ids"

    invoke-static {v9, v12}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/UUID;

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string v4, " id IN ("

    invoke-virtual {v8, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v7, v4}, LG5/p;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-object v8, v11

    :cond_3
    iget-object v4, v5, Lo3/i;->c:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    const-string v9, "tags"

    invoke-static {v4, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    const-string v10, "))"

    if-nez v9, :cond_4

    const-string v9, " id IN (SELECT work_spec_id FROM worktag WHERE tag IN ("

    invoke-virtual {v8, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v7, v8}, LG5/p;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    move-object v11, v8

    :goto_3
    iget-object v4, v5, Lo3/i;->b:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    const-string v5, "uniqueWorkNames"

    invoke-static {v4, v5}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, " id IN (SELECT work_spec_id FROM workname WHERE name IN ("

    invoke-virtual {v11, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v7, v5}, LG5/p;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5
    const-string v4, ";"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, LA7/h;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "builder.toString()"

    invoke-static {v5, v7}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v3, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v4, v5, v6}, LA7/h;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v5, v0, Lo3/f;->b:Ljava/lang/Object;

    check-cast v5, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v5}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-static {v5, v4, v2}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v5, "id"

    invoke-static {v4, v5}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "state"

    invoke-static {v4, v6}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "output"

    invoke-static {v4, v7}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "initial_delay"

    invoke-static {v4, v8}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "interval_duration"

    invoke-static {v4, v9}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "flex_duration"

    invoke-static {v4, v10}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "run_attempt_count"

    invoke-static {v4, v11}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "backoff_policy"

    invoke-static {v4, v12}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "backoff_delay_duration"

    invoke-static {v4, v13}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "last_enqueue_time"

    invoke-static {v4, v14}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "period_count"

    invoke-static {v4, v15}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v3, "generation"

    invoke-static {v4, v3}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v2, "next_schedule_time_override"

    invoke-static {v4, v2}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    const-string v1, "stop_reason"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 p0, v1

    const-string v1, "required_network_type"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v1

    const-string v1, "requires_charging"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v18, v1

    const-string v1, "requires_device_idle"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v19, v1

    const-string v1, "requires_battery_not_low"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v20, v1

    const-string v1, "requires_storage_not_low"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v21, v1

    const-string v1, "trigger_content_update_delay"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v22, v1

    const-string v1, "trigger_max_content_delay"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v24, v1

    const-string v1, "content_uri_triggers"

    invoke-static {v4, v1}, Landroidx/glance/appwidget/protobuf/s0;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    move/from16 v25, v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move/from16 v26, v2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :goto_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v27

    if-eqz v27, :cond_8

    move/from16 v27, v3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayList;

    if-nez v28, :cond_6

    move/from16 v28, v15

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_30

    :cond_6
    move/from16 v28, v15

    :goto_5
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    if-nez v15, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move/from16 v3, v27

    move/from16 v15, v28

    goto :goto_4

    :cond_8
    move/from16 v27, v3

    move/from16 v28, v15

    const/4 v3, -0x1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v0, v1}, Lo3/f;->j(Ljava/util/HashMap;)V

    invoke-virtual {v0, v2}, Lo3/f;->i(Ljava/util/HashMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, -0x1

    if-ne v5, v3, :cond_9

    :goto_7
    move-object/from16 v30, v16

    goto :goto_8

    :cond_9
    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v15

    :goto_8
    if-ne v6, v3, :cond_b

    move-object/from16 v31, v16

    goto :goto_9

    :cond_b
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, LD/a;->j(I)Lf3/E;

    move-result-object v15

    move-object/from16 v31, v15

    :goto_9
    if-ne v7, v3, :cond_c

    move-object/from16 v32, v16

    goto :goto_b

    :cond_c
    invoke-interface {v4, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v3, v16

    goto :goto_a

    :cond_d
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_a
    invoke-static {v3}, Lf3/i;->a([B)Lf3/i;

    move-result-object v3

    move-object/from16 v32, v3

    :goto_b
    const-wide/16 v33, 0x0

    const/4 v3, -0x1

    if-ne v8, v3, :cond_e

    move-wide/from16 v35, v33

    goto :goto_c

    :cond_e
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    :goto_c
    if-ne v9, v3, :cond_f

    move-wide/from16 v37, v33

    goto :goto_d

    :cond_f
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v37

    :goto_d
    if-ne v10, v3, :cond_10

    move-wide/from16 v39, v33

    goto :goto_e

    :cond_10
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    :goto_e
    if-ne v11, v3, :cond_11

    const/4 v15, 0x0

    goto :goto_f

    :cond_11
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    :goto_f
    if-ne v12, v3, :cond_12

    move-object/from16 v41, v16

    goto :goto_10

    :cond_12
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, LD/a;->g(I)Lf3/a;

    move-result-object v23

    move-object/from16 v41, v23

    :goto_10
    if-ne v13, v3, :cond_13

    move-wide/from16 v42, v33

    goto :goto_11

    :cond_13
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v42

    :goto_11
    if-ne v14, v3, :cond_14

    move-wide/from16 v44, v33

    :goto_12
    move/from16 v62, v28

    move/from16 v28, v6

    move/from16 v6, v62

    goto :goto_13

    :cond_14
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    goto :goto_12

    :goto_13
    if-ne v6, v3, :cond_15

    const/16 v46, 0x0

    :goto_14
    move/from16 v62, v27

    move/from16 v27, v6

    move/from16 v6, v62

    goto :goto_15

    :cond_15
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v46, v23

    goto :goto_14

    :goto_15
    if-ne v6, v3, :cond_16

    const/16 v47, 0x0

    :goto_16
    move/from16 v62, v26

    move/from16 v26, v6

    move/from16 v6, v62

    goto :goto_17

    :cond_16
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v47, v23

    goto :goto_16

    :goto_17
    if-ne v6, v3, :cond_17

    move-wide/from16 v48, v33

    :goto_18
    move/from16 v62, v6

    move/from16 v6, p0

    move/from16 p0, v62

    goto :goto_19

    :cond_17
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v48

    goto :goto_18

    :goto_19
    if-ne v6, v3, :cond_18

    const/16 v50, 0x0

    :goto_1a
    move/from16 v62, v17

    move/from16 v17, v6

    move/from16 v6, v62

    goto :goto_1b

    :cond_18
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move/from16 v50, v23

    goto :goto_1a

    :goto_1b
    if-ne v6, v3, :cond_19

    move-object/from16 v52, v16

    :goto_1c
    move/from16 v62, v18

    move/from16 v18, v6

    move/from16 v6, v62

    goto :goto_1d

    :cond_19
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    invoke-static/range {v23 .. v23}, LD/a;->h(I)Lf3/v;

    move-result-object v23

    move-object/from16 v52, v23

    goto :goto_1c

    :goto_1d
    if-ne v6, v3, :cond_1a

    const/16 v53, 0x0

    :goto_1e
    move/from16 v62, v19

    move/from16 v19, v6

    move/from16 v6, v62

    goto :goto_20

    :cond_1a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_1b

    const/16 v23, 0x1

    goto :goto_1f

    :cond_1b
    const/16 v23, 0x0

    :goto_1f
    move/from16 v53, v23

    goto :goto_1e

    :goto_20
    if-ne v6, v3, :cond_1c

    const/16 v54, 0x0

    :goto_21
    move/from16 v62, v20

    move/from16 v20, v6

    move/from16 v6, v62

    goto :goto_23

    :cond_1c
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_1d

    const/16 v23, 0x1

    goto :goto_22

    :cond_1d
    const/16 v23, 0x0

    :goto_22
    move/from16 v54, v23

    goto :goto_21

    :goto_23
    if-ne v6, v3, :cond_1e

    const/16 v55, 0x0

    :goto_24
    move/from16 v62, v21

    move/from16 v21, v6

    move/from16 v6, v62

    goto :goto_26

    :cond_1e
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_1f

    const/16 v23, 0x1

    goto :goto_25

    :cond_1f
    const/16 v23, 0x0

    :goto_25
    move/from16 v55, v23

    goto :goto_24

    :goto_26
    if-ne v6, v3, :cond_20

    const/16 v56, 0x0

    :goto_27
    move/from16 v62, v22

    move/from16 v22, v6

    move/from16 v6, v62

    goto :goto_29

    :cond_20
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    if-eqz v23, :cond_21

    const/16 v23, 0x1

    goto :goto_28

    :cond_21
    const/16 v23, 0x0

    :goto_28
    move/from16 v56, v23

    goto :goto_27

    :goto_29
    if-ne v6, v3, :cond_22

    move-wide/from16 v57, v33

    :goto_2a
    move/from16 v62, v24

    move/from16 v24, v6

    move/from16 v6, v62

    goto :goto_2b

    :cond_22
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v57

    goto :goto_2a

    :goto_2b
    if-ne v6, v3, :cond_23

    :goto_2c
    move-wide/from16 v59, v33

    move/from16 v62, v25

    move/from16 v25, v6

    move/from16 v6, v62

    goto :goto_2d

    :cond_23
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v33

    goto :goto_2c

    :goto_2d
    if-ne v6, v3, :cond_24

    move-object/from16 v61, v16

    goto :goto_2f

    :cond_24
    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v3, v16

    goto :goto_2e

    :cond_25
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    :goto_2e
    invoke-static {v3}, LD/a;->b([B)Ljava/util/LinkedHashSet;

    move-result-object v3

    move-object/from16 v61, v3

    :goto_2f
    new-instance v3, Lf3/f;

    move-object/from16 v51, v3

    invoke-direct/range {v51 .. v61}, Lf3/f;-><init>(Lf3/v;ZZZZJJLjava/util/Set;)V

    move/from16 v53, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_26

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    move-object/from16 v51, v6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_27

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_27
    move-object/from16 v52, v6

    new-instance v6, Lo3/p;

    move-object/from16 v29, v6

    move-wide/from16 v33, v35

    move-wide/from16 v35, v37

    move-wide/from16 v37, v39

    move-object/from16 v39, v3

    move/from16 v40, v15

    invoke-direct/range {v29 .. v52}, Lo3/p;-><init>(Ljava/lang/String;Lf3/E;Lf3/i;JJJLf3/f;ILf3/a;JJIIJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v6, v28

    move/from16 v28, v27

    move/from16 v27, v26

    move/from16 v26, p0

    move/from16 p0, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v24

    move/from16 v24, v25

    move/from16 v25, v53

    goto/16 :goto_6

    :cond_28
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    sget-object v1, Lo3/q;->x:Lf1/g;

    invoke-virtual {v1, v0}, Lf1/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    return-object v0

    :goto_30
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v0

    :pswitch_0
    iget-object v0, v6, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    const/4 v2, 0x1

    invoke-static {v2, v1}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v1

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_29

    invoke-virtual {v1, v2}, LJ2/d0;->l(I)V

    goto :goto_31

    :cond_29
    invoke-virtual {v1, v2, v5}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_31
    iget-object v3, v0, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v3}, LJ2/U;->beginTransaction()V

    :try_start_1
    invoke-static {v3, v1, v2}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    :goto_32
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v24

    if-eqz v24, :cond_2c

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const/4 v4, 0x0

    goto :goto_33

    :catchall_1
    move-exception v0

    goto/16 :goto_3d

    :goto_33
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_2b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    const/16 v4, 0xa

    goto :goto_32

    :cond_2c
    const/4 v4, -0x1

    invoke-interface {v5, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v0, v2}, Lo3/r;->b(Ljava/util/HashMap;)V

    invoke-virtual {v0, v6}, Lo3/r;->a(Ljava/util/HashMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :goto_34
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_2d

    move-object/from16 v27, v16

    :goto_35
    const/4 v4, 0x1

    goto :goto_36

    :cond_2d
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v7

    goto :goto_35

    :goto_36
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, LD/a;->j(I)Lf3/E;

    move-result-object v28

    invoke-interface {v5, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    move-object/from16 v4, v16

    goto :goto_37

    :cond_2e
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    :goto_37
    invoke-static {v4}, Lf3/i;->a([B)Lf3/i;

    move-result-object v29

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, LD/a;->g(I)Lf3/a;

    move-result-object v38

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    const/16 v4, 0x12

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    const/16 v4, 0x13

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/16 v4, 0x14

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    const/16 v4, 0x15

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    const/4 v4, 0x5

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, LD/a;->h(I)Lf3/v;

    move-result-object v49

    const/4 v4, 0x6

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v4, 0x7

    if-eqz v7, :cond_2f

    const/16 v50, 0x1

    goto :goto_38

    :cond_2f
    const/16 v50, 0x0

    :goto_38
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-eqz v7, :cond_30

    const/16 v51, 0x1

    goto :goto_39

    :cond_30
    const/16 v51, 0x0

    :goto_39
    const/16 v4, 0x8

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_31

    const/16 v52, 0x1

    goto :goto_3a

    :cond_31
    const/16 v52, 0x0

    :goto_3a
    const/16 v4, 0x9

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_32

    const/16 v4, 0xa

    const/16 v53, 0x1

    goto :goto_3b

    :cond_32
    const/16 v4, 0xa

    const/16 v53, 0x0

    :goto_3b
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    const/16 v4, 0xb

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    const/16 v4, 0xc

    invoke-interface {v5, v4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_33

    move-object/from16 v4, v16

    goto :goto_3c

    :cond_33
    invoke-interface {v5, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    :goto_3c
    invoke-static {v4}, LD/a;->b([B)Ljava/util/LinkedHashSet;

    move-result-object v58

    new-instance v36, Lf3/f;

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v58}, Lf3/f;-><init>(Lf3/v;ZZZZJJLjava/util/Set;)V

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_34

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_34
    move-object/from16 v48, v4

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_35

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_35
    move-object/from16 v49, v4

    new-instance v4, Lo3/p;

    move-object/from16 v26, v4

    invoke-direct/range {v26 .. v49}, Lo3/p;-><init>(Ljava/lang/String;Lf3/E;Lf3/i;JJJLf3/f;ILf3/a;JJIIJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_34

    :cond_36
    invoke-virtual {v3}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    sget-object v1, Lo3/q;->x:Lf1/g;

    invoke-virtual {v1, v0}, Lf1/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_3e

    :goto_3d
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_3e
    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    throw v0

    :pswitch_1
    iget-object v0, v6, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v1, "SELECT id, state, output, run_attempt_count, generation, required_network_type, requires_charging,requires_device_idle, requires_battery_not_low, requires_storage_not_low, trigger_content_update_delay, trigger_max_content_delay, content_uri_triggers, initial_delay, interval_duration, flex_duration, backoff_policy, backoff_delay_duration, last_enqueue_time, period_count, next_schedule_time_override, stop_reason FROM workspec WHERE id IN\n            (SELECT work_spec_id FROM worktag WHERE tag=?)"

    const/4 v2, 0x1

    invoke-static {v2, v1}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v1

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_37

    invoke-virtual {v1, v2}, LJ2/d0;->l(I)V

    goto :goto_3f

    :cond_37
    invoke-virtual {v1, v2, v5}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_3f
    iget-object v3, v0, Lo3/r;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v3}, LJ2/U;->beginTransaction()V

    :try_start_5
    invoke-static {v3, v1, v2}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_38
    :goto_40
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_39

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    const/4 v6, 0x0

    goto :goto_41

    :catchall_3
    move-exception v0

    goto/16 :goto_4b

    :goto_41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_38

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_40

    :cond_3a
    const/4 v6, -0x1

    invoke-interface {v4, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    invoke-virtual {v0, v2}, Lo3/r;->b(Ljava/util/HashMap;)V

    invoke-virtual {v0, v5}, Lo3/r;->a(Ljava/util/HashMap;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_42
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_44

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3b

    move-object/from16 v27, v16

    :goto_43
    const/4 v6, 0x1

    goto :goto_44

    :cond_3b
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v27, v7

    goto :goto_43

    :goto_44
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, LD/a;->j(I)Lf3/E;

    move-result-object v28

    invoke-interface {v4, v15}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    move-object/from16 v7, v16

    goto :goto_45

    :cond_3c
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    :goto_45
    invoke-static {v7}, Lf3/i;->a([B)Lf3/i;

    move-result-object v29

    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v37

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v34

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, LD/a;->g(I)Lf3/a;

    move-result-object v38

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v39

    const/16 v7, 0x12

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v41

    const/16 v6, 0x13

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    const/16 v6, 0x14

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    const/16 v6, 0x15

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-static/range {v19 .. v19}, LD/a;->h(I)Lf3/v;

    move-result-object v49

    const/4 v6, 0x6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v6, 0x7

    if-eqz v18, :cond_3d

    const/16 v50, 0x1

    goto :goto_46

    :cond_3d
    const/16 v50, 0x0

    :goto_46
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    if-eqz v17, :cond_3e

    const/16 v51, 0x1

    goto :goto_47

    :cond_3e
    const/16 v51, 0x0

    :goto_47
    const/16 v6, 0x8

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v52, 0x1

    goto :goto_48

    :cond_3f
    const/16 v52, 0x0

    :goto_48
    const/16 v6, 0x9

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_40

    const/16 v6, 0xa

    const/16 v53, 0x1

    goto :goto_49

    :cond_40
    const/16 v6, 0xa

    const/16 v53, 0x0

    :goto_49
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v54

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    const/16 v6, 0xc

    invoke-interface {v4, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-eqz v23, :cond_41

    move-object/from16 v6, v16

    goto :goto_4a

    :cond_41
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    :goto_4a
    invoke-static {v6}, LD/a;->b([B)Ljava/util/LinkedHashSet;

    move-result-object v58

    new-instance v36, Lf3/f;

    move-object/from16 v48, v36

    invoke-direct/range {v48 .. v58}, Lf3/f;-><init>(Lf3/v;ZZZZJJLjava/util/Set;)V

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_42

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_42
    move-object/from16 v48, v6

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-nez v7, :cond_43

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :cond_43
    move-object/from16 v49, v7

    new-instance v7, Lo3/p;

    move-object/from16 v26, v7

    invoke-direct/range {v26 .. v49}, Lo3/p;-><init>(Ljava/lang/String;Lf3/E;Lf3/i;JJJLf3/f;ILf3/a;JJIIJILjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_42

    :cond_44
    invoke-virtual {v3}, LJ2/U;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    sget-object v1, Lo3/q;->x:Lf1/g;

    invoke-virtual {v1, v0}, Lf1/g;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/List;

    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_4c

    :goto_4b
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v1}, LJ2/d0;->a()V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_4c
    invoke-virtual {v3}, LJ2/U;->endTransaction()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
