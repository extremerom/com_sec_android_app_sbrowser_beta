.class public final LS/Z;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LS/I;

.field public final synthetic b:LV/J;

.field public final synthetic c:Z

.field public final synthetic d:LP7/c;

.field public final synthetic e:LS/g;

.field public final synthetic f:LR/z;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(LS/I;LV/J;ZLP7/c;LS/g;LR/z;Z)V
    .locals 0

    iput-object p1, p0, LS/Z;->a:LS/I;

    iput-object p2, p0, LS/Z;->b:LV/J;

    iput-boolean p3, p0, LS/Z;->c:Z

    iput-object p4, p0, LS/Z;->d:LP7/c;

    iput-object p5, p0, LS/Z;->e:LS/g;

    iput-object p6, p0, LS/Z;->f:LR/z;

    iput-boolean p7, p0, LS/Z;->g:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move-object/from16 v2, p1

    check-cast v2, Lm0/m;

    move-object/from16 v3, p2

    check-cast v3, La0/m;

    move-object/from16 v4, p3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    const-string v4, "$this$composed"

    invoke-static {v2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, La0/q;

    const v2, -0x258a750f

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    const v2, 0x2e20b340

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    const v2, -0x1d58f75c

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, La0/l;->a:La0/V;

    if-ne v4, v5, :cond_0

    invoke-static {v3}, La0/d;->w(La0/m;)LUc/e;

    move-result-object v4

    new-instance v6, La0/y;

    invoke-direct {v6, v4}, La0/y;-><init>(LUc/e;)V

    invoke-virtual {v3, v6}, La0/q;->a0(Ljava/lang/Object;)V

    move-object v4, v6

    :cond_0
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    check-cast v4, La0/y;

    iget-object v4, v4, La0/y;->a:LUc/e;

    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    iget-boolean v6, v0, LS/Z;->c:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v15, v0, LS/Z;->a:LS/I;

    iget-object v8, v0, LS/Z;->b:LV/J;

    filled-new-array {v4, v15, v8, v7}, [Ljava/lang/Object;

    move-result-object v7

    const v9, -0x21de6e89

    invoke-virtual {v3, v9}, La0/q;->R(I)V

    move v9, v1

    move v10, v9

    :goto_0
    const/4 v11, 0x4

    if-ge v9, v11, :cond_1

    aget-object v11, v7, v9

    invoke-virtual {v3, v11}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v7

    if-nez v10, :cond_2

    if-ne v7, v5, :cond_3

    :cond_2
    new-instance v7, LS/e;

    invoke-direct {v7, v4, v15, v8, v6}, LS/e;-><init>(LUc/e;LS/I;LV/J;Z)V

    invoke-virtual {v3, v7}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    check-cast v7, LS/e;

    sget-object v4, Lm0/j;->a:Lm0/j;

    sget-object v6, LR/n;->a:Landroidx/compose/ui/platform/m;

    invoke-static {v6}, Landroidx/compose/ui/focus/a;->a(Lm0/m;)Lm0/m;

    move-result-object v6

    sget-object v8, Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;->a:Landroidx/compose/ui/focus/FocusTargetNode$FocusTargetElement;

    invoke-interface {v6, v8}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v6

    iget-object v7, v7, LS/e;->m:Lm0/m;

    invoke-interface {v6, v7}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v6

    const v7, -0x77ed10cc

    invoke-virtual {v3, v7}, La0/q;->R(I)V

    const v7, -0x67208c29

    invoke-virtual {v3, v7}, La0/q;->R(I)V

    iget-object v7, v0, LS/Z;->e:LS/g;

    if-nez v7, :cond_4

    invoke-static {v3}, LG5/i2;->e(La0/m;)LS/g;

    move-result-object v7

    :cond_4
    move-object v13, v7

    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_5

    new-instance v7, Lw0/d;

    invoke-direct {v7}, Lw0/d;-><init>()V

    sget-object v8, La0/V;->f:La0/V;

    invoke-static {v7, v8}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v7

    invoke-virtual {v3, v7}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    check-cast v7, La0/a0;

    new-instance v14, LS/k0;

    iget-object v12, v0, LS/Z;->f:LR/z;

    iget-boolean v10, v0, LS/Z;->c:Z

    iget-object v11, v0, LS/Z;->b:LV/J;

    move-object v8, v14

    move-object v9, v15

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v17, v12

    move-object/from16 v12, v16

    move-object v2, v14

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, LS/k0;-><init>(LS/I;ZLa0/a0;LV/J;LS/g;LR/z;)V

    invoke-static {v2, v3}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v2

    iget-boolean v14, v0, LS/Z;->g:Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const v9, 0x44faf204

    invoke-virtual {v3, v9}, La0/q;->R(I)V

    invoke-virtual {v3, v8}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_6

    if-ne v10, v5, :cond_7

    :cond_6
    new-instance v10, LS/b0;

    invoke-direct {v10, v2, v14}, LS/b0;-><init>(La0/a0;Z)V

    invoke-virtual {v3, v10}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    move-object v13, v10

    check-cast v13, Lw0/a;

    const v8, -0x1d58f75c

    invoke-virtual {v3, v8}, La0/q;->R(I)V

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_8

    new-instance v8, LS/K;

    invoke-direct {v8, v2}, LS/K;-><init>(La0/a0;)V

    invoke-virtual {v3, v8}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    move-object v12, v8

    check-cast v12, LS/K;

    const v8, -0x5887770a

    invoke-virtual {v3, v8}, La0/q;->R(I)V

    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    sget-object v20, LS/a;->a:LS/a;

    invoke-virtual {v3, v9}, La0/q;->R(I)V

    invoke-virtual {v3, v2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_9

    if-ne v9, v5, :cond_a

    :cond_9
    new-instance v9, LS/W;

    invoke-direct {v9, v2, v1}, LS/W;-><init>(La0/a0;I)V

    invoke-virtual {v3, v9}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    move-object v10, v9

    check-cast v10, Lsb/a;

    const v8, 0x1e7b2b64

    invoke-virtual {v3, v8}, La0/q;->R(I)V

    invoke-virtual {v3, v7}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    invoke-virtual {v3, v2}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v8, v9

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v9

    const/4 v11, 0x0

    if-nez v8, :cond_b

    if-ne v9, v5, :cond_c

    :cond_b
    new-instance v9, LS/Y;

    invoke-direct {v9, v7, v2, v11}, LS/Y;-><init>(La0/a0;La0/a0;Lib/c;)V

    invoke-virtual {v3, v9}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {v3, v1}, La0/q;->p(Z)V

    move-object v5, v9

    check-cast v5, Lsb/o;

    new-instance v9, LS/w;

    const/4 v8, 0x3

    invoke-direct {v9, v8, v11, v1}, LS/w;-><init>(ILib/c;I)V

    const-string v8, "<this>"

    invoke-static {v6, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "state"

    invoke-static {v12, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "startDragImmediately"

    invoke-static {v10, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "onDragStopped"

    invoke-static {v5, v8}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, LS/D;

    const/16 v16, 0x0

    iget-object v11, v0, LS/Z;->d:LP7/c;

    move-object/from16 p2, v8

    move-object/from16 v17, v9

    move-object v9, v11

    const/4 v1, 0x0

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move-object v12, v5

    move-object v5, v13

    move-object/from16 v13, v17

    move/from16 v17, v14

    move-object v14, v15

    move/from16 v15, v17

    invoke-direct/range {v8 .. v16}, LS/D;-><init>(LP7/c;Lsb/a;Lsb/o;Lsb/o;LS/K;LS/I;ZZ)V

    new-instance v8, Lm0/g;

    move-object/from16 v9, p2

    invoke-direct {v8, v9}, Lm0/g;-><init>(Lsb/o;)V

    invoke-interface {v6, v8}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v6

    new-instance v8, LS/U;

    invoke-direct {v8, v2, v1}, LS/U;-><init>(La0/a0;Lib/c;)V

    sget-object v1, Lx0/i;->a:Lx0/a;

    new-instance v1, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/16 v21, 0x0

    const/16 v23, 0x4

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move-object/from16 v22, v8

    invoke-direct/range {v18 .. v23}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;LS/a;[Ljava/lang/Object;Lsb/n;I)V

    invoke-interface {v6, v1}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v1

    invoke-interface {v7}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw0/d;

    invoke-static {v1, v5, v2}, Landroidx/compose/ui/input/nestedscroll/a;->a(Lm0/m;Lw0/a;Lw0/d;)Lm0/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, La0/q;->p(Z)V

    iget-boolean v0, v0, LS/Z;->g:Z

    if-eqz v0, :cond_d

    sget-object v4, LS/H;->a:LS/H;

    :cond_d
    invoke-interface {v1, v4}, Lm0/m;->g(Lm0/m;)Lm0/m;

    move-result-object v0

    invoke-virtual {v3, v2}, La0/q;->p(Z)V

    return-object v0
.end method
