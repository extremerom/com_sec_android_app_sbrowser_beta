.class public interface abstract Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager$SixDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/customize_toolbar/ToolbarExtensionsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SixDelegate"
.end annotation


# virtual methods
.method public abstract getInstanceId(Landroid/content/Context;)I
.end method

.method public abstract getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
.end method

.method public abstract isDefaultExtEnabled(Z)Z
.end method

.method public abstract isSIXEnabled()Z
.end method

.method public abstract isSupportMainSwitch()Z
.end method

.method public abstract reloadExtIfNeeded(Ljava/lang/String;)V
.end method
