.class public final synthetic Lcom/sec/android/app/sbrowser/common/main_view/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;IILandroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->a:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->b:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->c:I

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->d:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->a:Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->b:I

    iget v2, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->c:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/main_view/a;->d:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->b(Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;IILandroid/widget/ImageView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
