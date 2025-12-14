.class public Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/webauthn/FidoIntentSender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/AuthenticatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowIntentSender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender$CallbackWrapper;
    }
.end annotation


# instance fields
.field private final mWindow:Lorg/chromium/ui/base/WindowAndroid;


# direct methods
.method public constructor <init>(Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    return-void
.end method


# virtual methods
.method public showIntent(Landroid/app/PendingIntent;Lorg/chromium/base/Callback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Lorg/chromium/base/Callback<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/content/Intent;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender;->mWindow:Lorg/chromium/ui/base/WindowAndroid;

    new-instance v0, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender$CallbackWrapper;

    invoke-direct {v0, p2}, Lorg/chromium/components/webauthn/AuthenticatorImpl$WindowIntentSender$CallbackWrapper;-><init>(Lorg/chromium/base/Callback;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/chromium/ui/base/WindowAndroid;->showCancelableIntent(Landroid/app/PendingIntent;Lorg/chromium/ui/base/WindowAndroid$IntentCallback;Ljava/lang/Integer;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
