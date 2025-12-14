.class public final Lyc/z;
.super Lyc/p;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lyc/A;I)V
    .locals 0

    iput p2, p0, Lyc/z;->c:I

    invoke-direct {p0, p1}, Lyc/p;-><init>(Lyc/A;)V

    return-void
.end method


# virtual methods
.method public final G0()Z
    .locals 0

    iget p0, p0, Lyc/z;->c:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final Q0(Lyc/A;)Lyc/o;
    .locals 1

    iget p0, p0, Lyc/z;->c:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lyc/z;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lyc/z;-><init>(Lyc/A;I)V

    return-object p0

    :pswitch_0
    new-instance p0, Lyc/z;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lyc/z;-><init>(Lyc/A;I)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
