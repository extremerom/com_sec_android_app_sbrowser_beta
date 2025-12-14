.class Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initToolbarExtensionManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInstanceId(Landroid/content/Context;)I
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstanceId(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p0

    return-object p0
.end method

.method public isDefaultExtEnabled(Z)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public isSIXEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public isSupportMainSwitch()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result p0

    return p0
.end method

.method public reloadExtIfNeeded(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->reloadExt(Ljava/lang/String;)V

    return-void
.end method
