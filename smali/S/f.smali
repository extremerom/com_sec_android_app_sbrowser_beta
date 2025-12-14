.class public final LS/f;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public a:Ltb/t;

.field public b:I

.field public final synthetic c:F

.field public final synthetic d:LS/g;

.field public final synthetic e:LS/g0;


# direct methods
.method public constructor <init>(FLS/g;LS/g0;Lib/c;)V
    .locals 0

    iput p1, p0, LS/f;->c:F

    iput-object p2, p0, LS/f;->d:LS/g;

    iput-object p3, p0, LS/f;->e:LS/g0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 2

    new-instance p1, LS/f;

    iget-object v0, p0, LS/f;->e:LS/g0;

    iget v1, p0, LS/f;->c:F

    iget-object p0, p0, LS/f;->d:LS/g;

    invoke-direct {p1, v1, p0, v0, p2}, LS/f;-><init>(FLS/g;LS/g0;Lib/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, LS/f;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, LS/f;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, LS/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v5, p0

    sget-object v6, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, v5, LS/f;->b:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    iget-object v0, v5, LS/f;->a:Ltb/t;

    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget v0, v5, LS/f;->c:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    new-instance v13, Ltb/t;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    iput v0, v13, Ltb/t;->a:F

    new-instance v8, Ltb/t;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    new-instance v2, LQ/i;

    sget-object v3, LQ/H;->a:LA7/h;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    new-instance v4, LQ/j;

    invoke-direct {v4, v0}, LQ/j;-><init>(F)V

    const-wide/high16 v20, -0x8000000000000000L

    const/16 v22, 0x0

    const-wide/high16 v18, -0x8000000000000000L

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v17, v4

    invoke-direct/range {v14 .. v22}, LQ/i;-><init>(LA7/h;Ljava/lang/Object;LQ/m;JJZ)V

    iget-object v11, v5, LS/f;->d:LS/g;

    iget-object v0, v11, LS/g;->a:LQ/q;

    new-instance v4, LQ/a;

    iget-object v9, v5, LS/f;->e:LS/g0;

    const/4 v12, 0x2

    move-object v7, v4

    move-object v10, v13

    invoke-direct/range {v7 .. v12}, LQ/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v13, v5, LS/f;->a:Ltb/t;

    iput v1, v5, LS/f;->b:I

    iget-object v1, v2, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v7, v2, LQ/i;->c:LQ/m;

    new-instance v8, LQ/p;

    invoke-direct {v8, v0, v3, v1, v7}, LQ/p;-><init>(LQ/q;LA7/h;Ljava/lang/Object;LQ/m;)V

    const-wide/high16 v9, -0x8000000000000000L

    move-object v0, v2

    move-object v1, v8

    move-wide v2, v9

    move-object/from16 v5, p0

    invoke-static/range {v0 .. v5}, LG5/x;->e(LQ/i;LQ/e;JLsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v6, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Ldb/r;->a:Ldb/r;

    :goto_0
    if-ne v0, v6, :cond_3

    return-object v6

    :cond_3
    move-object v0, v13

    :goto_1
    iget v0, v0, Ltb/t;->a:F

    :cond_4
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, v0}, Ljava/lang/Float;-><init>(F)V

    return-object v1
.end method
