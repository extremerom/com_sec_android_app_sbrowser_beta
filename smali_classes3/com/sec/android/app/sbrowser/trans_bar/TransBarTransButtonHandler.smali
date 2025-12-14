.class public Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectFrameLayout:Landroid/widget/FrameLayout;

.field private mIsIconMode:Z

.field private mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

.field private mRootView:Landroid/view/View;

.field private mTransBarTransButton:Landroid/widget/TextView;

.field private mTransIcon:Landroid/widget/ImageView;

.field private mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mIsIconMode:Z

    return-void
.end method

.method private getButtonString(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f140f64

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const p1, 0x7f140671

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private initLightEffect(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isSupportTransBtnGuideEffect()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "TransBarTransButtonHandler"

    const-string p1, "initLightEffect - no light effect supported"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const p1, 0x7f0b0dc8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->showLightEffectAnimation()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private isSupportTransBtnGuideEffect()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isOneUi7Style()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mIsIconMode:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showLightEffectAnimation()V
    .locals 13

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f08079d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f08079c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;

    const/16 p0, 0x10

    invoke-direct {v5, p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;-><init>(I)V

    sget-object v7, Lm9/b;->Common:Lm9/b;

    sget-object v8, Lk9/p;->NONE:Lk9/p;

    sget-object v9, Lk9/n;->NONE:Lk9/n;

    const-wide/16 v10, 0x1f4

    sget-object v12, Lk9/o;->NONE:Lk9/o;

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils;->showLightEffectAnimation(Landroid/view/View;Landroid/graphics/drawable/Drawable;ILcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/LightEffectUtils$CornerRadius;ZLm9/b;Lk9/p;Lk9/n;JLk9/o;)Lk9/r;

    return-void
.end method

.method private toggleGuidingLightEffect(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mEffectFrameLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const-string p0, "TransBarTransButtonHandler"

    const-string p1, "toggleGuidingLightEffect - mEffectFrameLayout null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->showLightEffectAnimation()V

    :cond_2
    return-void
.end method

.method private updateTransIcon(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const v0, 0x7f08036e

    goto :goto_0

    :cond_0
    const v0, 0x7f08036d

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->getButtonString(Z)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverTooltip(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTransIconTint(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f060dbe

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isSupportTransBtnGuideEffect()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const v0, 0x7f060dc1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method private updateTransIconTintV2(ZIZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f060db6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const v1, 0x7f060db5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    if-nez p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f060db8

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    const p2, 0x7f060db7

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public changeTransBtnBgResource(ZI)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isSupportTransBtnGuideEffect()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0807a3

    goto :goto_0

    :cond_0
    const v0, 0x7f0807a7

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const v0, 0x7f0807a5

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const v0, 0x7f0807a6

    goto :goto_1

    :cond_2
    const v0, 0x7f0807a4

    :cond_3
    :goto_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isSupportTransBtnGuideEffect()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->toggleGuidingLightEffect(Z)V

    :cond_4
    return-void
.end method

.method public changeTransBtnStatus(ZIZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->updateTransIcon(Z)V

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->updateTransIconTintV2(ZIZ)V

    return-void
.end method

.method public changeTransBtnText(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isTransAnimationShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->getButtonString(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07166c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->updateTransIcon(Z)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->updateTransIconTint(Z)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    const p1, 0x7f1502ec

    goto :goto_0

    :cond_2
    const p1, 0x7f1502eb

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setButtonContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public changeTransBtnTextColor(ZI)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isSupportTransBtnGuideEffect()Z

    move-result v0

    const v1, 0x7f060dbe

    if-nez v0, :cond_0

    const v0, 0x7f060dbd

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_2

    if-eqz p2, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1

    const v1, 0x7f060dbf

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    const v1, 0x7f060dc0

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public enableWithVisibility(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public endLoadingAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->cancelAnimation()V

    :cond_0
    return-void
.end method

.method public getTranBtnWidth()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTransBtnFrameLayout()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public initializeTransBtn(Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0dc6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$1;-><init>(Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler$ITransBtnCallback;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isTransAnimationAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->isAnimating()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTransAnimationShown()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->getAnimationShown()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFinishInflate(Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0dc5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    const v1, 0x7f0b0dc7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimationClient;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->initLightEffect(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public onLoadingAnimationCancel(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->updateVisibility(Z)V

    :cond_2
    return-void
.end method

.method public onPlayAnimation()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->onPlayAnimation()V

    :cond_0
    return-void
.end method

.method public performAccessibilityAction()V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    return-void
.end method

.method public resetTransBtnLayoutIfNeeded(IFZ)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mIsIconMode:Z

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    if-eqz v1, :cond_1

    const/16 v1, 0xd

    goto :goto_1

    :cond_1
    const/16 v1, 0x28

    :goto_1
    const/16 v3, 0x24c

    if-gt p1, v3, :cond_2

    int-to-float p1, v2

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto :goto_2

    :cond_2
    if-le p1, v3, :cond_3

    int-to-float p1, v1

    mul-float/2addr p1, p2

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    const/high16 p1, 0x40c00000    # 6.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTransBtnWidth(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startLoadingAnimation()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->isTransAnimationShown()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTransBarTransButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mTranslateButtonFrameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarTransButtonHandler;->mLoadingAnimation:Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarLoadingAnimation;->startLoadingAnimation()V

    :cond_1
    return-void
.end method
