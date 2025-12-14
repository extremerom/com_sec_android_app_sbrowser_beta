.class public Lorg/chromium/components/autofill/AutofillProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/autofill/AutofillProfile$Builder;,
        Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mGUID:Ljava/lang/String;

.field private mLabel:Ljava/lang/String;

.field private mLanguageCode:Ljava/lang/String;

.field private mRecordType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProfile;->mGUID:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/components/autofill/AutofillProfile;->mRecordType:I

    iput-object p3, p0, Lorg/chromium/components/autofill/AutofillProfile;->mLanguageCode:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    return-void
.end method

.method private getCountryCode()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const/16 v0, 0x24

    invoke-virtual {p0, v0}, Lorg/chromium/components/autofill/AutofillProfile;->getInfo(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFieldTypes()[I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/base/CollectionUtil;->integerCollectionToIntArray(Ljava/util/Collection;)[I

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getGUID()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mGUID:Ljava/lang/String;

    return-object p0
.end method

.method public getInfo(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInfoStatus(I)I
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;

    invoke-virtual {p0}, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;->getStatus()I

    move-result p0

    return p0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mLanguageCode:Ljava/lang/String;

    return-object p0
.end method

.method public getRecordType()I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mRecordType:I

    return p0
.end method

.method public setInfo(ILjava/lang/String;I)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mFields:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;

    invoke-direct {v0, p2, p3}, Lorg/chromium/components/autofill/AutofillProfile$ValueWithStatus;-><init>(Ljava/lang/String;I)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/autofill/AutofillProfile;->mLabel:Ljava/lang/String;

    return-object p0
.end method
