.class public final synthetic Lcom/sec/android/app/sbrowser/media/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/media/ui/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/ui/b;->b:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/media/ui/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/ui/b;->b:Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->b(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;->c(Lcom/sec/android/app/sbrowser/media/ui/MediaContentPlayerFlexMode;Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
