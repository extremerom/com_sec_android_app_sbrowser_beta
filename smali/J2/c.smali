.class public final LJ2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:LT2/d;

.field public final d:LJ2/S;

.field public final e:Ljava/util/List;

.field public final f:Z

.field public final g:LJ2/Q;

.field public final h:Ljava/util/concurrent/Executor;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Landroid/content/Intent;

.field public final k:Z

.field public final l:Z

.field public final m:Ljava/util/Set;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/io/File;

.field public final p:Ljava/util/concurrent/Callable;

.field public final q:Ljava/util/List;

.field public final r:Ljava/util/List;

.field public final s:Z

.field public final t:LS2/b;

.field public final u:Lib/h;

.field public v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;LT2/d;LJ2/S;Ljava/util/List;ZLJ2/Q;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Landroid/content/Intent;ZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;Ljava/util/List;ZLS2/b;Lib/h;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    const-string v8, "context"

    invoke-static {p1, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "migrationContainer"

    invoke-static {p4, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "journalMode"

    invoke-static {v3, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "queryExecutor"

    invoke-static {v4, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "transactionExecutor"

    invoke-static {v5, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "typeConverters"

    invoke-static {v6, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "autoMigrationSpecs"

    invoke-static {v7, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, LJ2/c;->a:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, LJ2/c;->b:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, LJ2/c;->c:LT2/d;

    iput-object v2, v0, LJ2/c;->d:LJ2/S;

    move-object v1, p5

    iput-object v1, v0, LJ2/c;->e:Ljava/util/List;

    move v1, p6

    iput-boolean v1, v0, LJ2/c;->f:Z

    iput-object v3, v0, LJ2/c;->g:LJ2/Q;

    iput-object v4, v0, LJ2/c;->h:Ljava/util/concurrent/Executor;

    iput-object v5, v0, LJ2/c;->i:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p10

    iput-object v1, v0, LJ2/c;->j:Landroid/content/Intent;

    move/from16 v1, p11

    iput-boolean v1, v0, LJ2/c;->k:Z

    move/from16 v1, p12

    iput-boolean v1, v0, LJ2/c;->l:Z

    move-object/from16 v1, p13

    iput-object v1, v0, LJ2/c;->m:Ljava/util/Set;

    move-object/from16 v1, p14

    iput-object v1, v0, LJ2/c;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, LJ2/c;->o:Ljava/io/File;

    move-object/from16 v1, p16

    iput-object v1, v0, LJ2/c;->p:Ljava/util/concurrent/Callable;

    iput-object v6, v0, LJ2/c;->q:Ljava/util/List;

    iput-object v7, v0, LJ2/c;->r:Ljava/util/List;

    move/from16 v1, p19

    iput-boolean v1, v0, LJ2/c;->s:Z

    move-object/from16 v1, p20

    iput-object v1, v0, LJ2/c;->t:LS2/b;

    move-object/from16 v1, p21

    iput-object v1, v0, LJ2/c;->u:Lib/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, LJ2/c;->v:Z

    return-void
.end method
