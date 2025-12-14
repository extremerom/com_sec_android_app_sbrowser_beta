.class public Lorg/chromium/ui/ModalDialogWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/modaldialog/ModalDialogProperties$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/ui/ModalDialogWrapper$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private final mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

.field private final mNativeDelegatePtr:J

.field private final mPropertyModelBuilder:Lorg/chromium/ui/modelutil/PropertyModel$Builder;


# direct methods
.method private constructor <init>(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/ui/ModalDialogWrapper;->mNativeDelegatePtr:J

    invoke-virtual {p3}, Lorg/chromium/ui/base/WindowAndroid;->getModalDialogManager()Lorg/chromium/ui/modaldialog/ModalDialogManager;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/ModalDialogWrapper;->mModalDialogManager:Lorg/chromium/ui/modaldialog/ModalDialogManager;

    new-instance p1, Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    sget-object p2, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->ALL_KEYS:[Lorg/chromium/ui/modelutil/PropertyKey;

    invoke-direct {p1, p2}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;-><init>([Lorg/chromium/ui/modelutil/PropertyKey;)V

    sget-object p2, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->CONTROLLER:Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;

    invoke-virtual {p1, p2, p0}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/ui/ModalDialogWrapper;->mPropertyModelBuilder:Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    return-void
.end method

.method private static create(JLorg/chromium/ui/base/WindowAndroid;)Lorg/chromium/ui/ModalDialogWrapper;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/ui/ModalDialogWrapper;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/ui/ModalDialogWrapper;-><init>(JLorg/chromium/ui/base/WindowAndroid;)V

    return-object v0
.end method

.method private withParagraph1(Ljava/lang/String;)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mPropertyModelBuilder:Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    sget-object v0, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->MESSAGE_PARAGRAPH_1:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    return-void
.end method

.method private withTitleAndButtons(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mPropertyModelBuilder:Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    sget-object v0, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->TITLE:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, v0, p1}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p0

    sget-object p1, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->POSITIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, p1, p2}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p0

    sget-object p1, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->NEGATIVE_BUTTON_TEXT:Lorg/chromium/ui/modelutil/PropertyModel$WritableObjectPropertyKey;

    invoke-virtual {p0, p1, p3}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableObjectPropertyKey;Ljava/lang/Object;)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    move-result-object p0

    sget-object p1, Lorg/chromium/ui/modaldialog/ModalDialogProperties;->BUTTON_STYLES:Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;

    invoke-virtual {p0, p1, p4}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->with(Lorg/chromium/ui/modelutil/PropertyModel$ReadableIntPropertyKey;I)Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    return-void
.end method


# virtual methods
.method public getPropertyModel()Lorg/chromium/ui/modelutil/PropertyModel;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mPropertyModelBuilder:Lorg/chromium/ui/modelutil/PropertyModel$Builder;

    invoke-virtual {p0}, Lorg/chromium/ui/modelutil/PropertyModel$Builder;->build()Lorg/chromium/ui/modelutil/PropertyModel;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Lorg/chromium/ui/modelutil/PropertyModel;I)V
    .locals 2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    invoke-static {}, Lorg/chromium/ui/ModalDialogWrapperJni;->get()Lorg/chromium/ui/ModalDialogWrapper$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mNativeDelegatePtr:J

    invoke-interface {p1, v0, v1}, Lorg/chromium/ui/ModalDialogWrapper$Natives;->dismissed(J)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/ui/ModalDialogWrapperJni;->get()Lorg/chromium/ui/ModalDialogWrapper$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mNativeDelegatePtr:J

    invoke-interface {p1, v0, v1}, Lorg/chromium/ui/ModalDialogWrapper$Natives;->negativeButtonClicked(J)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lorg/chromium/ui/ModalDialogWrapperJni;->get()Lorg/chromium/ui/ModalDialogWrapper$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mNativeDelegatePtr:J

    invoke-interface {p1, v0, v1}, Lorg/chromium/ui/ModalDialogWrapper$Natives;->positiveButtonClicked(J)V

    :goto_0
    invoke-static {}, Lorg/chromium/ui/ModalDialogWrapperJni;->get()Lorg/chromium/ui/ModalDialogWrapper$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/ui/ModalDialogWrapper;->mNativeDelegatePtr:J

    invoke-interface {p1, v0, v1}, Lorg/chromium/ui/ModalDialogWrapper$Natives;->destroy(J)V

    return-void
.end method
