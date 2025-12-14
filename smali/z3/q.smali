.class public final synthetic Lz3/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz3/r;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz3/t;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lz3/t;II)V
    .locals 0

    iput p3, p0, Lz3/q;->a:I

    iput-object p1, p0, Lz3/q;->b:Lz3/t;

    iput p2, p0, Lz3/q;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lz3/q;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lz3/q;->b:Lz3/t;

    iget p0, p0, Lz3/q;->c:I

    invoke-virtual {v0, p0}, Lz3/t;->r(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lz3/q;->b:Lz3/t;

    iget p0, p0, Lz3/q;->c:I

    invoke-virtual {v0, p0}, Lz3/t;->o(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lz3/q;->b:Lz3/t;

    iget p0, p0, Lz3/q;->c:I

    invoke-virtual {v0, p0}, Lz3/t;->n(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
