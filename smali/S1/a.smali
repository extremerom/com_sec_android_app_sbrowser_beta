.class public abstract LS1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J

.field public static final b:Ljava/util/List;

.field public static final c:LJ1/b;

.field public static final d:LJ1/b;

.field public static final e:LJ1/b;


# direct methods
.method static constructor <clinit>()V
    .locals 63

    sget-wide v0, Ls0/b;->e:J

    sput-wide v0, LS1/a;->a:J

    const v0, 0x1affffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x4dffffff    # 5.3687088E8f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, -0x7f000001

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lfb/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, LS1/a;->b:Ljava/util/List;

    const-wide v1, 0x99fcfcffL

    invoke-static {v1, v2}, Ls0/e;->c(J)J

    move-result-wide v15

    const-wide v1, 0xff010102L

    invoke-static {v1, v2}, Ls0/e;->c(J)J

    move-result-wide v17

    const-wide v3, 0x80f2f2f2L

    invoke-static {v3, v4}, Ls0/e;->c(J)J

    move-result-wide v19

    const-wide v3, 0xcc000000L

    invoke-static {v3, v4}, Ls0/e;->c(J)J

    move-result-wide v21

    const-wide v3, 0x99000000L

    invoke-static {v3, v4}, Ls0/e;->c(J)J

    move-result-wide v23

    const-wide v30, 0x99010102L

    invoke-static/range {v30 .. v31}, Ls0/e;->c(J)J

    move-result-wide v25

    const-wide v32, 0xfffafaffL

    invoke-static/range {v32 .. v33}, Ls0/e;->c(J)J

    move-result-wide v27

    const-wide v34, 0xff387affL

    invoke-static/range {v34 .. v35}, Ls0/e;->c(J)J

    move-result-wide v3

    invoke-static/range {v32 .. v33}, Ls0/e;->c(J)J

    move-result-wide v5

    const/high16 v7, 0x19000000

    invoke-static {v7}, Ls0/e;->b(I)J

    move-result-wide v7

    invoke-static {v1, v2}, Ls0/e;->c(J)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const v29, 0x1fca1ff0

    invoke-static/range {v3 .. v29}, LS1/a;->a(JJJJJJJJJJJJJI)LZ/a;

    move-result-object v3

    invoke-static/range {v30 .. v31}, Ls0/e;->c(J)J

    move-result-wide v48

    invoke-static/range {v32 .. v33}, Ls0/e;->c(J)J

    move-result-wide v50

    const-wide v4, 0x80262626L

    invoke-static {v4, v5}, Ls0/e;->c(J)J

    move-result-wide v52

    const-wide v4, 0xccffffffL

    invoke-static {v4, v5}, Ls0/e;->c(J)J

    move-result-wide v54

    const-wide v6, 0x99ffffffL

    invoke-static {v6, v7}, Ls0/e;->c(J)J

    move-result-wide v56

    const-wide v6, 0x99fafaffL

    invoke-static {v6, v7}, Ls0/e;->c(J)J

    move-result-wide v58

    invoke-static {v1, v2}, Ls0/e;->c(J)J

    move-result-wide v60

    invoke-static/range {v34 .. v35}, Ls0/e;->c(J)J

    move-result-wide v36

    invoke-static/range {v32 .. v33}, Ls0/e;->c(J)J

    move-result-wide v38

    const v1, 0x19ffffff

    invoke-static {v1}, Ls0/e;->b(I)J

    move-result-wide v40

    invoke-static/range {v32 .. v33}, Ls0/e;->c(J)J

    move-result-wide v42

    const-wide/16 v44, 0x0

    const-wide/16 v46, 0x0

    const v62, 0x1fca1ff0

    invoke-static/range {v36 .. v62}, LS1/a;->a(JJJJJJJJJJJJJI)LZ/a;

    move-result-object v1

    iget-object v2, v3, LZ/a;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v10, LJ1/a;

    invoke-direct {v10, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v11, LJ1/a;

    invoke-direct {v11, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v12, LJ1/a;

    invoke-direct {v12, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v13, LJ1/a;

    invoke-direct {v13, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v14, LJ1/a;

    invoke-direct {v14, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v15, LJ1/a;

    invoke-direct {v15, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v2, v3, LZ/a;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v6, v2, Ls0/b;->a:J

    iget-object v2, v1, LZ/a;->h:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls0/b;

    iget-wide v8, v2, Ls0/b;->a:J

    new-instance v2, LJ1/a;

    invoke-direct {v2, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v6, v3, LZ/a;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls0/b;

    iget-wide v6, v6, Ls0/b;->a:J

    iget-object v8, v1, LZ/a;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v8}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ls0/b;

    iget-wide v8, v8, Ls0/b;->a:J

    new-instance v4, LJ1/a;

    invoke-direct {v4, v6, v7, v8, v9}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->j:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    new-instance v9, LJ1/a;

    invoke-direct {v9, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->l:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->l:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v19, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->m:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->m:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v20, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->w:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->w:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v21, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v22, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->x:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v23, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->z:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->z:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v24, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v25, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v26, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->p:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v27, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v28, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v29, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->s:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v30, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->A:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->A:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v31, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->v:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->v:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v32, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v5, v3, LZ/a;->u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls0/b;

    iget-wide v5, v5, Ls0/b;->a:J

    iget-object v7, v1, LZ/a;->u:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls0/b;

    iget-wide v7, v7, Ls0/b;->a:J

    move-object/from16 v33, v0

    new-instance v0, LJ1/a;

    invoke-direct {v0, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    iget-object v3, v3, LZ/a;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ls0/b;

    iget-wide v5, v3, Ls0/b;->a:J

    iget-object v1, v1, LZ/a;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls0/b;

    iget-wide v7, v1, Ls0/b;->a:J

    new-instance v1, LJ1/a;

    invoke-direct {v1, v5, v6, v7, v8}, LJ1/a;-><init>(JJ)V

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object/from16 v34, v0

    move-object/from16 v35, v1

    invoke-static/range {v10 .. v35}, LG5/x3;->c(Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;Lf2/a;)LJ1/b;

    move-result-object v0

    sput-object v0, LS1/a;->c:LJ1/b;

    const v0, 0xffffff

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v13

    const-wide v28, 0xffffffffL

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v15

    const v0, 0x26ffffff

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v17

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v19

    const v0, 0x1affffff

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v23

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v25

    const v1, 0x33ffffff

    invoke-static {v1}, Ls0/e;->b(I)J

    move-result-wide v1

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v3

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v5

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v7

    const-wide/16 v11, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v9, 0x0

    const v27, 0x1fce1ff0

    invoke-static/range {v1 .. v27}, LS1/a;->a(JJJJJJJJJJJJJI)LZ/a;

    move-result-object v0

    invoke-static {v0}, LG5/Y3;->a(LZ/a;)LJ1/b;

    move-result-object v0

    sput-object v0, LS1/a;->d:LJ1/b;

    const v0, 0x40ffffff    # 7.9999995f

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v13

    invoke-static {v0}, Ls0/e;->b(I)J

    move-result-wide v1

    invoke-static/range {v28 .. v29}, Ls0/e;->c(J)J

    move-result-wide v3

    const-wide v5, 0xccffffffL

    invoke-static {v5, v6}, Ls0/e;->c(J)J

    move-result-wide v9

    const-wide v5, 0xb3ffffffL

    invoke-static {v5, v6}, Ls0/e;->c(J)J

    move-result-wide v11

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const v27, 0x1fffdbbc

    invoke-static/range {v1 .. v27}, LS1/a;->a(JJJJJJJJJJJJJI)LZ/a;

    move-result-object v0

    invoke-static {v0}, LG5/Y3;->a(LZ/a;)LJ1/b;

    move-result-object v0

    sput-object v0, LS1/a;->e:LJ1/b;

    return-void
.end method

.method public static a(JJJJJJJJJJJJJI)LZ/a;
    .locals 61

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x1

    sget-wide v59, LS1/a;->a:J

    if-eqz v1, :cond_0

    move-wide/from16 v3, v59

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p0

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    move-wide/from16 v5, v59

    goto :goto_1

    :cond_1
    move-wide/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move-wide/from16 v7, v59

    goto :goto_2

    :cond_2
    move-wide/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move-wide/from16 v9, v59

    goto :goto_3

    :cond_3
    move-wide/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-wide/from16 v15, v59

    goto :goto_4

    :cond_4
    move-wide/from16 v15, p8

    :goto_4
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_5

    move-wide/from16 v23, v59

    goto :goto_5

    :cond_5
    move-wide/from16 v23, p10

    :goto_5
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_6

    move-wide/from16 v31, v59

    goto :goto_6

    :cond_6
    move-wide/from16 v31, p14

    :goto_6
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_7

    move-wide/from16 v33, v59

    goto :goto_7

    :cond_7
    move-wide/from16 v33, p16

    :goto_7
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_8

    move-wide/from16 v35, v59

    goto :goto_8

    :cond_8
    move-wide/from16 v35, p18

    :goto_8
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_9

    move-wide/from16 v39, v59

    goto :goto_9

    :cond_9
    move-wide/from16 v39, p20

    :goto_9
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_a

    move-wide/from16 v43, v59

    goto :goto_a

    :cond_a
    move-wide/from16 v43, p22

    :goto_a
    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    move-wide/from16 v45, v59

    goto :goto_b

    :cond_b
    move-wide/from16 v45, p24

    :goto_b
    new-instance v0, LZ/a;

    move-object v2, v0

    move-wide/from16 v11, v59

    move-wide/from16 v13, v59

    move-wide/from16 v17, v59

    move-wide/from16 v19, v59

    move-wide/from16 v21, v59

    move-wide/from16 v25, v59

    move-wide/from16 v27, v59

    move-wide/from16 v29, p12

    move-wide/from16 v37, v59

    move-wide/from16 v41, v59

    move-wide/from16 v47, v59

    move-wide/from16 v49, v59

    move-wide/from16 v51, v59

    move-wide/from16 v53, v59

    move-wide/from16 v55, v59

    move-wide/from16 v57, v59

    invoke-direct/range {v2 .. v60}, LZ/a;-><init>(JJJJJJJJJJJJJJJJJJJJJJJJJJJJJ)V

    return-object v0
.end method
