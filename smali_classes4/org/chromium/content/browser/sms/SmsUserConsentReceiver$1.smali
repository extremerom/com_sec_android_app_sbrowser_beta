.class Lorg/chromium/content/browser/sms/SmsUserConsentReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;->listen(Lorg/chromium/ui/base/WindowAndroid;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;


# direct methods
.method public constructor <init>(Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/sms/SmsUserConsentReceiver$1;->this$0:Lorg/chromium/content/browser/sms/SmsUserConsentReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    const-string p0, "SmsUserConsentRcvr"

    const-string v0, "Task failed to start"

    invoke-static {p0, v0, p1}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
