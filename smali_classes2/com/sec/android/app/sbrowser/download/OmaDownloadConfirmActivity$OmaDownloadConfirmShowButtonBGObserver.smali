.class Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$OmaDownloadConfirmShowButtonBGObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OmaDownloadConfirmShowButtonBGObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$OmaDownloadConfirmShowButtonBGObserver;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$OmaDownloadConfirmShowButtonBGObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "show_button_background"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result p0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;->a(Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;Z)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$OmaDownloadConfirmShowButtonBGObserver;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isShowButtonShapeEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;->a(Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity$OmaDownloadConfirmShowButtonBGObserver;->this$0:Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/OmaDownloadConfirmActivity;->setShowButtonBackground()V

    return-void
.end method
