.class public Lcom/sec/android/app/sbrowser/scloud/account/AuthenticationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private mAuthenticator:Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/scloud/account/AuthenticationService;->mAuthenticator:Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;

    invoke-virtual {p0}, Landroid/accounts/AbstractAccountAuthenticator;->getIBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/scloud/account/AuthenticationService;->mAuthenticator:Lcom/sec/android/app/sbrowser/scloud/account/Authenticator;

    return-void
.end method
