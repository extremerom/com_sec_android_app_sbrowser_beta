.class public Lorg/chromium/window/WindowUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final sWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroidx/window/extensions/WindowExtensionsProvider;->getWindowExtensions()Landroidx/window/extensions/WindowExtensions;

    move-result-object v1

    invoke-interface {v1}, Landroidx/window/extensions/WindowExtensions;->getVendorApiLevel()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    invoke-interface {v1}, Landroidx/window/extensions/WindowExtensions;->getWindowLayoutComponent()Landroidx/window/extensions/layout/WindowLayoutComponent;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    sput-object v0, Lorg/chromium/window/WindowUtil;->sWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    return-void
.end method

.method public static addWindowLayoutInfoListener(Landroid/content/Context;Landroidx/window/extensions/core/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/chromium/window/WindowUtil;->sWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    invoke-interface {v0, p0, p1}, Landroidx/window/extensions/layout/WindowLayoutComponent;->addWindowLayoutInfoListener(Landroid/content/Context;Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lorg/chromium/window/WindowUtil;->sWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/window/extensions/core/util/function/Consumer<",
            "Landroidx/window/extensions/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lorg/chromium/window/WindowUtil;->sWindowLayoutComponent:Landroidx/window/extensions/layout/WindowLayoutComponent;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutComponent;

    invoke-interface {v0, p0}, Landroidx/window/extensions/layout/WindowLayoutComponent;->removeWindowLayoutInfoListener(Landroidx/window/extensions/core/util/function/Consumer;)V

    return-void
.end method
