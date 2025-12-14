.class Lorg/chromium/content/browser/sms/SmsProviderGmsJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/content/browser/sms/SmsProviderGms$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/sms/SmsProviderGmsJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MqHdTL15(J)V

    return-void
.end method

.method public onNotAvailable(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$UJTj5O(J)V

    return-void
.end method

.method public onReceive(JLjava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MDAxNisW(JLjava/lang/Object;I)V

    return-void
.end method

.method public onTimeout(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->Mz9c1Rem(J)V

    return-void
.end method
