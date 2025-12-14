.class public final synthetic Lcom/sec/android/app/sbrowser/infobars/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/c;->a:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/c;->b:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/c;->a:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/c;->b:Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;->a(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainerLayout$InfoBarAnimation;Lcom/sec/android/app/sbrowser/infobars/InfoBarWrapper;Landroid/animation/ValueAnimator;)V

    return-void
.end method
