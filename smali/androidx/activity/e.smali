.class public final synthetic Landroidx/activity/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/H;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/e;->a:I

    iput-object p2, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V
    .locals 1

    iget v0, p0, Landroidx/activity/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, LQ2/d;

    const-string p1, "this$0"

    invoke-static {p0, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/B;->ON_START:Landroidx/lifecycle/B;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LQ2/d;->f:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, LQ2/d;->f:Z

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-static {p0, p1, p2}, Landroidx/activity/p;->b(Landroidx/fragment/app/J;Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V

    return-void

    :pswitch_1
    sget-object p1, Landroidx/lifecycle/B;->ON_STOP:Landroidx/lifecycle/B;

    if-ne p2, p1, :cond_2

    iget-object p0, p0, Landroidx/activity/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/J;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->cancelPendingInputEvents()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
