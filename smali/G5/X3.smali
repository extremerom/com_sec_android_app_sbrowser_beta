.class public abstract LG5/X3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/StringBuilder;Ljava/lang/Object;Lsb/k;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    instance-of p2, p1, Ljava/lang/CharSequence;

    :goto_0
    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    :cond_2
    instance-of p2, p1, Ljava/lang/Character;

    if-eqz p2, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_1
    return-void
.end method

.method public static final b(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1

    const-string v0, "possiblyPrimitiveType"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    check-cast p0, Lac/l;

    instance-of p1, p0, Lac/k;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lac/k;

    iget-object p1, p1, Lac/k;->i:Lpc/c;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lpc/c;->h()Lhc/c;

    move-result-object p0

    invoke-static {p0}, Lpc/b;->b(Lhc/c;)Lpc/b;

    move-result-object p0

    invoke-virtual {p0}, Lpc/b;->d()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getInternalName(...)"

    invoke-static {p0, p1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lac/g;->d(Ljava/lang/String;)Lac/j;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static c(Lhd/T;Lhd/M;)Z
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget v2, p0, Lhd/T;->d:I

    if-eq v2, v0, :cond_1

    const/16 v0, 0x19a

    if-eq v2, v0, :cond_1

    const/16 v0, 0x19e

    if-eq v2, v0, :cond_1

    const/16 v0, 0x1f5

    if-eq v2, v0, :cond_1

    const/16 v0, 0xcb

    if-eq v2, v0, :cond_1

    const/16 v0, 0xcc

    if-eq v2, v0, :cond_1

    const/16 v0, 0x133

    if-eq v2, v0, :cond_0

    const/16 v0, 0x134

    if-eq v2, v0, :cond_1

    const/16 v0, 0x194

    if-eq v2, v0, :cond_1

    const/16 v0, 0x195

    if-eq v2, v0, :cond_1

    packed-switch v2, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const-string v0, "Expires"

    invoke-static {p0, v0}, Lhd/T;->b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lhd/T;->a()Lhd/h;

    move-result-object v0

    const/4 v2, -0x1

    iget v0, v0, Lhd/h;->c:I

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lhd/T;->a()Lhd/h;

    move-result-object v0

    iget-boolean v0, v0, Lhd/h;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lhd/T;->a()Lhd/h;

    move-result-object v0

    iget-boolean v0, v0, Lhd/h;->e:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    :pswitch_1
    invoke-virtual {p0}, Lhd/T;->a()Lhd/h;

    move-result-object p0

    iget-boolean p0, p0, Lhd/h;->b:Z

    if-nez p0, :cond_3

    iget-object p0, p1, Lhd/M;->f:Lhd/h;

    if-nez p0, :cond_2

    sget p0, Lhd/h;->n:I

    iget-object p0, p1, Lhd/M;->c:Lhd/y;

    invoke-static {p0}, LG5/G3;->c(Lhd/y;)Lhd/h;

    move-result-object p0

    iput-object p0, p1, Lhd/M;->f:Lhd/h;

    :cond_2
    iget-boolean p0, p0, Lhd/h;->b:Z

    if-nez p0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
