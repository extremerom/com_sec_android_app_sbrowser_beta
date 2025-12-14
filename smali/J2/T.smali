.class public final synthetic LJ2/T;
.super Ltb/j;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput p7, p0, LJ2/T;->a:I

    invoke-direct/range {p0 .. p6}, Ltb/i;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJ2/T;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lv2/h0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lv2/h0;->d:Lo3/c;

    invoke-virtual {p0, v0}, Lo3/c;->l(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lv2/h0;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lv2/h0;->d:Lo3/c;

    invoke-virtual {p0, v0}, Lo3/c;->l(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Lv2/h0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lv2/h0;->d:Lo3/c;

    invoke-virtual {p0, v0}, Lo3/c;->l(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->f()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/A;

    invoke-virtual {p0}, Landroidx/activity/A;->f()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Ltb/c;->receiver:Ljava/lang/Object;

    check-cast p0, LJ2/U;

    invoke-static {p0}, LJ2/U;->access$onClosed(LJ2/U;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
