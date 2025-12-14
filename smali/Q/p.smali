.class public final LQ/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/e;


# instance fields
.field public final a:Lcom/google/firebase/messaging/q;

.field public final b:LA7/h;

.field public final c:Ljava/lang/Object;

.field public final d:LQ/m;

.field public final e:LQ/m;

.field public final f:LQ/m;

.field public final g:Ljava/lang/Object;

.field public final h:J


# direct methods
.method public constructor <init>(LQ/q;LA7/h;Ljava/lang/Object;LQ/m;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "animationSpec"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeConverter"

    invoke-static {v2, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "initialVelocityVector"

    invoke-static {v4, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/google/firebase/messaging/q;

    iget-object v1, v1, LQ/q;->a:LG5/J2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v1, v5, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    iput-object v2, v0, LQ/p;->b:LA7/h;

    iput-object v3, v0, LQ/p;->c:Ljava/lang/Object;

    iget-object v1, v2, LA7/h;->a:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    invoke-interface {v1, v3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ/m;

    iput-object v1, v0, LQ/p;->d:LQ/m;

    invoke-static/range {p4 .. p4}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object v3

    iput-object v3, v0, LQ/p;->e:LQ/m;

    const-string v3, "initialValue"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v5, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v6, LQ/m;

    if-nez v6, :cond_0

    invoke-virtual {v1}, LQ/m;->c()LQ/m;

    move-result-object v6

    iput-object v6, v5, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    :cond_0
    iget-object v6, v5, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v6, LQ/m;

    const-string v8, "targetVector"

    if-eqz v6, :cond_8

    invoke-virtual {v6}, LQ/m;->b()I

    move-result v6

    const/4 v10, 0x0

    :goto_0
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ge v10, v6, :cond_2

    iget-object v13, v5, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v13, LQ/m;

    if-eqz v13, :cond_1

    invoke-virtual {v1, v10}, LQ/m;->a(I)F

    move-result v14

    invoke-virtual {v4, v10}, LQ/m;->a(I)F

    move-result v15

    iget-object v9, v5, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v9, LG5/J2;

    iget-object v9, v9, LG5/J2;->a:Ljava/lang/Object;

    check-cast v9, LP/d;

    invoke-virtual {v9, v15}, LP/d;->b(F)D

    move-result-wide v16

    sget v7, LP/e;->a:F

    move/from16 v18, v6

    float-to-double v6, v7

    sub-double v11, v6, v11

    move-object/from16 v19, v1

    iget v1, v9, LP/d;->a:F

    iget v9, v9, LP/d;->b:F

    mul-float/2addr v1, v9

    move-object v9, v3

    float-to-double v3, v1

    div-double/2addr v6, v11

    mul-double v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v1, v6

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v3

    mul-float/2addr v3, v1

    add-float/2addr v3, v14

    invoke-virtual {v13, v3, v10}, LQ/m;->e(FI)V

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v4, p4

    move-object v3, v9

    move/from16 v6, v18

    move-object/from16 v1, v19

    goto :goto_0

    :cond_1
    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_2
    move-object v9, v3

    iget-object v1, v5, Lcom/google/firebase/messaging/q;->d:Ljava/lang/Object;

    check-cast v1, LQ/m;

    if-eqz v1, :cond_7

    iget-object v2, v2, LA7/h;->b:Ljava/lang/Object;

    check-cast v2, Ltb/m;

    invoke-interface {v2, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, LQ/p;->g:Ljava/lang/Object;

    iget-object v1, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    iget-object v2, v0, LQ/p;->d:LQ/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v3, LQ/m;

    if-nez v3, :cond_3

    invoke-virtual {v2}, LQ/m;->c()LQ/m;

    move-result-object v2

    iput-object v2, v1, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    :cond_3
    iget-object v2, v1, Lcom/google/firebase/messaging/q;->c:Ljava/lang/Object;

    check-cast v2, LQ/m;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, LQ/m;->b()I

    move-result v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, LQ/m;->a(I)F

    move-result v7

    iget-object v8, v1, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v8, LG5/J2;

    iget-object v8, v8, LG5/J2;->a:Ljava/lang/Object;

    check-cast v8, LP/d;

    invoke-virtual {v8, v7}, LP/d;->b(F)D

    move-result-wide v7

    sget v9, LP/e;->a:F

    float-to-double v9, v9

    sub-double/2addr v9, v11

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->exp(D)D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    double-to-long v7, v7

    const-wide/32 v9, 0xf4240

    mul-long/2addr v7, v9

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v6, p4

    iput-wide v3, v0, LQ/p;->h:J

    iget-object v1, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    iget-object v2, v0, LQ/p;->d:LQ/m;

    invoke-virtual {v1, v3, v4, v2, v6}, Lcom/google/firebase/messaging/q;->g(JLQ/m;LQ/m;)LQ/m;

    move-result-object v1

    invoke-static {v1}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object v1

    iput-object v1, v0, LQ/p;->f:LQ/m;

    invoke-virtual {v1}, LQ/m;->b()I

    move-result v1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v1, :cond_5

    iget-object v2, v0, LQ/p;->f:LQ/m;

    invoke-virtual {v2, v9}, LQ/m;->a(I)F

    move-result v3

    iget-object v4, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    invoke-static {v3, v5, v4}, LG5/d3;->e(FFF)F

    move-result v3

    invoke-virtual {v2, v3, v9}, LQ/m;->e(FI)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    const-string v0, "velocityVector"

    invoke-static {v0}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7
    const/4 v0, 0x0

    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v0, 0x0

    invoke-static {v8}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final b(J)LQ/m;
    .locals 2

    invoke-interface {p0, p1, p2}, LQ/e;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LQ/p;->e:LQ/m;

    iget-object v1, p0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    iget-object p0, p0, LQ/p;->d:LQ/m;

    invoke-virtual {v1, p1, p2, p0, v0}, Lcom/google/firebase/messaging/q;->g(JLQ/m;LQ/m;)LQ/m;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, LQ/p;->f:LQ/m;

    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, LQ/p;->h:J

    return-wide v0
.end method

.method public final e()LA7/h;
    .locals 0

    iget-object p0, p0, LQ/p;->b:LA7/h;

    return-object p0
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    invoke-interface/range {p0 .. p2}, LQ/e;->c(J)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, LQ/p;->b:LA7/h;

    iget-object v1, v1, LA7/h;->b:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    iget-object v2, v0, LQ/p;->a:Lcom/google/firebase/messaging/q;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, LQ/p;->d:LQ/m;

    const-string v4, "initialValue"

    invoke-static {v3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LQ/p;->e:LQ/m;

    const-string v4, "initialVelocity"

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v2, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v4, LQ/m;

    if-nez v4, :cond_0

    invoke-virtual {v3}, LQ/m;->c()LQ/m;

    move-result-object v4

    iput-object v4, v2, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    :cond_0
    iget-object v4, v2, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v4, LQ/m;

    const-string v6, "valueVector"

    if-eqz v4, :cond_5

    invoke-virtual {v4}, LQ/m;->b()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_3

    iget-object v8, v2, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v8, LQ/m;

    if-eqz v8, :cond_2

    invoke-virtual {v3, v7}, LQ/m;->a(I)F

    move-result v9

    invoke-virtual {v0, v7}, LQ/m;->a(I)F

    move-result v10

    iget-object v11, v2, Lcom/google/firebase/messaging/q;->a:Ljava/lang/Object;

    check-cast v11, LG5/J2;

    const-wide/32 v12, 0xf4240

    div-long v12, p1, v12

    iget-object v11, v11, LG5/J2;->a:Ljava/lang/Object;

    check-cast v11, LP/d;

    invoke-virtual {v11, v10}, LP/d;->a(F)LP/c;

    move-result-object v10

    const-wide/16 v14, 0x0

    move-object v11, v6

    iget-wide v5, v10, LP/c;->c:J

    cmp-long v14, v5, v14

    if-lez v14, :cond_1

    long-to-float v12, v12

    long-to-float v5, v5

    div-float/2addr v12, v5

    goto :goto_1

    :cond_1
    const/high16 v12, 0x3f800000    # 1.0f

    :goto_1
    iget v5, v10, LP/c;->a:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    iget v6, v10, LP/c;->b:F

    mul-float/2addr v5, v6

    invoke-static {v12}, LP/b;->a(F)LP/a;

    move-result-object v6

    iget v6, v6, LP/a;->a:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v9

    invoke-virtual {v8, v5, v7}, LQ/m;->e(FI)V

    add-int/lit8 v7, v7, 0x1

    move-object v6, v11

    goto :goto_0

    :cond_2
    move-object v11, v6

    invoke-static {v11}, Ltb/k;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3
    move-object v11, v6

    const/4 v0, 0x0

    iget-object v2, v2, Lcom/google/firebase/messaging/q;->b:Ljava/lang/Object;

    check-cast v2, LQ/m;

    if-eqz v2, :cond_4

    invoke-interface {v1, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {v11}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object v11, v6

    const/4 v0, 0x0

    invoke-static {v11}, Ltb/k;->l(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, v0, LQ/p;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQ/p;->g:Ljava/lang/Object;

    return-object p0
.end method
