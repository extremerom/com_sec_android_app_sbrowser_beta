.class public final synthetic Lw6/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr1/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/FrameLayout;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/FrameLayout;I)V
    .locals 0

    iput p2, p0, Lw6/e;->a:I

    iput-object p1, p0, Lw6/e;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lr1/e;FF)V
    .locals 0

    iget-object p1, p0, Lw6/e;->b:Landroid/widget/FrameLayout;

    iget p0, p0, Lw6/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lw6/q;

    invoke-static {p1}, Lw6/q;->a(Lw6/q;)V

    return-void

    :pswitch_0
    sget p0, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->A:I

    const-string p0, "this$0"

    check-cast p1, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p1, Lcom/google/android/material/oneui/floatingdock/FloatingPaneLayout;->g:F

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
