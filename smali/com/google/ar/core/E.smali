.class public final Lcom/google/ar/core/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/ar/core/E;->a:I

    iput p3, p0, Lcom/google/ar/core/E;->b:I

    iput p4, p0, Lcom/google/ar/core/E;->c:I

    iput-object p1, p0, Lcom/google/ar/core/E;->d:Lcom/google/ar/core/InstallActivity;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/google/ar/core/E;->b:I

    int-to-float v2, v0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lcom/google/ar/core/E;->d:Lcom/google/ar/core/InstallActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget v4, p0, Lcom/google/ar/core/E;->c:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v0

    iget p0, p0, Lcom/google/ar/core/E;->a:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    add-float/2addr p0, v2

    float-to-int p0, p0

    float-to-int v0, v4

    invoke-virtual {v3, p0, v0}, Landroid/view/Window;->setLayout(II)V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    return-void
.end method
