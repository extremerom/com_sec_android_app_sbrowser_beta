.class interface abstract Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/sms/SmsProviderGms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onCancel(J)V
.end method

.method public abstract onNotAvailable(J)V
.end method

.method public abstract onReceive(JLjava/lang/String;I)V
.end method

.method public abstract onTimeout(J)V
.end method
