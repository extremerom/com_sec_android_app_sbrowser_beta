.class Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialog$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/password_manager/TinAccountChooserDialogJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancelDialog(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYK0I_MP(JLjava/lang/Object;)V

    return-void
.end method

.method public destroy(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mr$QCT6d(JLjava/lang/Object;)V

    return-void
.end method

.method public onCredentialClicked(JLcom/sec/terrace/browser/password_manager/TinAccountChooserDialog;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M51xSULk(JLjava/lang/Object;I)V

    return-void
.end method
