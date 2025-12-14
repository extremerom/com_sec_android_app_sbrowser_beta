.class public final LT3/e;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LT3/e;->c:I

    const/4 p1, 0x4

    invoke-direct {p0, p1}, LF3/f;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final S0()LT3/h;
    .locals 1

    iget v0, p0, LT3/e;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LT3/j;

    invoke-direct {v0, p0}, LT3/j;-><init>(LT3/e;)V

    return-object v0

    :pswitch_0
    new-instance v0, LT3/d;

    invoke-direct {v0, p0}, LT3/d;-><init>(LT3/e;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
