.class public final LS/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# virtual methods
.method public final a()F
    .locals 2

    iget p0, p0, LS/o;->a:I

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result p0

    return p0

    :pswitch_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()F
    .locals 2

    iget p0, p0, LS/o;->a:I

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr0/b;->b(J)F

    move-result p0

    return p0

    :pswitch_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lr0/b;->a(J)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c(FF)J
    .locals 0

    iget p0, p0, LS/o;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-static {p2, p1}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-static {p1, p2}, LG5/A;->a(FF)J

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
