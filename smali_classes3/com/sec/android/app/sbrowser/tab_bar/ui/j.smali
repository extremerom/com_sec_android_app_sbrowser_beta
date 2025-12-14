.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/j;->b:Landroid/view/ViewGroup;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;->e(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabButtonView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;->b(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
