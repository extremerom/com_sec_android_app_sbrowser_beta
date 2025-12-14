.class public final La0/E0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:La0/f0;


# direct methods
.method public synthetic constructor <init>(La0/f0;I)V
    .locals 0

    iput p2, p0, La0/E0;->a:I

    iput-object p1, p0, La0/E0;->b:La0/f0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, La0/E0;->a:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, La0/E0;->b:La0/f0;

    invoke-virtual {p0, p1}, La0/f0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, La0/E0;->b:La0/f0;

    invoke-virtual {p0, p1}, La0/f0;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
