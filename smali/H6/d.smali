.class public final LH6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LH6/m;


# direct methods
.method public constructor <init>(LH6/m;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, LH6/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH6/d;->b:LH6/m;

    return-void
.end method

.method public synthetic constructor <init>(LH6/m;IB)V
    .locals 0

    iput p2, p0, LH6/d;->a:I

    iput-object p1, p0, LH6/d;->b:LH6/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LH6/d;->b:LH6/m;

    iget p0, p0, LH6/d;->a:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, LH6/m;->v:I

    iget-object p1, v0, LH6/m;->i:LH6/l;

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget p1, LH6/m;->v:I

    iget-object p1, v0, LH6/m;->i:LH6/l;

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, v0, LH6/m;->i:LH6/l;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, v0, LH6/m;->i:LH6/l;

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void

    :pswitch_2
    iget-object p0, v0, LH6/m;->i:LH6/l;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
