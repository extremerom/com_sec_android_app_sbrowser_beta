.class Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/signin/AccountManagerFacade$GetAccessTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;->getAccessTokenFromNative(Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;->this$0:Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate;

    iput-wide p2, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetTokenFailure(Z)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;->get()Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;

    move-result-object v0

    const-wide/16 v2, 0x0

    iget-wide v5, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;->val$nativeCallback:J

    const/4 v1, 0x0

    move v4, p1

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;->onOAuth2TokenFetched(Ljava/lang/String;JZJ)V

    return-void
.end method

.method public onGetTokenSuccess(Lorg/chromium/components/signin/AccessTokenData;)V
    .locals 7

    invoke-static {}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegateJni;->get()Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lorg/chromium/components/signin/AccessTokenData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/chromium/components/signin/AccessTokenData;->getExpirationTimeSecs()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-wide v5, p0, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$1;->val$nativeCallback:J

    invoke-interface/range {v0 .. v6}, Lorg/chromium/components/signin/identitymanager/ProfileOAuth2TokenServiceDelegate$Natives;->onOAuth2TokenFetched(Ljava/lang/String;JZJ)V

    return-void
.end method
