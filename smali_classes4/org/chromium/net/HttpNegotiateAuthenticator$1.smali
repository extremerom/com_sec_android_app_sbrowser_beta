.class Lorg/chromium/net/HttpNegotiateAuthenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/net/HttpNegotiateAuthenticator;->getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

.field final synthetic val$nativeResultObject:J

.field final synthetic val$principal:Ljava/lang/String;

.field final synthetic val$tmpAuthToken:Ljava/lang/String;

.field final synthetic val$tmpCanDelegate:Z


# direct methods
.method public constructor <init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Ljava/lang/String;Ljava/lang/String;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    iput-object p2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$principal:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$tmpAuthToken:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$tmpCanDelegate:Z

    iput-wide p5, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$nativeResultObject:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lorg/chromium/net/HttpNegotiateAuthenticator;->b()Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

    iget-object v1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$principal:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$tmpAuthToken:Ljava/lang/String;

    invoke-static {v2}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-boolean v3, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$tmpCanDelegate:Z

    invoke-interface {v0, v1, v2, v3}, Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;->getNegotiateToken(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;->get()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->val$nativeResultObject:J

    iget-object v4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator$1;->this$0:Lorg/chromium/net/HttpNegotiateAuthenticator;

    const/16 p0, -0x153

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    move-object v6, v0

    goto :goto_2

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    invoke-interface/range {v1 .. v6}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void
.end method
