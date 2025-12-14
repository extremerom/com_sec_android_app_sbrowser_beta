.class public final Li3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/b;


# static fields
.field public static final f:Ljava/lang/String;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;

.field public final c:Ljava/lang/Object;

.field public final d:Lf3/w;

.field public final e:Lo3/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CommandHandler"

    invoke-static {v0}, Lf3/u;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Li3/c;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/w;Lo3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/c;->a:Landroid/content/Context;

    iput-object p2, p0, Li3/c;->d:Lf3/w;

    iput-object p3, p0, Li3/c;->e:Lo3/e;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Li3/c;->b:Ljava/util/HashMap;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li3/c;->c:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/content/Intent;)Lo3/j;
    .locals 4

    new-instance v0, Lo3/j;

    const-string v1, "KEY_WORKSPEC_ID"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_GENERATION"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, p0}, Lo3/j;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public static d(Landroid/content/Intent;Lo3/j;)V
    .locals 2

    const-string v0, "KEY_WORKSPEC_ID"

    iget-object v1, p1, Lo3/j;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "KEY_WORKSPEC_GENERATION"

    iget p1, p1, Lo3/j;->b:I

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;ILi3/i;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v6, p3

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_6

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "Handling constraints changed "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Li3/c;->f:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Li3/e;

    iget-object v1, v0, Li3/c;->a:Landroid/content/Context;

    iget-object v0, v0, Li3/c;->d:Lf3/w;

    invoke-direct {v8, v1, v0, p2, v6}, Li3/e;-><init>(Landroid/content/Context;Lf3/w;ILi3/i;)V

    iget-object v0, v6, Li3/i;->e:Lg3/n;

    iget-object v0, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v0

    invoke-virtual {v0}, Lo3/r;->i()Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Li3/d;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    move v3, v2

    move v4, v3

    move v9, v4

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo3/q;

    iget-object v10, v10, Lo3/q;->j:Lf3/f;

    iget-boolean v11, v10, Lf3/f;->d:Z

    or-int/2addr v2, v11

    iget-boolean v11, v10, Lf3/f;->b:Z

    or-int/2addr v3, v11

    iget-boolean v11, v10, Lf3/f;->e:Z

    or-int/2addr v4, v11

    sget-object v11, Lf3/v;->NOT_REQUIRED:Lf3/v;

    iget-object v10, v10, Lf3/f;->a:Lf3/v;

    if-eq v10, v11, :cond_1

    move v10, v5

    goto :goto_0

    :cond_1
    move v10, v7

    :goto_0
    or-int/2addr v9, v10

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v9, :cond_0

    :cond_2
    sget-object v1, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    const-string v5, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    iget-object v7, v8, Li3/e;->a:Landroid/content/Context;

    const-class v10, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v5, v7, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v5, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, v8, Li3/e;->b:Lf3/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo3/q;

    invoke-virtual {v4}, Lo3/q;->a()J

    move-result-wide v9

    cmp-long v5, v2, v9

    if-ltz v5, :cond_3

    invoke-virtual {v4}, Lo3/q;->c()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v8, Li3/e;->d:LP7/c;

    invoke-virtual {v5, v4}, LP7/c;->l(Lo3/q;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/q;

    iget-object v1, v0, Lo3/q;->a:Ljava/lang/String;

    invoke-static {v0}, LAd/a;->a(Lo3/q;)Lo3/j;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-class v2, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v3, v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_DELAY_MET"

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v3, v0}, Li3/c;->d(Landroid/content/Intent;Lo3/j;)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    const-string v2, "Creating a delay_met command for workSpec with id ("

    const-string v4, ")"

    invoke-static {v2, v1, v4}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Li3/e;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Li3/i;->b:Lr3/a;

    iget-object v10, v0, Lr3/a;->d:LH4/s;

    new-instance v11, LH/e;

    iget v1, v8, Li3/e;->c:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v10, v11}, LH4/s;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    const-string v4, "ACTION_RESCHEDULE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Handling reschedule "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Li3/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v6, Li3/i;->e:Lg3/n;

    invoke-virtual {v0}, Lg3/n;->j()V

    goto/16 :goto_d

    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v8, "KEY_WORKSPEC_ID"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    if-eqz v4, :cond_16

    invoke-virtual {v4}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    goto/16 :goto_c

    :cond_8
    aget-object v8, v8, v7

    invoke-virtual {v4, v8}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    goto/16 :goto_c

    :cond_9
    const-string v4, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v3, "Opportunistically setting an alarm for "

    const-string v4, "Setting up Alarms for "

    invoke-static {p1}, Li3/c;->b(Landroid/content/Intent;)Lo3/j;

    move-result-object v1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Handling schedule work for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Li3/c;->f:Ljava/lang/String;

    invoke-virtual {v5, v8, v7}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v6, Li3/i;->e:Lg3/n;

    iget-object v7, v5, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v5

    iget-object v9, v1, Lo3/j;->a:Ljava/lang/String;

    invoke-virtual {v5, v9}, Lo3/r;->m(Ljava/lang/String;)Lo3/q;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "Skipping scheduling "

    if-nez v5, :cond_a

    :try_start_1
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it\'s no longer in the DB"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lf3/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_a
    iget-object v10, v5, Lo3/q;->b:Lf3/E;

    invoke-virtual {v10}, Lf3/E;->a()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "because it is finished."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lf3/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v5}, Lo3/q;->a()J

    move-result-wide v9

    invoke-virtual {v5}, Lo3/q;->c()Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "at "

    iget-object v0, v0, Li3/c;->a:Landroid/content/Context;

    if-nez v5, :cond_c

    :try_start_2
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v1, v9, v10}, Li3/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lo3/j;J)V

    goto :goto_3

    :cond_c
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v8, v3}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v7, v1, v9, v10}, Li3/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lo3/j;J)V

    new-instance v3, Landroid/content/Intent;

    const-class v1, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v6, Li3/i;->b:Lr3/a;

    iget-object v8, v0, Lr3/a;->d:LH4/s;

    new-instance v9, LH/e;

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, v9

    move v1, p2

    move-object/from16 v2, p3

    invoke-direct/range {v0 .. v5}, LH/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;IZ)V

    invoke-virtual {v8, v9}, LH4/s;->execute(Ljava/lang/Runnable;)V

    :goto_3
    invoke-virtual {v7}, LJ2/U;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    goto/16 :goto_d

    :goto_5
    invoke-virtual {v7}, LJ2/U;->endTransaction()V

    throw v0

    :cond_d
    const-string v4, "ACTION_DELAY_MET"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v3, "WorkSpec "

    const-string v4, "Handing delay met for "

    iget-object v8, v0, Li3/c;->c:Ljava/lang/Object;

    monitor-enter v8

    :try_start_3
    invoke-static {p1}, Li3/c;->b(Landroid/content/Intent;)Lo3/j;

    move-result-object v1

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v5

    sget-object v7, Li3/c;->f:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Li3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v3, Li3/g;

    iget-object v4, v0, Li3/c;->a:Landroid/content/Context;

    iget-object v5, v0, Li3/c;->e:Lo3/e;

    invoke-virtual {v5, v1}, Lo3/e;->o(Lo3/j;)Lg3/i;

    move-result-object v5

    invoke-direct {v3, v4, p2, v6, v5}, Li3/g;-><init>(Landroid/content/Context;ILi3/i;Lg3/i;)V

    iget-object v0, v0, Li3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Li3/g;->d()V

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_7

    :cond_e
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is is already being handled for ACTION_DELAY_MET"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    monitor-exit v8

    goto/16 :goto_d

    :goto_7
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_f
    const-string v4, "ACTION_STOP_WORK"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "KEY_WORKSPEC_ID"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    iget-object v8, v0, Li3/c;->e:Lo3/e;

    if-eqz v4, :cond_10

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lo3/j;

    invoke-direct {v4, v2, v1}, Lo3/j;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v4}, Lo3/e;->m(Lo3/j;)Lg3/i;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_10
    invoke-virtual {v8, v2}, Lo3/e;->n(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    :cond_11
    :goto_8
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg3/i;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v4

    const-string v8, "Handing stopWork work for "

    invoke-static {v8, v2}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Li3/c;->f:Ljava/lang/String;

    invoke-virtual {v4, v9, v8}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v6, Li3/i;->j:Lo3/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "workSpecId"

    invoke-static {v3, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v8, -0x200

    invoke-virtual {v4, v3, v8}, Lo3/l;->z0(Lg3/i;I)V

    iget-object v4, v6, Li3/i;->e:Lg3/n;

    iget-object v4, v4, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    sget-object v8, Li3/b;->a:Ljava/lang/String;

    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->e()Lo3/i;

    move-result-object v4

    iget-object v3, v3, Lg3/i;->a:Lo3/j;

    invoke-virtual {v4, v3}, Lo3/i;->d(Lo3/j;)Lo3/g;

    move-result-object v8

    if-eqz v8, :cond_13

    iget v8, v8, Lo3/g;->c:I

    iget-object v9, v0, Li3/c;->a:Landroid/content/Context;

    invoke-static {v9, v3, v8}, Li3/b;->a(Landroid/content/Context;Lo3/j;I)V

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removing SystemIdInfo for workSpecId ("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Li3/b;->a:Ljava/lang/String;

    invoke-virtual {v8, v10, v9}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, v4, Lo3/i;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v8}, LJ2/U;->assertNotSuspendingTransaction()V

    iget-object v4, v4, Lo3/i;->c:Ljava/lang/Object;

    check-cast v4, Lo3/h;

    invoke-virtual {v4}, LJ2/i0;->a()LT2/h;

    move-result-object v9

    iget-object v10, v3, Lo3/j;->a:Ljava/lang/String;

    if-nez v10, :cond_12

    invoke-interface {v9, v5}, LT2/f;->l(I)V

    goto :goto_a

    :cond_12
    invoke-interface {v9, v5, v10}, LT2/f;->U(ILjava/lang/String;)V

    :goto_a
    iget v10, v3, Lo3/j;->b:I

    int-to-long v10, v10

    const/4 v12, 0x2

    invoke-interface {v9, v12, v10, v11}, LT2/f;->i(IJ)V

    invoke-virtual {v8}, LJ2/U;->beginTransaction()V

    :try_start_4
    invoke-interface {v9}, LT2/h;->u()I

    invoke-virtual {v8}, LJ2/U;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-virtual {v8}, LJ2/U;->endTransaction()V

    invoke-virtual {v4, v9}, LJ2/i0;->r(LT2/h;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    invoke-virtual {v8}, LJ2/U;->endTransaction()V

    invoke-virtual {v4, v9}, LJ2/i0;->r(LT2/h;)V

    throw v0

    :cond_13
    :goto_b
    invoke-virtual {v6, v3, v7}, Li3/i;->c(Lo3/j;Z)V

    goto/16 :goto_9

    :cond_14
    const-string v4, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static {p1}, Li3/c;->b(Landroid/content/Intent;)Lo3/j;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Handling onExecutionCompleted "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Li3/c;->f:Ljava/lang/String;

    invoke-virtual {v5, v2, v1}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Li3/c;->c(Lo3/j;Z)V

    goto :goto_d

    :cond_15
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v2, Li3/c;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ignoring intent "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lf3/u;->g(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    :goto_c
    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Li3/c;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invalid request for "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lf3/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    :goto_d
    return-void
.end method

.method public final c(Lo3/j;Z)V
    .locals 2

    iget-object v0, p0, Li3/c;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li3/c;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3/g;

    iget-object p0, p0, Li3/c;->e:Lo3/e;

    invoke-virtual {p0, p1}, Lo3/e;->m(Lo3/j;)Lg3/i;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Li3/g;->f(Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
