.class public abstract Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate$Natives;
    }
.end annotation


# instance fields
.field private mEmbeddingOrigin:Ljava/lang/String;

.field private mNativePtr:J

.field private mRequestingOrigin:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    iput-object p3, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mRequestingOrigin:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mEmbeddingOrigin:Ljava/lang/String;

    return-void
.end method

.method private static create(IJLjava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegateFactory;->createFromDialogType(IJLjava/lang/String;Ljava/lang/String;)Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getEmbeddingOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mEmbeddingOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getMessage()Ljava/lang/String;
.end method

.method public abstract getNegativeButtonText()Ljava/lang/String;
.end method

.method public abstract getPositiveButtonText()Ljava/lang/String;
.end method

.method public getRequestingOrigin()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mRequestingOrigin:Ljava/lang/String;

    return-object p0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onButtonClicked(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegateJni;->get()Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    invoke-interface {v0, v1, v2, p1}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate$Natives;->onButtonClicked(JI)V

    :cond_0
    return-void
.end method

.method public onDialogDismissed()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegateJni;->get()Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate$Natives;->onDialogDismissed(J)V

    :cond_0
    return-void
.end method

.method public onNativeDestroyed()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/permission_dialog/TinPermissionDialogDelegate;->mNativePtr:J

    return-void
.end method
