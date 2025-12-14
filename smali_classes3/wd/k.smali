.class public abstract Lwd/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwd/x;


# instance fields
.field public final a:Lwd/x;


# direct methods
.method public constructor <init>(Lwd/x;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwd/k;->a:Lwd/x;

    return-void
.end method


# virtual methods
.method public R(Lwd/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lwd/k;->a:Lwd/x;

    invoke-interface {p0, p1, p2, p3}, Lwd/x;->R(Lwd/g;J)V

    return-void
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lwd/k;->a:Lwd/x;

    invoke-interface {p0}, Lwd/x;->close()V

    return-void
.end method

.method public flush()V
    .locals 0

    iget-object p0, p0, Lwd/k;->a:Lwd/x;

    invoke-interface {p0}, Lwd/x;->flush()V

    return-void
.end method

.method public final timeout()Lwd/B;
    .locals 0

    iget-object p0, p0, Lwd/k;->a:Lwd/x;

    invoke-interface {p0}, Lwd/x;->timeout()Lwd/B;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lwd/k;->a:Lwd/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
