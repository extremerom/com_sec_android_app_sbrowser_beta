.class Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$3;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$3;->this$0:Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;->f(Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog;)Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;

    move-result-object p0

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/web_bluetooth/ItemChooserDialog$ItemSelectedCallback;->onItemSelected(Ljava/lang/String;)V

    return-void
.end method
