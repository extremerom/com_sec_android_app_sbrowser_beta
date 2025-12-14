.class public Lorg/chromium/components/autofill/AutofillAddressUiComponent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field public final id:I

.field public final isFullLine:Z

.field public final isRequired:Z

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ZZ)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->id:I

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->label:Ljava/lang/String;

    iput-boolean p3, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->isRequired:Z

    iput-boolean p4, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->isFullLine:Z

    return-void
.end method

.method private getFieldType()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->id:I

    return p0
.end method

.method private getLabel()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->label:Ljava/lang/String;

    return-object p0
.end method

.method private isFullLine()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->isFullLine:Z

    return p0
.end method

.method private isRequired()Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-boolean p0, p0, Lorg/chromium/components/autofill/AutofillAddressUiComponent;->isRequired:Z

    return p0
.end method
