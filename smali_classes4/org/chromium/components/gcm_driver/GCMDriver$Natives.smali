.class interface abstract Lorg/chromium/components/gcm_driver/GCMDriver$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/gcm_driver/GCMDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract onMessageReceived(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
.end method

.method public abstract onRegisterFinished(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onUnregisterFinished(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Z)V
.end method
