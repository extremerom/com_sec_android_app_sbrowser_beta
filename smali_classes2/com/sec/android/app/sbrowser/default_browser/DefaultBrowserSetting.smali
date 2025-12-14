.class public interface abstract Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;
    }
.end annotation


# virtual methods
.method public abstract isSamsungInternetSetAsDefaultBrowser(Landroid/content/Context;)Z
.end method

.method public abstract onResult(Landroid/content/Context;I)V
.end method

.method public abstract setSamsungInternetAsDefaultBrowser(Landroid/content/Context;Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;)V
    .param p2    # Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserSetting$UpdateCallBack;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
