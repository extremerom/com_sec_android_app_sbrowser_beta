.class public abstract Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;


# instance fields
.field private mNativeDialogPointer:J

.field private mPromptResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->sFactory:Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;->createAlertDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->sFactory:Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;->createConfirmDialog(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createFallbackDialog()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$1;

    invoke-direct {v0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$1;-><init>()V

    return-object v0
.end method

.method private static createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->sFactory:Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->createFallbackDialog()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;->createPromptDialog(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;

    move-result-object p0

    return-object p0
.end method

.method private dismiss()V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->onDismiss()V

    iput-wide v2, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    return-void
.end method

.method public static initFactory(Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->sFactory:Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogFactory;

    return-void
.end method

.method private showDialog(Lorg/chromium/ui/base/WindowAndroid;J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p1}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogJni;->get()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, p2, p3, p0, v0}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;->cancel(JLcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;Z)V

    return-void

    :cond_0
    iput-wide p2, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->show(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/String;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mPromptResult:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogJni;->get()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;->accept(JLcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;Ljava/lang/String;)V

    return-void
.end method

.method public cancel(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialogJni;->get()Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mNativeDialogPointer:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog$Natives;->cancel(JLcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;Z)V

    return-void
.end method

.method public getUserInput()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/jsdialog/TerraceJavascriptTabModalDialog;->mPromptResult:Ljava/lang/String;

    return-object p0
.end method

.method public abstract onDismiss()V
.end method

.method public abstract show(Landroid/content/Context;)V
.end method
