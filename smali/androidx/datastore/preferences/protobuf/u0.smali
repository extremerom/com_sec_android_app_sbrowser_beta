.class public final Landroidx/datastore/preferences/protobuf/u0;
.super Landroidx/datastore/preferences/protobuf/w0;
.source "SourceFile"


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;I)V
    .locals 0

    iput p2, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    invoke-direct {p0, p1}, Landroidx/datastore/preferences/protobuf/w0;-><init>(Lsun/misc/Unsafe;)V

    return-void
.end method


# virtual methods
.method public final c(JLjava/lang/Object;)Z
    .locals 2

    iget p0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->g(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->h(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :pswitch_0
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->g(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_3

    :goto_2
    move v0, v1

    goto :goto_3

    :cond_2
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->h(JLjava/lang/Object;)B

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d(JLjava/lang/Object;)B
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->g(JLjava/lang/Object;)B

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->h(JLjava/lang/Object;)B

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->g(JLjava/lang/Object;)B

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3}, Landroidx/datastore/preferences/protobuf/x0;->h(JLjava/lang/Object;)B

    move-result p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e(JLjava/lang/Object;)D
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->h(JLjava/lang/Object;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f(JLjava/lang/Object;)F
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/datastore/preferences/protobuf/w0;->g(JLjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k(Ljava/lang/Object;JZ)V
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_0

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/x0;->n(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/x0;->o(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_1

    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/x0;->n(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    int-to-byte p0, p4

    invoke-static {p1, p2, p3, p0}, Landroidx/datastore/preferences/protobuf/x0;->o(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l(Ljava/lang/Object;JB)V
    .locals 0

    iget p0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch p0, :pswitch_data_0

    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/x0;->n(Ljava/lang/Object;JB)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/x0;->o(Ljava/lang/Object;JB)V

    :goto_0
    return-void

    :pswitch_0
    sget-boolean p0, Landroidx/datastore/preferences/protobuf/x0;->h:Z

    if-eqz p0, :cond_1

    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/x0;->n(Ljava/lang/Object;JB)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroidx/datastore/preferences/protobuf/x0;->o(Ljava/lang/Object;JB)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m(JLjava/lang/Object;D)V
    .locals 6

    iget v1, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch v1, :pswitch_data_0

    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/w0;->p(Ljava/lang/Object;JJ)V

    return-void

    :pswitch_0
    invoke-static {p4, p5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p3

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/preferences/protobuf/w0;->p(Ljava/lang/Object;JJ)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(FJLjava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/datastore/preferences/protobuf/u0;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/datastore/preferences/protobuf/w0;->o(JILjava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p2, p3, p1, p4}, Landroidx/datastore/preferences/protobuf/w0;->o(JILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
