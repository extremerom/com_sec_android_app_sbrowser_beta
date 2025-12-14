.class public Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerStateListenerForAllActivities(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method private shouldOverrideFullscreenAction(Landroid/app/Activity;)Z
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager$FullScreenActionOverrider;->shouldOverrideFullscreenAction()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterActivityStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceActivityStateListener;)V

    return-void
.end method

.method public onActivityStateChange(Landroid/app/Activity;I)V
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/FullScreenManager;->shouldOverrideFullscreenAction(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreenMode(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public setFullScreenEnabled(Landroid/app/Activity;Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "setFullScreenEnabled : enabled - "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FullScreenManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/common/utils/WindowUtil;->setFullScreen(Landroid/view/Window;Z)V

    return-void
.end method
