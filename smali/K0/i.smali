.class public final LK0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LK0/l;

.field public c:LK0/m;

.field public d:Z


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, LK0/i;->d:Z

    iget-object v0, p0, LK0/i;->b:LK0/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, LK0/l;->b:LK0/k;

    invoke-virtual {v0, p1}, LK0/h;->m(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LK0/i;->a:Ljava/lang/Object;

    iput-object p1, p0, LK0/i;->b:LK0/l;

    iput-object p1, p0, LK0/i;->c:LK0/m;

    :cond_0
    return-void
.end method

.method public final finalize()V
    .locals 4

    iget-object v0, p0, LK0/i;->b:LK0/l;

    if-eqz v0, :cond_0

    iget-object v0, v0, LK0/l;->b:LK0/k;

    invoke-virtual {v0}, LK0/h;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, LK0/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LK0/i;->a:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, LK0/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, LK0/h;->n(Ljava/lang/Throwable;)Z

    :cond_0
    iget-boolean v0, p0, LK0/i;->d:Z

    if-nez v0, :cond_1

    iget-object p0, p0, LK0/i;->c:LK0/m;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, LK0/h;->m(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
