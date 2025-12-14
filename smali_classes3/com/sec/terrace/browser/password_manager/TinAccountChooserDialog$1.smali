.class Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCredentials()[Lcom/sec/terrace/browser/password_manager/TerraceCredential;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-static {p0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->a(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)[Lcom/sec/terrace/browser/password_manager/TerraceCredential;

    move-result-object p0

    return-object p0
.end method

.method public onCancelDialog()V
    .locals 3

    const-string v0, "TinAccountChooserDialog"

    const-string v1, "onCancelDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;->get()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-static {v1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->b(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;->cancelDialog(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V

    return-void
.end method

.method public onCredentialClicked(I)V
    .locals 3

    const-string v0, "onCredentialChoosen index="

    const-string v1, "TinAccountChooserDialog"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;->get()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-static {v1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->b(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;->onCredentialClicked(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "TinAccountChooserDialog"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;->get()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-static {v1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->b(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)J

    move-result-wide v1

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;->destroy(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V

    return-void
.end method

.method public setAccountChooserDialogImpl(Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$1;->this$0:Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;->c(Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;Lcom/sec/terrace/browser/password_manager/TerraceAccountChooserDialogImpl;)V

    return-void
.end method
