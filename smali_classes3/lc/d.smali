.class public final Llc/d;
.super Lyc/U;
.source "SourceFile"


# instance fields
.field public final b:Lyc/U;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lyc/U;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Llc/d;->c:Z

    iput-object p1, p0, Llc/d;->b:Lyc/U;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, Llc/d;->b:Lyc/U;

    invoke-virtual {p0}, Lyc/U;->a()Z

    move-result p0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Llc/d;->c:Z

    return p0
.end method

.method public final c(LKb/h;)LKb/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Llc/d;->b:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lyc/w;)Lyc/Q;
    .locals 2

    iget-object p0, p0, Llc/d;->b:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lyc/w;->F0()Lyc/L;

    move-result-object p1

    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    instance-of v1, p1, LJb/W;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, LJb/W;

    :cond_0
    invoke-static {p0, v0}, LP7/a;->b(Lyc/Q;LJb/W;)Lyc/Q;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Llc/d;->b:Lyc/U;

    invoke-virtual {p0}, Lyc/U;->e()Z

    move-result p0

    return p0
.end method

.method public final f(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Llc/d;->b:Lyc/U;

    invoke-virtual {p0, p1, p2}, Lyc/U;->f(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    return-object p0
.end method
