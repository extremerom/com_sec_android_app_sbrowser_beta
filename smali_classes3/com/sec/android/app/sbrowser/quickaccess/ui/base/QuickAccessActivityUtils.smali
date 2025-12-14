.class public Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isActivityInvalidState(Landroid/app/Activity;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static toActivity(Landroid/content/Context;)Lm/n;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    instance-of v0, p0, Lm/n;

    if-eqz v0, :cond_0

    check-cast p0, Lm/n;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
