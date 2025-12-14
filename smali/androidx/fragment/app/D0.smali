.class public final synthetic Landroidx/fragment/app/D0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/o;

.field public final synthetic c:Landroidx/fragment/app/F0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/o;Landroidx/fragment/app/F0;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/D0;->a:I

    iput-object p1, p0, Landroidx/fragment/app/D0;->b:Landroidx/fragment/app/o;

    iput-object p2, p0, Landroidx/fragment/app/D0;->c:Landroidx/fragment/app/F0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/D0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/D0;->b:Landroidx/fragment/app/o;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/D0;->c:Landroidx/fragment/app/F0;

    iget-object v1, v0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object v1, p0, Landroidx/fragment/app/D0;->b:Landroidx/fragment/app/o;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    iget-object p0, p0, Landroidx/fragment/app/D0;->c:Landroidx/fragment/app/F0;

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Landroidx/fragment/app/o;->a(Landroidx/fragment/app/F0;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/D0;->b:Landroidx/fragment/app/o;

    const-string v1, "this$0"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/D0;->c:Landroidx/fragment/app/F0;

    iget-object v1, v0, Landroidx/fragment/app/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    iget-object p0, p0, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const-string v2, "operation.fragment.mView"

    invoke-static {p0, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/o;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0, v0}, Landroidx/fragment/app/J0;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
