.class public Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/mikephil/charting/animation/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90$CubicUtil;
    }
.end annotation


# instance fields
.field mCubic:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90$CubicUtil;->toInterpolator([F)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;->mCubic:Landroid/view/animation/Interpolator;

    return-void

    :array_0
    .array-data 4
        0x3ea8f5c3    # 0.33f
        0x0
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/security_panel/chartui/SineInOut90;->mCubic:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
