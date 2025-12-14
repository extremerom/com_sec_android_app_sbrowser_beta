.class public Lorg/chromium/components/autofill/AutofillAddressEditorUiInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mBestLanguageTag:Ljava/lang/String;

.field private mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/AutofillAddressUiComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/AutofillAddressUiComponent;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillAddressEditorUiInfo;->mBestLanguageTag:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/autofill/AutofillAddressEditorUiInfo;->mComponents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBestLanguageTag()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillAddressEditorUiInfo;->mBestLanguageTag:Ljava/lang/String;

    return-object p0
.end method

.method public getComponents()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/chromium/components/autofill/AutofillAddressUiComponent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillAddressEditorUiInfo;->mComponents:Ljava/util/List;

    return-object p0
.end method
