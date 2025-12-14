.class public final Landroidx/core/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/core/widget/NestedScrollView;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/widget/NestedScrollView;I)V
    .locals 0

    iput p2, p0, Landroidx/core/widget/e;->a:I

    iput-object p1, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/core/widget/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    iget-object v0, p0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroidx/core/widget/NestedScrollView;->access$702(Landroidx/core/widget/NestedScrollView;Z)Z

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "remove_animations"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p0, v3, v3}, Landroidx/core/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    invoke-virtual {p0, v3, v3, v0}, Landroidx/core/widget/NestedScrollView;->smoothScrollTo(III)V

    :goto_0
    return-void

    :pswitch_1
    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroidx/core/widget/NestedScrollView;->access$200(Landroidx/core/widget/NestedScrollView;I)V

    return-void

    :pswitch_2
    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    invoke-static {p0}, Landroidx/core/widget/NestedScrollView;->access$100(Landroidx/core/widget/NestedScrollView;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    invoke-static {p0}, Landroidx/core/widget/NestedScrollView;->access$000(Landroidx/core/widget/NestedScrollView;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Landroidx/core/widget/e;->b:Landroidx/core/widget/NestedScrollView;

    invoke-static {p0}, Landroidx/core/widget/NestedScrollView;->access$900(Landroidx/core/widget/NestedScrollView;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/widget/NestedScrollView;->access$1000(Landroidx/core/widget/NestedScrollView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0}, Landroidx/core/widget/NestedScrollView;->access$1300(Landroidx/core/widget/NestedScrollView;)Z

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/widget/NestedScrollView;->access$1202(Landroidx/core/widget/NestedScrollView;Z)Z

    move-result v0

    invoke-static {p0, v0}, Landroidx/core/widget/NestedScrollView;->access$1102(Landroidx/core/widget/NestedScrollView;Z)Z

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
