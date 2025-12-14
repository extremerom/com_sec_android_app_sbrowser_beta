.class public Lorg/chromium/net/HttpNegotiateAuthenticator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;,
        Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sKerberosAuthenticator:Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

.field private static sThread:Landroid/os/HandlerThread;


# instance fields
.field private final mAccountType:Ljava/lang/String;

.field private mSpnegoContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HttpNegotiateAuthenticator"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sThread:Landroid/os/HandlerThread;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/net/HttpNegotiateAuthenticator;Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/net/HttpNegotiateAuthenticator;->processResult(Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    return-void
.end method

.method public static bridge synthetic b()Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;
    .locals 1

    sget-object v0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sKerberosAuthenticator:Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lorg/chromium/net/HttpNegotiateAuthenticator;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    new-instance v0, Lorg/chromium/net/HttpNegotiateAuthenticator;

    invoke-direct {v0, p0}, Lorg/chromium/net/HttpNegotiateAuthenticator;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private processResult(Landroid/os/Bundle;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V
    .locals 8

    const-string v0, "spnegoContext"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->mSpnegoContext:Landroid/os/Bundle;

    const-string v0, "spnegoResult"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x9

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    move v6, v1

    goto :goto_1

    :pswitch_1
    const/16 v1, -0x149

    goto :goto_0

    :pswitch_2
    const/16 v1, -0x158

    goto :goto_0

    :pswitch_3
    const/16 v1, -0x155

    goto :goto_0

    :pswitch_4
    const/16 v1, -0x153

    goto :goto_0

    :pswitch_5
    const/16 v1, -0x152

    goto :goto_0

    :pswitch_6
    const/16 v1, -0x140

    goto :goto_0

    :pswitch_7
    const/16 v1, -0x156

    goto :goto_0

    :pswitch_8
    const/4 v1, -0x3

    goto :goto_0

    :pswitch_9
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    invoke-static {}, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;->get()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v2

    iget-wide v3, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const-string p2, "authtoken"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, p0

    invoke-interface/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private requestTokenWithActivity(Landroid/content/Context;Landroid/app/Activity;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v3, p0

    move-object/from16 v0, p3

    const-string v1, "android.permission.GET_ACCOUNTS"

    const/4 v2, 0x0

    move-object/from16 v4, p1

    invoke-virtual {v3, v4, v1, v2}, Lorg/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "net_auth"

    const-string v4, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: %s permission not granted. Aborting authentication"

    invoke-static {v2, v4, v1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;->get()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v1

    iget-wide v4, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v6, -0x157

    const/4 v7, 0x0

    move-object v0, v1

    move-wide v1, v4

    move-object/from16 v3, p0

    move v4, v6

    move-object v5, v7

    invoke-interface/range {v0 .. v5}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v8, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v9, v3, Lorg/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    iget-object v10, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->authTokenType:Ljava/lang/String;

    iget-object v14, v0, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->options:Landroid/os/Bundle;

    new-instance v15, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;

    invoke-direct {v15, v3, v0}, Lorg/chromium/net/HttpNegotiateAuthenticator$GetTokenCallback;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v13, 0x0

    move-object/from16 v11, p4

    move-object/from16 v12, p2

    move-object/from16 v16, v0

    invoke-virtual/range {v8 .. v16}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method private requestTokenWithoutActivity(Landroid/content/Context;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V
    .locals 6

    const-string v0, "android.permission.GET_ACCOUNTS"

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "net_auth"

    const-string p3, "ERR_MISCONFIGURED_AUTH_ENVIRONMENT: GET_ACCOUNTS permission not granted. Aborting authentication."

    invoke-static {p1, p3}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/net/HttpNegotiateAuthenticatorJni;->get()Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;

    move-result-object v0

    iget-wide v1, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->nativeResultObject:J

    const/16 v4, -0x157

    const/4 v5, 0x0

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lorg/chromium/net/HttpNegotiateAuthenticator$Natives;->setResult(JLorg/chromium/net/HttpNegotiateAuthenticator;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p2, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;->accountManager:Landroid/accounts/AccountManager;

    iget-object v0, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->mAccountType:Ljava/lang/String;

    new-instance v1, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;

    invoke-direct {v1, p0, p2}, Lorg/chromium/net/HttpNegotiateAuthenticator$GetAccountsCallback;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;)V

    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->getUiThreadLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p1, v0, p3, v1, p0}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public static setKerberosAuthenticator(Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;)V
    .locals 0

    sput-object p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sKerberosAuthenticator:Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

    return-void
.end method


# virtual methods
.method public getNextAuthToken(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    sget-object v0, Lorg/chromium/net/HttpNegotiateAuthenticator;->sKerberosAuthenticator:Lorg/chromium/net/HttpNegotiateAuthenticator$KerberosAuthenticator;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/chromium/net/HttpNegotiateAuthenticator;->sThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lorg/chromium/net/HttpNegotiateAuthenticator$1;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lorg/chromium/net/HttpNegotiateAuthenticator$1;-><init>(Lorg/chromium/net/HttpNegotiateAuthenticator;Ljava/lang/String;Ljava/lang/String;ZJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SPNEGO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    if-eqz p4, :cond_1

    const-string v2, "incomingAuthToken"

    invoke-virtual {v6, v2, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p4, p0, Lorg/chromium/net/HttpNegotiateAuthenticator;->mSpnegoContext:Landroid/os/Bundle;

    if-eqz p4, :cond_2

    const-string v2, "spnegoContext"

    invoke-virtual {v6, v2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    const-string p4, "canDelegate"

    invoke-virtual {v6, p4, p5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p4, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v5

    const-string p5, "SPNEGO:HOSTBASED:"

    invoke-static {p5, p3}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, p4

    move-wide v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;-><init>(JLandroid/accounts/AccountManager;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-direct {p0, v0, p4, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->requestTokenWithoutActivity(Landroid/content/Context;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, p1, p4, v1}, Lorg/chromium/net/HttpNegotiateAuthenticator;->requestTokenWithActivity(Landroid/content/Context;Landroid/app/Activity;Lorg/chromium/net/HttpNegotiateAuthenticator$RequestData;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public lacksPermission(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    if-eqz p3, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method
