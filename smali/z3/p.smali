.class public final synthetic Lz3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz3/t;


# direct methods
.method public synthetic constructor <init>(Lz3/t;I)V
    .locals 0

    iput p2, p0, Lz3/p;->a:I

    iput-object p1, p0, Lz3/p;->b:Lz3/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lz3/p;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lz3/p;->b:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->k()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lz3/p;->b:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->m()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
