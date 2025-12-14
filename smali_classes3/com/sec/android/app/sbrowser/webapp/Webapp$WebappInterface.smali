.class public interface abstract Lcom/sec/android/app/sbrowser/webapp/Webapp$WebappInterface;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/webapp/Webapp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebappInterface"
.end annotation


# virtual methods
.method public abstract getContentViewHolder()Landroid/widget/FrameLayout;
.end method

.method public abstract getLayout()Landroid/widget/FrameLayout;
.end method

.method public abstract hideSplashScreen()V
.end method

.method public abstract initializeInterceptNavigationDelegate(Lcom/sec/terrace/Terrace;)V
.end method

.method public abstract loadUrl(Ljava/lang/String;LK/a;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;)V
.end method
