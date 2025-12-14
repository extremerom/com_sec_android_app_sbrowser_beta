.class public Lorg/chromium/ui/widget/LoadingView;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/LoadingView$Observer;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static sDisableAnimationForTest:Z


# instance fields
.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/ui/widget/LoadingView$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldShow:Z

.field private mStartTime:J


# direct methods
.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lorg/chromium/ui/widget/LoadingView;->lambda$setDisableAnimationForTest$0()V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/ui/widget/LoadingView;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView;->mObservers:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/ui/widget/LoadingView;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/ui/widget/LoadingView;->mShouldShow:Z

    return p0
.end method

.method public static bridge synthetic d(Lorg/chromium/ui/widget/LoadingView;J)V
    .locals 0

    iput-wide p1, p0, Lorg/chromium/ui/widget/LoadingView;->mStartTime:J

    return-void
.end method

.method public static bridge synthetic e(Lorg/chromium/ui/widget/LoadingView;)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/ui/widget/LoadingView;->onHideLoadingFinished()V

    return-void
.end method

.method public static bridge synthetic f()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/ui/widget/LoadingView;->sDisableAnimationForTest:Z

    return v0
.end method

.method private static synthetic lambda$setDisableAnimationForTest$0()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/chromium/ui/widget/LoadingView;->sDisableAnimationForTest:Z

    return-void
.end method

.method private onHideLoadingFinished()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lorg/chromium/ui/widget/LoadingView;->mObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/ui/widget/LoadingView$Observer;

    invoke-interface {v0}, Lorg/chromium/ui/widget/LoadingView$Observer;->onHideLoadingUiComplete()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setDisableAnimationForTest(Z)V
    .locals 1

    sput-boolean p0, Lorg/chromium/ui/widget/LoadingView;->sDisableAnimationForTest:Z

    new-instance p0, LN4/a;

    const/16 v0, 0x13

    invoke-direct {p0, v0}, LN4/a;-><init>(I)V

    invoke-static {p0}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method
