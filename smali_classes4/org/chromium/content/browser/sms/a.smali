.class public final synthetic Lorg/chromium/content/browser/sms/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/content/browser/sms/a;->a:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    return-void
.end method


# virtual methods
.method public final onIntentCompleted(ILandroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/content/browser/sms/a;->a:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    invoke-static {p0, p1, p2}, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->a(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;ILandroid/content/Intent;)V

    return-void
.end method
