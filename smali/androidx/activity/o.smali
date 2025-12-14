.class public final Landroidx/activity/o;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/J;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/J;I)V
    .locals 0

    iput p2, p0, Landroidx/activity/o;->a:I

    iput-object p1, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/J;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Landroidx/activity/o;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/activity/A;

    new-instance v1, Landroidx/activity/d;

    iget-object p0, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/J;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Landroidx/activity/d;-><init>(Landroidx/fragment/app/J;I)V

    invoke-direct {v0, v1}, Landroidx/activity/A;-><init>(Ljava/lang/Runnable;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v1, v2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, LGa/d;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p0, v0}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Landroidx/activity/p;->access$addObserverForBackInvoker(Landroidx/activity/p;Landroidx/activity/A;)V

    :cond_1
    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroidx/activity/r;

    iget-object p0, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/J;

    invoke-static {p0}, Landroidx/activity/p;->access$getReportFullyDrawnExecutor$p(Landroidx/activity/p;)Landroidx/activity/l;

    move-result-object v1

    new-instance v2, Landroidx/activity/o;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/activity/o;-><init>(Landroidx/fragment/app/J;I)V

    invoke-direct {v0, v1, v2}, Landroidx/activity/r;-><init>(Landroidx/activity/l;Landroidx/activity/o;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroidx/activity/p;->reportFullyDrawn()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    new-instance v0, Landroidx/lifecycle/o0;

    iget-object p0, p0, Landroidx/activity/o;->b:Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v0, v1, p0, v2}, Landroidx/lifecycle/o0;-><init>(Landroid/app/Application;LQ2/f;Landroid/os/Bundle;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
