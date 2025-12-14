.class public Lorg/chromium/components/signin/base/AccountInfo$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/signin/base/AccountInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAccountCapabilities:Lorg/chromium/components/signin/base/AccountCapabilities;

.field private mAccountImage:Landroid/graphics/Bitmap;

.field private mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

.field private mFullName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mHostedDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mFullName:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mGivenName:Ljava/lang/String;

    new-instance v0, Lorg/chromium/components/signin/base/AccountCapabilities;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/chromium/components/signin/base/AccountCapabilities;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mAccountCapabilities:Lorg/chromium/components/signin/base/AccountCapabilities;

    invoke-static {p1, p2}, Lorg/chromium/components/signin/base/CoreAccountInfo;->createFromEmailAndGaiaId(Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;)Lorg/chromium/components/signin/base/CoreAccountInfo;

    move-result-object p1

    iput-object p1, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    return-void
.end method


# virtual methods
.method public build()Lorg/chromium/components/signin/base/AccountInfo;
    .locals 11

    new-instance v10, Lorg/chromium/components/signin/base/AccountInfo;

    iget-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getId()Lorg/chromium/components/signin/base/CoreAccountId;

    move-result-object v1

    iget-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mCoreAccountInfo:Lorg/chromium/components/signin/base/CoreAccountInfo;

    invoke-virtual {v0}, Lorg/chromium/components/signin/base/CoreAccountInfo;->getGaiaId()Lorg/chromium/components/signin/base/GaiaId;

    move-result-object v3

    iget-object v4, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mFullName:Ljava/lang/String;

    iget-object v5, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mGivenName:Ljava/lang/String;

    iget-object v6, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mHostedDomain:Ljava/lang/String;

    iget-object v7, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mAccountImage:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lorg/chromium/components/signin/base/AccountInfo$Builder;->mAccountCapabilities:Lorg/chromium/components/signin/base/AccountCapabilities;

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/chromium/components/signin/base/AccountInfo;-><init>(Lorg/chromium/components/signin/base/CoreAccountId;Ljava/lang/String;Lorg/chromium/components/signin/base/GaiaId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lorg/chromium/components/signin/base/AccountCapabilities;I)V

    return-object v10
.end method
