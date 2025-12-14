.class public Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;
.super Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MM]MPHoverListener"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mShouldBlockPopup:Z

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mShouldBlockPopup:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->createHoverTextView(I)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mShouldBlockPopup:Z

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->createHoverTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private createHoverTextView(I)Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7f0e04c4

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setHighContrastThemeIfNeeded(Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private createHoverTextView(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const v2, 0x7f0e04c4

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setHighContrastThemeIfNeeded(Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method private setHighContrastThemeIfNeeded(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mContext:Landroid/content/Context;

    const v0, 0x7f0602ef

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    const p0, 0x7f080769

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoView;->getHoverPopupWindow(Landroid/view/View;)Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->setHoverPopupListener(Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow$HoverPopupListener;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy. FallbackException : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onSetContentView(Landroid/view/View;Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;)Z
    .locals 1

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->setContent(Landroid/view/View;)V

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mShouldBlockPopup:Z

    if-eqz p0, :cond_1

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->dismiss()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->TAG:Ljava/lang/String;

    const-string p1, "hoverPopupWindow is not available."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onSetContentView. FallbackException : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOnHoverListener(Landroid/view/View;Landroid/view/View$OnHoverListener;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mShouldBlockPopup:Z

    instance-of p0, p1, Landroid/widget/TextView;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/HoverPopupWindow;->TYPE_NONE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setHoverPopupType(Landroid/view/View;Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;)V

    invoke-static {p1, p3}, Lcom/sec/android/app/sbrowser/tooltip/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->createHoverTextView(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/common/MPHoverListener;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
