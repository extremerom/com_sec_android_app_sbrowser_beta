.class public abstract Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getScreenPixelDensity(Landroid/content/Context;)Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;
    .locals 2
    .annotation build Lcom/google/cardboard/sdk/UsedByNative;
    .end annotation

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils;->isAtLeastR()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, LT6/a;->k(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    goto :goto_0

    :cond_0
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    :goto_0
    new-instance p0, Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;

    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-direct {p0, v1, v0}, Lcom/google/cardboard/sdk/screenparams/ScreenParamsUtils$ScreenPixelDensity;-><init>(FF)V

    return-object p0
.end method

.method private static isAtLeastR()Z
    .locals 2
    .annotation build Landroidx/annotation/ChecksSdkIntAtLeast;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
