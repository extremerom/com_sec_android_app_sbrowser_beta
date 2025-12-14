.class public final LQ/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LA7/h;

.field public final b:Ljava/lang/Object;

.field public final c:LQ/i;

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final f:LQ/v;

.field public final g:LQ/m;

.field public final h:LQ/m;

.field public final i:LQ/m;

.field public final j:LQ/m;


# direct methods
.method public constructor <init>(LH0/i;LA7/h;)V
    .locals 4

    const-string v0, "typeConverter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LQ/d;->a:LA7/h;

    const/4 v0, 0x0

    new-instance v1, LQ/i;

    const/16 v2, 0x3c

    invoke-direct {v1, p2, p1, v0, v2}, LQ/i;-><init>(LA7/h;Ljava/lang/Object;LQ/m;I)V

    iput-object v1, p0, LQ/d;->c:LQ/i;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, La0/V;->f:La0/V;

    invoke-static {v1, v2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, LQ/d;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1, v2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, p0, LQ/d;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v1, LQ/v;

    invoke-direct {v1}, LQ/v;-><init>()V

    iput-object v1, p0, LQ/d;->f:LQ/v;

    new-instance v1, LQ/A;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x44bb8000    # 1500.0f

    invoke-direct {v1, v2, v3, v0}, LQ/A;-><init>(FFLjava/lang/Object;)V

    iget-object p2, p2, LA7/h;->a:Ljava/lang/Object;

    check-cast p2, Ltb/m;

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LQ/m;

    invoke-virtual {p2}, LQ/m;->b()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-virtual {p2, v3, v2}, LQ/m;->e(FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object p2, p0, LQ/d;->g:LQ/m;

    iget-object v0, p0, LQ/d;->a:LA7/h;

    iget-object v0, v0, LA7/h;->a:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ/m;

    invoke-virtual {p1}, LQ/m;->b()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-virtual {p1, v2, v1}, LQ/m;->e(FI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iput-object p1, p0, LQ/d;->h:LQ/m;

    iput-object p2, p0, LQ/d;->i:LQ/m;

    iput-object p1, p0, LQ/d;->j:LQ/m;

    return-void
.end method

.method public static final a(LQ/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, LQ/d;->g:LQ/m;

    iget-object v1, p0, LQ/d;->i:LQ/m;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, LQ/d;->j:LQ/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQ/d;->h:LQ/m;

    invoke-static {v2, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, LQ/d;->a:LA7/h;

    iget-object v0, p0, LA7/h;->a:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    invoke-interface {v0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/m;

    invoke-virtual {v0}, LQ/m;->b()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v4}, LQ/m;->a(I)F

    move-result v6

    invoke-virtual {v1, v4}, LQ/m;->a(I)F

    move-result v7

    cmpg-float v6, v6, v7

    if-ltz v6, :cond_1

    invoke-virtual {v0, v4}, LQ/m;->a(I)F

    move-result v6

    invoke-virtual {v2, v4}, LQ/m;->a(I)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    :cond_1
    invoke-virtual {v0, v4}, LQ/m;->a(I)F

    move-result v5

    invoke-virtual {v1, v4}, LQ/m;->a(I)F

    move-result v6

    invoke-virtual {v2, v4}, LQ/m;->a(I)F

    move-result v7

    invoke-static {v5, v6, v7}, LG5/d3;->e(FFF)F

    move-result v5

    invoke-virtual {v0, v5, v4}, LQ/m;->e(FI)V

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_4

    iget-object p0, p0, LA7/h;->b:Ljava/lang/Object;

    check-cast p0, Ltb/m;

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_4
    :goto_1
    return-object p1
.end method

.method public static b(LQ/d;LH0/i;LQ/A;LV/m;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, LQ/d;->a:LA7/h;

    iget-object v0, v0, LA7/h;->b:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    iget-object v1, p0, LQ/d;->c:LQ/i;

    iget-object v1, v1, LQ/i;->c:LQ/m;

    invoke-interface {v0, v1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, LQ/d;->c:LQ/i;

    iget-object v0, v0, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v8

    const-string v0, "animationSpec"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverter"

    iget-object v7, p0, LQ/d;->a:LA7/h;

    invoke-static {v7, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LQ/F;

    iget-object v1, v7, LA7/h;->a:Ljava/lang/Object;

    check-cast v1, Ltb/m;

    invoke-interface {v1, v4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, LQ/m;

    move-object v5, v0

    move-object v6, p2

    move-object v9, p1

    invoke-direct/range {v5 .. v10}, LQ/F;-><init>(LQ/h;LA7/h;Ljava/lang/Object;Ljava/lang/Object;LQ/m;)V

    iget-object p1, p0, LQ/d;->c:LQ/i;

    iget-wide v6, p1, LQ/i;->d:J

    new-instance p1, LQ/b;

    const/4 v9, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v9}, LQ/b;-><init>(LQ/d;Ljava/lang/Object;LQ/F;JLsb/k;Lib/c;)V

    sget-object p2, LQ/s;->Default:LQ/s;

    iget-object p0, p0, LQ/d;->f:LQ/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LQ/u;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, LQ/u;-><init>(LQ/s;LQ/v;Lsb/k;Lib/c;)V

    invoke-static {v0, p3}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
