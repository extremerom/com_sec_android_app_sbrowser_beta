.class Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$1;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->d()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager$1;->this$0:Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;->a(Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserDialogManager;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/default_browser/DefaultBrowserPreferenceUtils;->updatePopupStatus(Landroid/content/Context;J)V

    return-void
.end method
