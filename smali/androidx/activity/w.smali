.class public final Landroidx/activity/w;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/activity/A;


# direct methods
.method public synthetic constructor <init>(Landroidx/activity/A;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/w;->a:I

    iput-object p1, p0, Landroidx/activity/w;->b:Landroidx/activity/A;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/activity/w;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/activity/w;->b:Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->d()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/w;->b:Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->c()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/activity/w;->b:Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->d()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
