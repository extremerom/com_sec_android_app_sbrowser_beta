.class public final synthetic LK6/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LK6/i;->a:I

    iput-object p2, p0, LK6/i;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LG5/J2;Landroid/view/View;)V
    .locals 0

    const/4 p2, 0x7

    iput p2, p0, LK6/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK6/i;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LK6/i;->b:Ljava/lang/Object;

    iget p0, p0, LK6/i;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast v0, Lorg/chromium/content/browser/selection/MagnifierAnimator;

    invoke-static {v0, p1}, Lorg/chromium/content/browser/selection/MagnifierAnimator;->a(Lorg/chromium/content/browser/selection/MagnifierAnimator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_0
    sget-object p0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->k:Landroid/view/animation/LinearInterpolator;

    check-cast v0, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;

    invoke-virtual {v0}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->a()I

    move-result p0

    const p1, 0x102002e

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/BlendMode;->HARD_LIGHT:Landroid/graphics/BlendMode;

    invoke-virtual {v0, p1}, Landroidx/appcompat/graphics/drawable/SeslRecoilDrawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :pswitch_1
    check-cast v0, Ll/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ll/c;->a(F)V

    return-void

    :pswitch_2
    check-cast v0, LG5/J2;

    iget-object p0, v0, LG5/J2;->a:Ljava/lang/Object;

    check-cast p0, Lm/F;

    iget-object p0, p0, Lm/F;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_3
    check-cast v0, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;->a(Lcom/sec/android/app/sbrowser/settings/security_panel/FlatStatusBarRenderer;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_4
    check-cast v0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->e(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_5
    check-cast v0, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;->a(Lcom/sec/android/app/sbrowser/common/utils/BottomBarController;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_6
    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ParticleLayerView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_7
    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCaptureView;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_8
    check-cast v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;->a(Lcom/samsung/android/app/sdk/deepsky/objectcapture/ui/ObjectCapturePopup;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_9
    check-cast v0, LK6/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, v0, LK6/r;->d:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
