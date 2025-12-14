.class Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestData"
.end annotation


# instance fields
.field public account:Landroid/accounts/Account;

.field public final accountManager:Landroid/accounts/AccountManager;

.field public final authTokenType:Ljava/lang/String;

.field public final nativeResultObject:J

.field public final options:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(JLandroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    iput-object p3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iput-object p4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    iput-object p5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    return-void
.end method
