.class public final LS/o0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:LS/p0;

.field public final synthetic b:F

.field public final synthetic c:Lsb/k;


# direct methods
.method public constructor <init>(LS/p0;FLsb/k;)V
    .locals 0

    iput-object p1, p0, LS/o0;->a:LS/p0;

    iput p2, p0, LS/o0;->b:F

    iput-object p3, p0, LS/o0;->c:Lsb/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    iget-object p1, p0, LS/o0;->a:LS/p0;

    iget-wide v2, p1, LS/p0;->a:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p1, LS/p0;->a:J

    :cond_0
    new-instance v2, LQ/j;

    iget v3, p1, LS/p0;->d:F

    invoke-direct {v2, v3}, LQ/j;-><init>(F)V

    const/4 v4, 0x0

    iget v5, p0, LS/o0;->b:F

    cmpg-float v4, v5, v4

    if-nez v4, :cond_1

    sget-object v4, LS/p0;->f:LJ7/c;

    new-instance v5, LQ/j;

    invoke-direct {v5, v3}, LQ/j;-><init>(F)V

    sget-object v3, LS/p0;->e:LQ/j;

    iget-object v6, p1, LS/p0;->b:LQ/j;

    invoke-virtual {v4, v5, v3, v6}, LJ7/c;->n(LQ/m;LQ/m;LQ/m;)J

    move-result-wide v3

    :goto_0
    move-wide v9, v3

    goto :goto_1

    :cond_1
    iget-wide v3, p1, LS/p0;->a:J

    sub-long v3, v0, v3

    long-to-float v3, v3

    div-float/2addr v3, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    goto :goto_0

    :goto_1
    sget-object v11, LS/p0;->f:LJ7/c;

    sget-object v12, LS/p0;->e:LQ/j;

    iget-object v8, p1, LS/p0;->b:LQ/j;

    move-object v3, v11

    move-wide v4, v9

    move-object v6, v2

    move-object v7, v12

    invoke-virtual/range {v3 .. v8}, LJ7/c;->e(JLQ/m;LQ/m;LQ/m;)LQ/m;

    move-result-object v3

    check-cast v3, LQ/j;

    iget v13, v3, LQ/j;->a:F

    iget-object v8, p1, LS/p0;->b:LQ/j;

    move-object v3, v11

    move-wide v4, v9

    move-object v6, v2

    move-object v7, v12

    invoke-virtual/range {v3 .. v8}, LJ7/c;->o(JLQ/m;LQ/m;LQ/m;)LQ/m;

    move-result-object v2

    check-cast v2, LQ/j;

    iput-object v2, p1, LS/p0;->b:LQ/j;

    iput-wide v0, p1, LS/p0;->a:J

    iget v0, p1, LS/p0;->d:F

    sub-float/2addr v0, v13

    iput v13, p1, LS/p0;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, LS/o0;->c:Lsb/k;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
