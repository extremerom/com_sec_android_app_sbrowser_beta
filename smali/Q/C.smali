.class public final LQ/C;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LQ/i;


# direct methods
.method public synthetic constructor <init>(LQ/i;I)V
    .locals 0

    iput p2, p0, LQ/C;->a:I

    iput-object p1, p0, LQ/C;->b:LQ/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LQ/C;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LQ/C;->b:LQ/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, LQ/i;->f:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LQ/C;->b:LQ/i;

    const/4 v0, 0x0

    iput-boolean v0, p0, LQ/i;->f:Z

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
