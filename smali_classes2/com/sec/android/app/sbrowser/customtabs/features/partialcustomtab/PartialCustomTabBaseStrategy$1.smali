.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->setupAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;->f(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabBaseStrategy;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
