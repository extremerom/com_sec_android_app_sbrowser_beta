.class Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->prepareAnimators()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;->c(Lcom/sec/android/app/sbrowser/settings/customize_toolbar/animation/BaseToolbarAnimator;)Landroid/widget/RelativeLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
