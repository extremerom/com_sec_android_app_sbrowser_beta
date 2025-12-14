.class public final LQc/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/r0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LQc/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LRc/M;)LQc/h;
    .locals 1

    iget p0, p0, LQc/s0;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LQc/u0;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LQc/u0;-><init>(LRc/M;Lib/c;)V

    new-instance p1, LQc/k;

    invoke-direct {p1, p0}, LQc/k;-><init>(Lsb/n;)V

    return-object p1

    :pswitch_0
    sget-object p0, LQc/p0;->START:LQc/p0;

    new-instance p1, LQc/k;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, LQc/k;-><init>(ILjava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, LQc/s0;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "SharingStarted.Lazily"

    return-object p0

    :pswitch_0
    const-string p0, "SharingStarted.Eagerly"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
