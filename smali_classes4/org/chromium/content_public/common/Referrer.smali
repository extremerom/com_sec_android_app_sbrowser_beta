.class public Lorg/chromium/content_public/common/Referrer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mPolicy:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content_public/common/Referrer;->mUrl:Ljava/lang/String;

    iput p2, p0, Lorg/chromium/content_public/common/Referrer;->mPolicy:I

    return-void
.end method


# virtual methods
.method public getPolicy()I
    .locals 0

    iget p0, p0, Lorg/chromium/content_public/common/Referrer;->mPolicy:I

    return p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/content_public/common/Referrer;->mUrl:Ljava/lang/String;

    return-object p0
.end method
