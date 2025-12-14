.class public final LJ8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP8/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LJ8/h;


# direct methods
.method public synthetic constructor <init>(LJ8/h;I)V
    .locals 0

    iput p2, p0, LJ8/a;->a:I

    iput-object p1, p0, LJ8/a;->b:LJ8/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleServiceAction(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p1, p0, LJ8/a;->b:LJ8/h;

    iget p0, p0, LJ8/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LJ8/k;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p3}, LJ8/h;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJ8/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p4, p3}, LJ8/h;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] REQUEST_CANCEL"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "c"

    invoke-static {p2, p0}, LK8/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, LJ8/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {p0}, LJ8/h;->b(Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
