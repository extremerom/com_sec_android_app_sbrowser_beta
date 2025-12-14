.class public final synthetic Li3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Li3/g;


# direct methods
.method public synthetic constructor <init>(Li3/g;I)V
    .locals 0

    iput p2, p0, Li3/f;->a:I

    iput-object p1, p0, Li3/f;->b:Li3/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Li3/f;->a:I

    iget-object p0, p0, Li3/f;->b:Li3/g;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Li3/g;->b(Li3/g;)V

    return-void

    :pswitch_0
    invoke-static {p0}, Li3/g;->a(Li3/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
