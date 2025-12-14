.class public final synthetic Lorg/chromium/content/browser/sms/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/e;
.implements LR5/d;


# instance fields
.field public final synthetic a:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/content/browser/sms/SmsVerificationReceiver;Z)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/sms/b;->a:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iput-boolean p2, p0, Lorg/chromium/content/browser/sms/b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/sms/b;->a:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iget-boolean p0, p0, Lorg/chromium/content/browser/sms/b;->b:Z

    invoke-static {v0, p0, p1}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->b(Lorg/chromium/content/browser/sms/SmsVerificationReceiver;ZLjava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lorg/chromium/content/browser/sms/b;->a:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iget-boolean p0, p0, Lorg/chromium/content/browser/sms/b;->b:Z

    invoke-static {v0, p0, p1}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->a(Lorg/chromium/content/browser/sms/SmsVerificationReceiver;ZLjava/lang/Void;)V

    return-void
.end method
