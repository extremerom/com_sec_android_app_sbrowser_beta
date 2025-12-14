.class public Lorg/chromium/ui/widget/Toast;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/widget/Toast$Builder;,
        Lorg/chromium/ui/widget/Toast$ToastPriority;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I

.field private static sExtraYOffset:I


# instance fields
.field private mPriority:I

.field private mSWLayout:Landroid/view/ViewGroup;

.field private mText:Ljava/lang/CharSequence;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/FrameLayout;

    new-instance v1, Lorg/chromium/ui/widget/Toast$1;

    invoke-direct {v1, p0, p1}, Lorg/chromium/ui/widget/Toast$1;-><init>(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    :cond_0
    invoke-static {}, Lorg/chromium/ui/widget/UiWidgetFactory;->getInstance()Lorg/chromium/ui/widget/UiWidgetFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/chromium/ui/widget/UiWidgetFactory;->createToast(Landroid/content/Context;)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/Toast;->setView(Landroid/view/View;)V

    iget-object p1, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->getGravity()I

    move-result p2

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getXOffset()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getYOffset()I

    move-result p0

    sget v1, Lorg/chromium/ui/widget/Toast;->sExtraYOffset:I

    add-int/2addr p0, v1

    invoke-virtual {p1, p2, v0, p0}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/ui/widget/Toast;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/widget/Toast;->anchor(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method private anchor(Landroid/content/Context;Landroid/view/View;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    invoke-static {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getNonMultiDisplay(Landroid/content/Context;)Lorg/chromium/ui/display/DisplayAndroid;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/chromium/ui/display/DisplayAndroid;->getDisplayHeight()I

    move-result p1

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p2, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    const/4 v4, 0x0

    aget v5, v2, v4

    div-int/lit8 v6, v0, 0x2

    const/4 v7, 0x1

    if-ge v5, v6, :cond_0

    move v4, v7

    :cond_0
    const/4 v6, 0x3

    if-eqz v4, :cond_1

    move v8, v6

    goto :goto_0

    :cond_1
    const/4 v8, 0x5

    :goto_0
    if-eqz v4, :cond_2

    div-int/2addr v3, v1

    add-int/2addr v3, v5

    goto :goto_1

    :cond_2
    sub-int/2addr v0, v5

    div-int/2addr v3, v1

    sub-int v3, v0, v3

    :goto_1
    aget v0, v2, v7

    div-int/2addr p1, v1

    if-ge v0, p1, :cond_3

    div-int/2addr p2, v1

    add-int/2addr p2, v0

    goto :goto_2

    :cond_3
    mul-int/2addr p2, v6

    div-int/2addr p2, v1

    sub-int p2, v0, p2

    :goto_2
    or-int/lit8 p1, v8, 0x30

    invoke-virtual {p0, p1, v3, p2}, Lorg/chromium/ui/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lorg/chromium/ui/widget/Toast;
    .locals 1

    new-instance v0, Lorg/chromium/ui/widget/Toast$Builder;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/Toast$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lorg/chromium/ui/widget/Toast$Builder;->withTextStringRes(I)Lorg/chromium/ui/widget/Toast$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/Toast$Builder;->withDuration(I)Lorg/chromium/ui/widget/Toast$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast$Builder;->build()Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lorg/chromium/ui/widget/Toast;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    new-instance v0, Lorg/chromium/ui/widget/Toast$Builder;

    invoke-direct {v0, p0}, Lorg/chromium/ui/widget/Toast$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lorg/chromium/ui/widget/Toast$Builder;->withText(Ljava/lang/CharSequence;)Lorg/chromium/ui/widget/Toast$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/chromium/ui/widget/Toast$Builder;->withDuration(I)Lorg/chromium/ui/widget/Toast$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/chromium/ui/widget/Toast$Builder;->build()Lorg/chromium/ui/widget/Toast;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getAndroidToast()Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method public getDuration()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->getDuration()I

    move-result p0

    return p0
.end method

.method public getPriority()I
    .locals 0

    iget p0, p0, Lorg/chromium/ui/widget/Toast;->mPriority:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDuration(I)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setDuration(I)V

    return-void
.end method

.method public setGravity(III)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    iput p1, p0, Lorg/chromium/ui/widget/Toast;->mPriority:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/ui/widget/Toast;->mText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    const/4 v1, -0x2

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mSWLayout:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/ui/widget/Toast;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    invoke-static {}, Lorg/chromium/ui/widget/ToastManager;->getInstance()Lorg/chromium/ui/widget/ToastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/chromium/ui/widget/ToastManager;->requestShow(Lorg/chromium/ui/widget/Toast;)V

    return-void
.end method
