.class Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogViewJni;->get()Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;

    invoke-static {v0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->c(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;

    invoke-interface {p1, v0, v1, v2}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$Natives;->onDialogCanceled(JLcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView$1;->this$0:Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;

    invoke-static {p0}, Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;->d(Lcom/sec/terrace/browser/extensions/TinExtensionInstallDialogView;)V

    return-void
.end method
