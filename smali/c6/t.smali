.class public abstract Lc6/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x1010448

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lc6/t;->a:[I

    return-void
.end method

.method public static a(Landroid/content/Context;)F
    .locals 5

    const-string v0, "context"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x23

    if-lt v2, v3, :cond_c

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v0, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    const-string v3, "wm.currentWindowMetrics"

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, LT6/a;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v3, v0

    invoke-static {v2, v3}, LA2/q;->a(Landroid/util/DisplayMetrics;F)F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fullWindowHeight(dp)="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", fullWindowHeight(px)="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", screenHeightDp="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SeslAppBarHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "orientation="

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fullWindowHeightDp="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p0, v0, :cond_7

    const/high16 p0, 0x44110000    # 580.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/high16 p0, 0x44200000    # 640.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_1

    const v1, 0x3f028f5c    # 0.51f

    goto/16 :goto_0

    :cond_1
    const p0, 0x44278000    # 670.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_2

    const v1, 0x3ef33333    # 0.475f

    goto/16 :goto_0

    :cond_2
    const p0, 0x44318000    # 710.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_3

    const v1, 0x3ee66666    # 0.45f

    goto :goto_0

    :cond_3
    const p0, 0x443b8000    # 750.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_4

    const v1, 0x3ed9999a    # 0.425f

    goto :goto_0

    :cond_4
    const/high16 p0, 0x44480000    # 800.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_5

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_5
    const/high16 p0, 0x44870000    # 1080.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_6

    const v1, 0x3ebd70a4    # 0.37f

    goto :goto_0

    :cond_6
    const v1, 0x3e8a3d71    # 0.27f

    goto :goto_0

    :cond_7
    const p0, 0x441fc000    # 639.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_8

    goto :goto_0

    :cond_8
    const/high16 p0, 0x442e0000    # 696.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_9

    const v1, 0x3ef5c28f    # 0.48f

    goto :goto_0

    :cond_9
    const/high16 p0, 0x44430000    # 780.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_a

    const v1, 0x3edc28f6    # 0.43f

    goto :goto_0

    :cond_a
    const/high16 p0, 0x44700000    # 960.0f

    cmpg-float p0, v2, p0

    if-gez p0, :cond_b

    const v1, 0x3ec28f5c    # 0.38f

    goto :goto_0

    :cond_b
    const v1, 0x3e9c28f6    # 0.305f

    goto :goto_0

    :cond_c
    sget-object p0, LW0/j;->a:Ljava/lang/ThreadLocal;

    const p0, 0x7f07104a

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    :goto_0
    return v1
.end method

.method public static b(Lcom/google/android/material/appbar/AppBarLayout;F)V
    .locals 11

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    new-instance v1, Landroid/animation/StateListAnimator;

    invoke-direct {v1}, Landroid/animation/StateListAnimator;-><init>()V

    const v2, 0x101009e

    const v3, 0x7f0404de

    const v4, -0x7f0404df

    filled-new-array {v2, v3, v4}, [I

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v4, v6, v7

    const-string v8, "elevation"

    invoke-static {p0, v8, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    int-to-long v9, v0

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    filled-new-array {v2}, [I

    move-result-object v0

    new-array v2, v5, [F

    aput p1, v2, v7

    invoke-static {p0, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    new-array p1, v7, [I

    new-array v0, v5, [F

    aput v4, v0, v7

    invoke-static {p0, v8, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method
