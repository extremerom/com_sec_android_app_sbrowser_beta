.class public abstract Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;


# instance fields
.field private mNativeDialogPointer:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;->createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createBeforeUnloadDialog(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;->createBeforeUnloadDialog(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$1;

    invoke-direct {v0}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$1;-><init>()V

    return-object v0
.end method

.method private static createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;->createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private dismiss()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->onDismiss()V

    iput-wide v2, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    return-void
.end method

.method public static initFactory(Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->sFactory:Lcom/sec/terrace/browser/app_modal/TerraceJavascriptDialogFactory;

    return-void
.end method

.method private showJavascriptAppModalDialog(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;->get()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, p0, v0}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;->didCancelAppModalDialog(JLcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;Z)V

    return-void

    :cond_0
    iput-wide p2, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->show(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;->get()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;->didCancelAppModalDialog(JLcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;Z)V

    return-void
.end method

.method public confirm(Ljava/lang/String;Z)V
    .locals 7

    iget-wide v0, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialogJni;->get()Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;->mNativeDialogPointer:J

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v6}, Lcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog$Natives;->didAcceptAppModalDialog(JLcom/sec/terrace/browser/app_modal/TerraceJavascriptAppModalDialog;Ljava/lang/String;Z)V

    return-void
.end method

.method public abstract onDismiss()V
.end method

.method public abstract show(Landroid/content/Context;)V
.end method
