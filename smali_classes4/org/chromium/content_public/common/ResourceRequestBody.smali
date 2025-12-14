.class public final Lorg/chromium/content_public/common/ResourceRequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/common/ResourceRequestBody$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mEncodedNativeForm:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/common/ResourceRequestBody;->mEncodedNativeForm:[B

    return-void
.end method

.method public static createFromBytes([B)Lorg/chromium/content_public/common/ResourceRequestBody;
    .locals 1

    invoke-static {}, Lorg/chromium/content_public/common/ResourceRequestBodyJni;->get()Lorg/chromium/content_public/common/ResourceRequestBody$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/chromium/content_public/common/ResourceRequestBody$Natives;->createResourceRequestBodyFromBytes([B)[B

    move-result-object p0

    invoke-static {p0}, Lorg/chromium/content_public/common/ResourceRequestBody;->createFromEncodedNativeForm([B)Lorg/chromium/content_public/common/ResourceRequestBody;

    move-result-object p0

    return-object p0
.end method

.method private static createFromEncodedNativeForm([B)Lorg/chromium/content_public/common/ResourceRequestBody;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content_public/common/ResourceRequestBody;

    invoke-direct {v0, p0}, Lorg/chromium/content_public/common/ResourceRequestBody;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getEncodedNativeForm()[B
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/content_public/common/ResourceRequestBody;->mEncodedNativeForm:[B

    return-object p0
.end method
