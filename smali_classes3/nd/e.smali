.class public final Lnd/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# instance fields
.field public final a:Lwd/m;

.field public b:Z

.field public final synthetic c:Lbc/c;


# direct methods
.method public constructor <init>(Lbc/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/e;->c:Lbc/c;

    new-instance v0, Lwd/m;

    iget-object p1, p1, Lbc/c;->f:Ljava/lang/Object;

    check-cast p1, Lwd/s;

    iget-object p1, p1, Lwd/s;->a:Lwd/x;

    invoke-interface {p1}, Lwd/x;->timeout()Lwd/B;

    move-result-object p1

    invoke-direct {v0, p1}, Lwd/m;-><init>(Lwd/B;)V

    iput-object v0, p0, Lnd/e;->a:Lwd/m;

    return-void
.end method


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 5

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lnd/e;->b:Z

    if-nez v0, :cond_1

    iget-wide v0, p1, Lwd/g;->b:J

    sget-object v2, Lid/b;->a:[B

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    iget-object p0, p0, Lnd/e;->c:Lbc/c;

    iget-object p0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast p0, Lwd/s;

    invoke-virtual {p0, p1, p2, p3}, Lwd/s;->R(Lwd/g;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-boolean v0, p0, Lnd/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnd/e;->b:Z

    iget-object v0, p0, Lnd/e;->c:Lbc/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lnd/e;->a:Lwd/m;

    iget-object v1, p0, Lwd/m;->e:Lwd/B;

    sget-object v2, Lwd/B;->d:Lwd/A;

    iput-object v2, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {v1}, Lwd/B;->a()Lwd/B;

    invoke-virtual {v1}, Lwd/B;->b()Lwd/B;

    const/4 p0, 0x3

    iput p0, v0, Lbc/c;->b:I

    return-void
.end method

.method public final flush()V
    .locals 1

    iget-boolean v0, p0, Lnd/e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lnd/e;->c:Lbc/c;

    iget-object p0, p0, Lbc/c;->f:Ljava/lang/Object;

    check-cast p0, Lwd/s;

    invoke-virtual {p0}, Lwd/s;->flush()V

    return-void
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lnd/e;->a:Lwd/m;

    return-object p0
.end method
