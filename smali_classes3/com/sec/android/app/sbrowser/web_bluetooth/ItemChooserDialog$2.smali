.class Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->showDialogForView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->d(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$2;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->setIgnorePendingWindowFocusChangeForClose(Z)V

    return-void
.end method
