.class final Lorg/chromium/content/browser/MessagePayloadJni;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method private static createFromArrayBuffer([B)Lorg/chromium/content_public/browser/MessagePayload;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/MessagePayload;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/MessagePayload;-><init>([B)V

    return-object v0
.end method

.method private static createFromString(Ljava/lang/String;)Lorg/chromium/content_public/browser/MessagePayload;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/browser/MessagePayload;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/browser/MessagePayload;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getAsArrayBuffer(Lorg/chromium/content_public/browser/MessagePayload;)[B
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MessagePayload;->getAsArrayBuffer()[B

    move-result-object p0

    return-object p0
.end method

.method private static getAsString(Lorg/chromium/content_public/browser/MessagePayload;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MessagePayload;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getType(Lorg/chromium/content_public/browser/MessagePayload;)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/content_public/browser/MessagePayload;->getType()I

    move-result p0

    return p0
.end method
