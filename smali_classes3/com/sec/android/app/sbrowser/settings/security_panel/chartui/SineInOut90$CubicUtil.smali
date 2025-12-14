.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90$CubicUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CubicUtil"
.end annotation


# direct methods
.method public static toInterpolator([F)Landroid/view/animation/Interpolator;
    .locals 4

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget p0, p0, v3

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-object v3
.end method
