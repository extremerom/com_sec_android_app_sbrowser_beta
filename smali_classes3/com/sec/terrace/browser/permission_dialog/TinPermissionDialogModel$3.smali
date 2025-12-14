.class Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;->addDialog(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

.field final synthetic val$delegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

.field final synthetic val$service:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->this$0:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    iput-object p2, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->val$delegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    iput-object p3, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->val$service:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->val$delegate:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->onDialogDismissed()V

    iget-object p1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->this$0:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;

    iget-object p0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel$3;->val$service:Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;->a(Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogModel;Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogService;)V

    return-void
.end method
