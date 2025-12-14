.class public final Lhd/V;
.super Lhd/X;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:J

.field public final c:Ljava/lang/Object;

.field public final d:Lwd/i;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;JLwd/i;I)V
    .locals 0

    iput p5, p0, Lhd/V;->a:I

    iput-object p1, p0, Lhd/V;->c:Ljava/lang/Object;

    iput-wide p2, p0, Lhd/V;->b:J

    iput-object p4, p0, Lhd/V;->d:Lwd/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .locals 2

    iget v0, p0, Lhd/V;->a:I

    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lhd/V;->b:J

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Lhd/V;->b:J

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contentType()Lhd/D;
    .locals 1

    iget-object v0, p0, Lhd/V;->c:Ljava/lang/Object;

    iget p0, p0, Lhd/V;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object p0, Lhd/D;->d:Ljava/util/regex/Pattern;

    invoke-static {v0}, LG5/M3;->d(Ljava/lang/String;)Lhd/D;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast v0, Lhd/D;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final source()Lwd/i;
    .locals 1

    iget v0, p0, Lhd/V;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lhd/V;->d:Lwd/i;

    check-cast p0, Lwd/t;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lhd/V;->d:Lwd/i;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
