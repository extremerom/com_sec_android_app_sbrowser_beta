.class public final LQ/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ/e;


# instance fields
.field public final a:LQ/J;

.field public final b:LA7/h;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public final e:LQ/m;

.field public final f:LQ/m;

.field public final g:LQ/m;

.field public final h:J

.field public final i:LQ/m;


# direct methods
.method public constructor <init>(LQ/h;LA7/h;Ljava/lang/Object;Ljava/lang/Object;LQ/m;)V
    .locals 3

    const-string v0, "animationSpec"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverter"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, LQ/h;->a(LA7/h;)LQ/J;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LQ/F;->a:LQ/J;

    iput-object p2, p0, LQ/F;->b:LA7/h;

    iput-object p3, p0, LQ/F;->c:Ljava/lang/Object;

    iput-object p4, p0, LQ/F;->d:Ljava/lang/Object;

    iget-object p2, p2, LA7/h;->a:Ljava/lang/Object;

    check-cast p2, Ltb/m;

    invoke-interface {p2, p3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ/m;

    iput-object v0, p0, LQ/F;->e:LQ/m;

    invoke-interface {p2, p4}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, LQ/m;

    iput-object p4, p0, LQ/F;->f:LQ/m;

    if-eqz p5, :cond_0

    invoke-static {p5}, LG5/w;->b(LQ/m;)LQ/m;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-interface {p2, p3}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LQ/m;

    const-string p3, "<this>"

    invoke-static {p2, p3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LQ/m;->c()LQ/m;

    move-result-object p2

    :goto_0
    iput-object p2, p0, LQ/F;->g:LQ/m;

    invoke-interface {p1, v0, p4, p2}, LQ/J;->n(LQ/m;LQ/m;LQ/m;)J

    move-result-wide v1

    iput-wide v1, p0, LQ/F;->h:J

    invoke-interface {p1, v0, p4, p2}, LQ/J;->l(LQ/m;LQ/m;LQ/m;)LQ/m;

    move-result-object p1

    iput-object p1, p0, LQ/F;->i:LQ/m;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-object p0, p0, LQ/F;->a:LQ/J;

    invoke-interface {p0}, LQ/J;->a()V

    const/4 p0, 0x0

    return p0
.end method

.method public final b(J)LQ/m;
    .locals 7

    invoke-interface {p0, p1, p2}, LQ/e;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, LQ/F;->a:LQ/J;

    iget-object v4, p0, LQ/F;->e:LQ/m;

    iget-object v5, p0, LQ/F;->f:LQ/m;

    iget-object v6, p0, LQ/F;->g:LQ/m;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, LQ/J;->o(JLQ/m;LQ/m;LQ/m;)LQ/m;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LQ/F;->i:LQ/m;

    :goto_0
    return-object p0
.end method

.method public final d()J
    .locals 2

    iget-wide v0, p0, LQ/F;->h:J

    return-wide v0
.end method

.method public final e()LA7/h;
    .locals 0

    iget-object p0, p0, LQ/F;->b:LA7/h;

    return-object p0
.end method

.method public final f(J)Ljava/lang/Object;
    .locals 7

    invoke-interface {p0, p1, p2}, LQ/e;->c(J)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LQ/F;->b:LA7/h;

    iget-object v0, v0, LA7/h;->b:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    iget-object v1, p0, LQ/F;->a:LQ/J;

    iget-object v4, p0, LQ/F;->e:LQ/m;

    iget-object v5, p0, LQ/F;->f:LQ/m;

    iget-object v6, p0, LQ/F;->g:LQ/m;

    move-wide v2, p1

    invoke-interface/range {v1 .. v6}, LQ/J;->e(JLQ/m;LQ/m;LQ/m;)LQ/m;

    move-result-object p0

    invoke-interface {v0, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LQ/F;->d:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LQ/F;->d:Ljava/lang/Object;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TargetBasedAnimation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LQ/F;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LQ/F;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",initial velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LQ/F;->g:LQ/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", duration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v1, 0xf4240

    iget-wide v3, p0, LQ/F;->h:J

    div-long/2addr v3, v1

    const-string p0, " ms"

    invoke-static {v3, v4, p0, v0}, LV0/c;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
