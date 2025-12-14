.class public final synthetic Landroidx/activity/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/h;->a:I

    iput-object p2, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/activity/h;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 1

    iget p1, p0, Landroidx/activity/h;->a:I

    packed-switch p1, :pswitch_data_0

    sget-object p1, Landroidx/lifecycle/B;->ON_DESTROY:Landroidx/lifecycle/B;

    iget-object v0, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    check-cast v0, Lf1/o;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Landroidx/activity/h;->c:Ljava/lang/Object;

    check-cast p0, Lf1/p;

    invoke-virtual {v0, p0}, Lf1/o;->c(Lf1/p;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    return-void

    :pswitch_0
    sget-object p1, Landroidx/lifecycle/B;->ON_CREATE:Landroidx/lifecycle/B;

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroidx/activity/h;->c:Ljava/lang/Object;

    check-cast p1, Landroidx/activity/p;

    invoke-static {p1}, Landroidx/activity/i;->b(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p1

    iget-object p0, p0, Landroidx/activity/h;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/A;

    iput-object p1, p0, Landroidx/activity/A;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-boolean p1, p0, Landroidx/activity/A;->g:Z

    invoke-virtual {p0, p1}, Landroidx/activity/A;->e(Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
