.class public final Landroidx/lifecycle/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/lifecycle/C;

.field public b:Landroidx/lifecycle/H;


# virtual methods
.method public final a(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 3

    invoke-virtual {p2}, Landroidx/lifecycle/B;->a()Landroidx/lifecycle/C;

    move-result-object v0

    iget-object v1, p0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    const-string v2, "state1"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_0

    move-object v1, v0

    :cond_0
    iput-object v1, p0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v1, p0, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/H;

    invoke-interface {v1, p1, p2}, Landroidx/lifecycle/H;->b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V

    iput-object v0, p0, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    return-void
.end method
