.class public final Lwd/m;
.super Lwd/B;
.source "SourceFile"


# instance fields
.field public e:Lwd/B;


# direct methods
.method public constructor <init>(Lwd/B;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/m;->e:Lwd/B;

    return-void
.end method


# virtual methods
.method public final a()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0}, Lwd/B;->a()Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0}, Lwd/B;->b()Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public final c()J
    .locals 2

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0}, Lwd/B;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(J)Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0, p1, p2}, Lwd/B;->d(J)Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0}, Lwd/B;->e()Z

    move-result p0

    return p0
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0}, Lwd/B;->f()V

    return-void
.end method

.method public final g(JLjava/util/concurrent/TimeUnit;)Lwd/B;
    .locals 1

    const-string v0, "unit"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {p0, p1, p2, p3}, Lwd/B;->g(JLjava/util/concurrent/TimeUnit;)Lwd/B;

    move-result-object p0

    return-object p0
.end method
