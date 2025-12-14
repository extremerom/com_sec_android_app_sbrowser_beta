.class public final synthetic Landroidx/fragment/app/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/fragment/app/v;->a:I

    iput-object p2, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Landroidx/fragment/app/v;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/f0;

    iget-object p0, p0, Landroidx/fragment/app/f0;->o:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_0
    iget-object p0, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/l;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Transition for all operations has completed"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    iget-object v1, v1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/F0;->c(Landroidx/fragment/app/E0;)V

    goto :goto_0

    :cond_2
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    const/4 v0, 0x4

    invoke-static {v0, p0}, Landroidx/fragment/app/q0;->a(ILjava/util/ArrayList;)V

    return-void

    :pswitch_2
    const-string v0, "$seekCancelLambda"

    iget-object p0, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    check-cast p0, Ltb/w;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ltb/w;->a:Ljava/lang/Object;

    check-cast p0, Lsb/a;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_3
    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/fragment/app/v;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Fragment;

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/y0;

    iget-object v1, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    iget-object v0, v0, Landroidx/fragment/app/y0;->f:LQ2/e;

    invoke-virtual {v0, v1}, LQ2/e;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/fragment/app/Fragment;->mSavedViewRegistryState:Landroid/os/Bundle;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
