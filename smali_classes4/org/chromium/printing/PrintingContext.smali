.class public Lorg/chromium/printing/PrintingContext;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/printing/PrintingContext$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mController:Lorg/chromium/printing/PrintingController;

.field private final mNativeObject:J


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    iput-wide p1, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    return-void
.end method

.method private askUserForSettingsReply(Z)V
    .locals 3

    invoke-static {}, Lorg/chromium/printing/PrintingContextJni;->get()Lorg/chromium/printing/PrintingContext$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/printing/PrintingContext$Natives;->askUserForSettingsReply(JLorg/chromium/printing/PrintingContext;Z)V

    return-void
.end method

.method public static create(J)Lorg/chromium/printing/PrintingContext;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Lorg/chromium/printing/PrintingContext;

    invoke-direct {v0, p0, p1}, Lorg/chromium/printing/PrintingContext;-><init>(J)V

    return-object v0
.end method

.method public static pdfWritingDone(I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/printing/PrintingController;->pdfWritingDone(I)V

    return-void
.end method

.method private static setPendingPrint(Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/printing/Printable;II)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/printing/PrintingControllerImpl;->getInstance()Lorg/chromium/printing/PrintingController;

    move-result-object v0

    new-instance v1, Lorg/chromium/printing/PrintManagerDelegateImpl;

    invoke-direct {v1, p0}, Lorg/chromium/printing/PrintManagerDelegateImpl;-><init>(Landroid/app/Activity;)V

    invoke-interface {v0, p1, v1, p2, p3}, Lorg/chromium/printing/PrintingController;->setPendingPrint(Lorg/chromium/printing/Printable;Lorg/chromium/printing/PrintManagerDelegate;II)V

    return-void
.end method

.method private showSystemDialogDone()V
    .locals 3

    invoke-static {}, Lorg/chromium/printing/PrintingContextJni;->get()Lorg/chromium/printing/PrintingContext$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/printing/PrintingContext;->mNativeObject:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/printing/PrintingContext$Natives;->showSystemDialogDone(JLorg/chromium/printing/PrintingContext;)V

    return-void
.end method


# virtual methods
.method public askUserForSettings(I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p1, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p1}, Lorg/chromium/printing/PrintingController;->hasPrintingFinished()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lorg/chromium/printing/PrintingContext;->askUserForSettingsReply(Z)V

    return-void
.end method

.method public getDpi()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->getDpi()I

    move-result p0

    return p0
.end method

.method public getFileDescriptor()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->getFileDescriptor()I

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->getPageHeight()I

    move-result p0

    return p0
.end method

.method public getPages()[I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->getPageNumbers()[I

    move-result-object p0

    return-object p0
.end method

.method public getWidth()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object p0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {p0}, Lorg/chromium/printing/PrintingController;->getPageWidth()I

    move-result p0

    return p0
.end method

.method public showPrintDialog()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/printing/PrintingContext;->mController:Lorg/chromium/printing/PrintingController;

    invoke-interface {v0}, Lorg/chromium/printing/PrintingController;->startPendingPrint()V

    invoke-direct {p0}, Lorg/chromium/printing/PrintingContext;->showSystemDialogDone()V

    return-void
.end method
