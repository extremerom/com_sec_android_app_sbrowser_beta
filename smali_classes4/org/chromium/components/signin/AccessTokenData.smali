.class public Lorg/chromium/components/signin/AccessTokenData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final NO_KNOWN_EXPIRATION_TIME:J


# instance fields
.field private final mExpirationTimeSecs:J

.field private final mToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/chromium/components/signin/AccessTokenData;-><init>(Ljava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/signin/AccessTokenData;->mToken:Ljava/lang/String;

    iput-wide p2, p0, Lorg/chromium/components/signin/AccessTokenData;->mExpirationTimeSecs:J

    return-void
.end method


# virtual methods
.method public getExpirationTimeSecs()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/components/signin/AccessTokenData;->mExpirationTimeSecs:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/signin/AccessTokenData;->mToken:Ljava/lang/String;

    return-object p0
.end method
