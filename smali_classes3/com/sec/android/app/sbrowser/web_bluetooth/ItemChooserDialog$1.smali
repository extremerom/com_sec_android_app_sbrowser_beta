.class Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemChooserLabels;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->f(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->e(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemAdapter;->getSelectedItemKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;->onItemSelected(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->c(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$1;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->c(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
