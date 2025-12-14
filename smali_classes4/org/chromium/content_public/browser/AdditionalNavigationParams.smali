.class public Lorg/chromium/content_public/browser/AdditionalNavigationParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mAttributionSrcToken:Lorg/chromium/base/UnguessableToken;

.field private final mInitiatorFrameToken:Lorg/chromium/base/UnguessableToken;

.field private final mInitiatorProcessId:I


# direct methods
.method public constructor <init>(Lorg/chromium/base/UnguessableToken;ILorg/chromium/base/UnguessableToken;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mInitiatorFrameToken:Lorg/chromium/base/UnguessableToken;

    iput p2, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mInitiatorProcessId:I

    iput-object p3, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mAttributionSrcToken:Lorg/chromium/base/UnguessableToken;

    return-void
.end method


# virtual methods
.method public getAttributionSrcToken()Lorg/chromium/base/UnguessableToken;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mAttributionSrcToken:Lorg/chromium/base/UnguessableToken;

    return-object p0
.end method

.method public getInitiatorFrameToken()Lorg/chromium/base/UnguessableToken;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mInitiatorFrameToken:Lorg/chromium/base/UnguessableToken;

    return-object p0
.end method

.method public getInitiatorProcessId()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/browser/AdditionalNavigationParams;->mInitiatorProcessId:I

    return p0
.end method
