.class Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBgProcessingLightEffect:Ll9/e;

.field private mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

.field private mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTransAnimationShown:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimationShown:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mBgProcessingLightEffect:Ll9/e;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

    const p3, 0x7f0b0dc4

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->initLightEffect(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Ll9/e;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mBgProcessingLightEffect:Ll9/e;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->isProcessingEffectSupported()Z

    move-result p0

    return p0
.end method

.method private initLightEffect(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->isProcessingEffectSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "TransBarLoadingAnimation"

    const-string p1, "initLightEffect - no light effect supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Ll9/b;->t:Ll9/b;

    sget-object v1, Ll9/a;->ADD:Ll9/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "<set-?>"

    invoke-static {v1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Ll9/b;->c:Ll9/a;

    const/high16 v1, 0x42340000    # 45.0f

    iput v1, v0, Ll9/b;->n:F

    const/high16 v1, 0x42700000    # 60.0f

    iput v1, v0, Ll9/b;->q:F

    new-instance v1, Ll9/e;

    const v2, 0x7f0b0dc6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-direct {v1, p1, p2, v0}, Ll9/e;-><init>(Landroid/content/Context;Landroid/view/View;Ll9/b;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mBgProcessingLightEffect:Ll9/e;

    return-void
.end method

.method private isOneUi7Style()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isOneUi7Style()Z

    move-result p0

    return p0
.end method

.method private isProcessingEffectSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->a()V

    return-void
.end method

.method public getAnimationShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimationShown:Z

    return p0
.end method

.method public isAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    invoke-virtual {p0}, Lz3/t;->i()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onPlayAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimationShown:Z

    return-void
.end method

.method public startLoadingAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    invoke-virtual {v0}, LL3/c;->removeAllListeners()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->isOneUi7Style()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "intelligence_progress_color_one_ui_7.json"

    goto :goto_0

    :cond_1
    const-string v0, "intelligence_progress_color.json"

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;)V

    iget-object v0, v0, Lcom/airbnb/lottie/LottieAnimationView;->e:Lz3/t;

    iget-object v0, v0, Lz3/t;->b:LL3/c;

    invoke-virtual {v0, v1}, LL3/c;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->isProcessingEffectSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mBgProcessingLightEffect:Ll9/e;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ll9/e;->a()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->d()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mClient:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;->onPlayAnimation()V

    :cond_3
    return-void
.end method

.method public updateVisibility(Z)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimation:Lcom/airbnb/lottie/LottieAnimationView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->mTransAnimationShown:Z

    return-void
.end method
