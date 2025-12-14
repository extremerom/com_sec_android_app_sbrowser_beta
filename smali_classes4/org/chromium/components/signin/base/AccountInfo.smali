.class public Lorg/chromium/components/signin/base/AccountInfo;
.super Lorg/chromium/components/signin/base/CoreAccountInfo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/signin/base/AccountInfo$Builder;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mAccountCapabilities:Lorg/chromium/components/signin/base/AccountCapabilities;

.field private final mAccountImage:Landroid/graphics/Bitmap;

.field private final mFullName:Ljava/lang/String;

.field private final mGivenName:Ljava/lang/String;

.field private final mHostedDomain:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/components/signin/base/AccountCapabilities;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lorg/chromium/components/signin/base/CoreAccountInfo;-><init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)V

    iput-object p4, p0, Lorg/chromium/components/signin/base/AccountInfo;->mFullName:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/components/signin/base/AccountInfo;->mGivenName:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/components/signin/base/AccountInfo;->mHostedDomain:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/components/signin/base/AccountInfo;->mAccountImage:Landroid/graphics/Bitmap;

    iput-object p8, p0, Lorg/chromium/components/signin/base/AccountInfo;->mAccountCapabilities:Lorg/chromium/components/signin/base/AccountCapabilities;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/components/signin/base/AccountCapabilities;I)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lorg/chromium/components/signin/base/AccountInfo;-><init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/components/signin/base/AccountCapabilities;)V

    return-void
.end method

.method private getRawHostedDomain()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/AccountInfo;->mHostedDomain:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/AccountInfo;->mFullName:Ljava/lang/String;

    return-object p0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/signin/base/AccountInfo;->mGivenName:Ljava/lang/String;

    return-object p0
.end method
