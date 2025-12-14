.class public final synthetic LE5/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQ7/h;


# direct methods
.method public synthetic constructor <init>(LQ7/h;I)V
    .locals 0

    iput p2, p0, LE5/q;->a:I

    iput-object p1, p0, LE5/q;->b:LQ7/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LE5/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LE5/q;->b:LQ7/h;

    invoke-virtual {p0}, LQ7/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LE5/q;->b:LQ7/h;

    invoke-virtual {p0}, LQ7/h;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
