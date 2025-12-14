.class public Lcom/sec/terrace/browser/printing/TinPrinter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/printing/Printable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/printing/TinPrinter$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mDefaultTitle:Ljava/lang/String;

.field private final mErrorMessage:Ljava/lang/String;

.field private final mTerrace:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sec/terrace/Terrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mTerrace:Ljava/lang/ref/WeakReference;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$string;->menu_print:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mDefaultTitle:Ljava/lang/String;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$string;->error_printing_failed:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public static getPrintable(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/browser/printing/TinPrinter;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/printing/TinPrinter;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/printing/TinPrinter;-><init>(Lcom/sec/terrace/Terrace;)V

    return-object v0
.end method


# virtual methods
.method public canPrint()Z
    .locals 3

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mTerrace:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/Terrace;

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "Terrace is not avaliable for printing."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "printing"

    invoke-static {v2, p0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getDefaultTitle()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mDefaultTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mErrorMessage:Ljava/lang/String;

    return-object p0
.end method

.method public getPdfFilePath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mTerrace:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/terrace/TerraceHelper;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mDefaultTitle:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mDefaultTitle:Ljava/lang/String;

    return-object p0
.end method

.method public print(II)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/printing/TinPrinter;->canPrint()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TinPrinter;->mTerrace:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/Terrace;

    invoke-static {}, Lcom/sec/terrace/browser/printing/TinPrinterJni;->get()Lcom/sec/terrace/browser/printing/TinPrinter$Natives;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/printing/TinPrinter$Natives;->print(Lorg/chromium/content_public/browser/WebContents;II)Z

    move-result p0

    return p0
.end method
