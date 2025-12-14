.class public abstract LX4/g;
.super Lc5/e;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lb5/m;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    sget-object p2, LU4/b;->a:Lb5/g;

    invoke-direct {p0, p2, p1}, Lc5/e;-><init>(Lb5/g;Lb5/m;)V

    return-void

    :pswitch_0
    sget-object p2, LY5/h;->a:Lb5/g;

    invoke-direct {p0, p2, p1}, Lc5/e;-><init>(Lb5/g;Lb5/m;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
