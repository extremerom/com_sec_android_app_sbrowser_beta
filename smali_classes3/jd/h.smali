.class public final Ljd/h;
.super Lwd/k;
.source "SourceFile"


# instance fields
.field public final b:Ltb/m;

.field public c:Z


# direct methods
.method public constructor <init>(Lwd/b;Lsb/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lwd/k;-><init>(Lwd/x;)V

    check-cast p2, Ltb/m;

    iput-object p2, p0, Ljd/h;->b:Ltb/m;

    return-void
.end method


# virtual methods
.method public final R(Lwd/g;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Ljd/h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Lwd/g;->K(J)V

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lwd/k;->R(Lwd/g;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Ljd/h;->c:Z

    iget-object p0, p0, Ljd/h;->b:Ltb/m;

    invoke-interface {p0, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final close()V
    .locals 2

    iget-boolean v0, p0, Ljd/h;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lwd/k;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljd/h;->c:Z

    iget-object p0, p0, Ljd/h;->b:Ltb/m;

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final flush()V
    .locals 2

    iget-boolean v0, p0, Ljd/h;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Lwd/k;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljd/h;->c:Z

    iget-object p0, p0, Ljd/h;->b:Ltb/m;

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
