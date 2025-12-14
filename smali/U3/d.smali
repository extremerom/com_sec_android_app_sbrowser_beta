.class public final LU3/d;
.super Lcom/samsung/android/motionphoto/utils/ex/h;
.source "SourceFile"


# instance fields
.field public d:LS3/p;


# virtual methods
.method public final b(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LS3/C;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LS3/C;->a()I

    move-result p0

    :goto_0
    return p0
.end method

.method public final c(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, LQ3/g;

    check-cast p2, LS3/C;

    iget-object p0, p0, LU3/d;->d:LS3/p;

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, LS3/p;->e:LS3/F;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1}, LS3/F;->f(LS3/C;Z)V

    :cond_0
    return-void
.end method
