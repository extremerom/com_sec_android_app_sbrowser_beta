.class public abstract Lnd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/z;


# instance fields
.field public final a:Lwd/m;

.field public b:Z

.field public final synthetic c:Lbc/c;


# direct methods
.method public constructor <init>(Lbc/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnd/a;->c:Lbc/c;

    new-instance v0, Lwd/m;

    iget-object p1, p1, Lbc/c;->e:Ljava/lang/Object;

    check-cast p1, Lwd/t;

    iget-object p1, p1, Lwd/t;->a:Lwd/z;

    invoke-interface {p1}, Lwd/z;->timeout()Lwd/B;

    move-result-object p1

    invoke-direct {v0, p1}, Lwd/m;-><init>(Lwd/B;)V

    iput-object v0, p0, Lnd/a;->a:Lwd/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lnd/a;->c:Lbc/c;

    iget v1, v0, Lbc/c;->b:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lnd/a;->a:Lwd/m;

    iget-object v1, p0, Lwd/m;->e:Lwd/B;

    sget-object v3, Lwd/B;->d:Lwd/A;

    iput-object v3, p0, Lwd/m;->e:Lwd/B;

    invoke-virtual {v1}, Lwd/B;->a()Lwd/B;

    invoke-virtual {v1}, Lwd/B;->b()Lwd/B;

    iput v2, v0, Lbc/c;->b:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lbc/c;->b:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read(Lwd/g;J)J
    .locals 2

    iget-object v0, p0, Lnd/a;->c:Lbc/c;

    const-string v1, "sink"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, v0, Lbc/c;->e:Ljava/lang/Object;

    check-cast v1, Lwd/t;

    invoke-virtual {v1, p1, p2, p3}, Lwd/t;->read(Lwd/g;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p1

    iget-object p2, v0, Lbc/c;->d:Ljava/lang/Object;

    check-cast p2, Lld/k;

    invoke-virtual {p2}, Lld/k;->k()V

    invoke-virtual {p0}, Lnd/a;->a()V

    throw p1
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lnd/a;->a:Lwd/m;

    return-object p0
.end method
