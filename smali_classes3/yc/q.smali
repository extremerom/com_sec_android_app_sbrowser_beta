.class public final Lyc/q;
.super Lyc/U;
.source "SourceFile"


# instance fields
.field public final b:Lyc/U;

.field public final c:Lyc/U;


# direct methods
.method public constructor <init>(Lyc/U;Lyc/U;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/q;->b:Lyc/U;

    iput-object p2, p0, Lyc/q;->c:Lyc/U;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lyc/q;->b:Lyc/U;

    invoke-virtual {v0}, Lyc/U;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lyc/q;->c:Lyc/U;

    invoke-virtual {p0}, Lyc/U;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lyc/q;->b:Lyc/U;

    invoke-virtual {v0}, Lyc/U;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lyc/q;->c:Lyc/U;

    invoke-virtual {p0}, Lyc/U;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final c(LKb/h;)LKb/h;
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/q;->b:Lyc/U;

    invoke-virtual {v0, p1}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object p1

    iget-object p0, p0, Lyc/q;->c:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->c(LKb/h;)LKb/h;

    move-result-object p0

    return-object p0
.end method

.method public final d(Lyc/w;)Lyc/Q;
    .locals 1

    iget-object v0, p0, Lyc/q;->b:Lyc/U;

    invoke-virtual {v0, p1}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lyc/q;->c:Lyc/U;

    invoke-virtual {p0, p1}, Lyc/U;->d(Lyc/w;)Lyc/Q;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f(Lyc/w;Lyc/e0;)Lyc/w;
    .locals 1

    const-string v0, "topLevelType"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "position"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lyc/q;->b:Lyc/U;

    invoke-virtual {v0, p1, p2}, Lyc/U;->f(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p1

    iget-object p0, p0, Lyc/q;->c:Lyc/U;

    invoke-virtual {p0, p1, p2}, Lyc/U;->f(Lyc/w;Lyc/e0;)Lyc/w;

    move-result-object p0

    return-object p0
.end method
