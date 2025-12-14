.class public final LS/D;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# instance fields
.field public final synthetic a:LP7/c;

.field public final synthetic b:Lsb/a;

.field public final synthetic c:Lsb/o;

.field public final synthetic d:Lsb/o;

.field public final synthetic e:LS/K;

.field public final synthetic f:LS/I;

.field public final synthetic g:Z

.field public final synthetic h:Z


# direct methods
.method public constructor <init>(LP7/c;Lsb/a;Lsb/o;Lsb/o;LS/K;LS/I;ZZ)V
    .locals 0

    iput-object p1, p0, LS/D;->a:LP7/c;

    iput-object p2, p0, LS/D;->b:Lsb/a;

    iput-object p3, p0, LS/D;->c:Lsb/o;

    iput-object p4, p0, LS/D;->d:Lsb/o;

    iput-object p5, p0, LS/D;->e:LS/K;

    iput-object p6, p0, LS/D;->f:LS/I;

    iput-boolean p7, p0, LS/D;->g:Z

    iput-boolean p8, p0, LS/D;->h:Z

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x6

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

    const v2, 0x239873ee

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    const v2, -0x1d58f75c

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, La0/l;->a:La0/V;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    sget-object v4, La0/V;->f:La0/V;

    invoke-static {v6, v4}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v4

    invoke-virtual {v3, v4}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, La0/q;->p(Z)V

    check-cast v4, La0/a0;

    const v8, 0x1e7b2b64

    invoke-virtual {v3, v8}, La0/q;->R(I)V

    invoke-virtual {v3, v4}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v0, LS/D;->a:LP7/c;

    invoke-virtual {v3, v9}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v8, v10

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_1

    if-ne v10, v5, :cond_2

    :cond_1
    new-instance v10, LC1/j;

    invoke-direct {v10, v1, v4, v9}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v10}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v3, v7}, La0/q;->p(Z)V

    check-cast v10, Lsb/k;

    invoke-static {v9, v10, v3}, La0/d;->c(Ljava/lang/Object;Lsb/k;La0/m;)V

    invoke-virtual {v3, v2}, La0/q;->R(I)V

    invoke-virtual {v3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_3

    const v2, 0x7fffffff

    invoke-static {v2, v1, v6}, LG5/r;->a(IILPc/a;)LPc/i;

    move-result-object v2

    invoke-virtual {v3, v2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3, v7}, La0/q;->p(Z)V

    move-object v1, v2

    check-cast v1, LPc/m;

    iget-object v2, v0, LS/D;->b:Lsb/a;

    invoke-static {v2, v3}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v2

    sget-object v5, LS/V;->a:LS/V;

    invoke-static {v5, v3}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v5

    new-instance v6, LS/t;

    iget-object v8, v0, LS/D;->c:Lsb/o;

    iget-object v10, v0, LS/D;->d:Lsb/o;

    invoke-direct {v6, v8, v10, v4, v9}, LS/t;-><init>(Lsb/o;Lsb/o;La0/a0;LP7/c;)V

    invoke-static {v6, v3}, La0/d;->I(Ljava/lang/Object;La0/m;)La0/a0;

    move-result-object v13

    new-instance v4, LS/z;

    iget-object v6, v0, LS/D;->e:LS/K;

    iget-object v8, v0, LS/D;->f:LS/I;

    const/4 v15, 0x0

    move-object v10, v4

    move-object v11, v1

    move-object v12, v6

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, LS/z;-><init>(LPc/m;LS/K;La0/a0;LS/I;Lib/c;)V

    invoke-static {v3, v6, v4}, La0/d;->d(La0/m;Ljava/lang/Object;Lsb/n;)V

    iget-boolean v4, v0, LS/D;->g:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v6, v0, LS/D;->h:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v8, v4, v6}, [Ljava/lang/Object;

    move-result-object v4

    new-instance v6, LS/C;

    iget-boolean v11, v0, LS/D;->g:Z

    iget-boolean v0, v0, LS/D;->h:Z

    const/16 v17, 0x0

    move-object v10, v6

    move-object v12, v5

    move-object v13, v2

    move-object v15, v1

    move/from16 v16, v0

    invoke-direct/range {v10 .. v17}, LS/C;-><init>(ZLa0/a0;La0/a0;LS/I;LPc/m;ZLib/c;)V

    sget-object v0, Lx0/i;->a:Lx0/a;

    new-instance v0, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x3

    move-object v9, v0

    move-object v12, v4

    move-object v13, v6

    invoke-direct/range {v9 .. v14}, Landroidx/compose/ui/input/pointer/SuspendPointerInputElement;-><init>(Ljava/lang/Object;LS/a;[Ljava/lang/Object;Lsb/n;I)V

    invoke-virtual {v3, v7}, La0/q;->p(Z)V

    return-object v0
.end method
