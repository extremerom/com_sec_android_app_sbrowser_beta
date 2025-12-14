.class public Lcom/sec/terrace/browser/printing/TerracePrintingController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sTerracePrintingController:Lcom/sec/terrace/browser/printing/TerracePrintingController;


# instance fields
.field private final mPrintingController:Lorg/chromium/printing/PrintingController;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/terrace/browser/printing/TerracePrintingController;
    .locals 0

    sget-object p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->sTerracePrintingController:Lcom/sec/terrace/browser/printing/TerracePrintingController;

    if-nez p0, :cond_0

    new-instance p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;

    invoke-direct {p0}, Lcom/sec/terrace/browser/printing/TerracePrintingController;-><init>()V

    sput-object p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->sTerracePrintingController:Lcom/sec/terrace/browser/printing/TerracePrintingController;

    :cond_0
    sget-object p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->sTerracePrintingController:Lcom/sec/terrace/browser/printing/TerracePrintingController;

    return-object p0
.end method


# virtual methods
.method public getPrintingController()Lorg/chromium/printing/PrintingController;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    return-object p0
.end method

.method public isBusy()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->isBusy()Z

    move-result p0

    return p0
.end method

.method public isPdfWritingInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->isPdfWritingInProgress()Z

    move-result p0

    return p0
.end method

.method public reset()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->reset()V

    return-void
.end method

.method public startPrint(Lcom/sec/terrace/Terrace;Landroid/content/Context;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/printing/TerracePrintingController;->mPrintingController:Lorg/chromium/printing/PrintingController;

    new-instance v0, Lcom/sec/terrace/browser/printing/TinPrinter;

    invoke-direct {v0, p1}, Lcom/sec/terrace/browser/printing/TinPrinter;-><init>(Lcom/sec/terrace/Terrace;)V

    new-instance p1, Lorg/chromium/printing/PrintManagerDelegateImpl;

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p1, p2}, Lorg/chromium/printing/PrintManagerDelegateImpl;-><init>(Landroid/app/Activity;)V

    invoke-interface {p0, v0, p1}, Lorg/chromium/printing/PrintingController;->startPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;)V

    return-void
.end method
