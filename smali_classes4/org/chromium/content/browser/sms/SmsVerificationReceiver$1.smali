.class Lorg/chromium/content/browser/sms/SmsVerificationReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->onRetrieverTaskFailure(ZLjava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

.field final synthetic val$isLocalRequest:Z


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/sms/SmsVerificationReceiver;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsVerificationReceiver$1;->this$0:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iput-boolean p2, p0, Lorg/chromium/content/browser/sms/SmsVerificationReceiver$1;->val$isLocalRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(ILandroid/content/Intent;)V
    .locals 0

    iget-object p2, p0, Lorg/chromium/content/browser/sms/SmsVerificationReceiver$1;->this$0:Lorg/chromium/content/browser/sms/SmsVerificationReceiver;

    iget-boolean p0, p0, Lorg/chromium/content/browser/sms/SmsVerificationReceiver$1;->val$isLocalRequest:Z

    invoke-virtual {p2, p1, p0}, Lorg/chromium/content/browser/sms/SmsVerificationReceiver;->onPermissionDone(IZ)V

    return-void
.end method
