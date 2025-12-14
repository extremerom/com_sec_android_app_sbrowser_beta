.class public Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

.field private mNativePtr:J


# direct methods
.method public constructor <init>(Lorg/chromium/ui/modaldialog/ModalDialogManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    invoke-static {}, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridgeJni;->get()Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge$Natives;->create(Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mNativePtr:J

    return-void
.end method

.method private dismissDialog(Lorg/chromium/ui/ModalDialogWrapper;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    invoke-virtual {p1}, Lorg/chromium/ui/ModalDialogWrapper;->getPropertyModel()Lorg/chromium/ui/modelutil/PropertyModel;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->dismissDialog(Lorg/chromium/ui/modelutil/PropertyModel;I)V

    return-void
.end method

.method private resumeModalDialogs(II)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->resumeType(II)V

    return-void
.end method

.method private showDialog(Lorg/chromium/ui/ModalDialogWrapper;I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    invoke-virtual {p1}, Lorg/chromium/ui/ModalDialogWrapper;->getPropertyModel()Lorg/chromium/ui/modelutil/PropertyModel;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->showDialog(Lorg/chromium/ui/modelutil/PropertyModel;I)V

    return-void
.end method

.method private suspendModalDialogs(I)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    invoke-virtual {p0, p1}, Lorg/chromium/ui/modaldialog/ModalDialogManager;->suspendType(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getNativePtr()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/ui/modaldialog/ModalDialogManagerBridge;->mNativePtr:J

    return-wide v0
.end method
