.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator;-><init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator;

.field final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBottomSheetStrategy$TabAnimator$1;->val$finishRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
