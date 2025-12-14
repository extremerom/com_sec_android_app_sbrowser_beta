.class Lorg/chromium/content/browser/AppWebMessagePortJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/AppWebMessagePort$Natives;


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

.method public static get()Lorg/chromium/content/browser/AppWebMessagePort$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/AppWebMessagePortJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/AppWebMessagePortJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public closeAndDestroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MJ$gNv5y(J)V

    return-void
.end method

.method public createPair()[Lorg/chromium/content/browser/AppWebMessagePort;
    .locals 0

    invoke-static {}, LJ/N;->M9LtFyNP()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/chromium/content/browser/AppWebMessagePort;

    return-object p0
.end method

.method public postMessage(JLorg/chromium/content_public/browser/MessagePayload;[Lorg/chromium/content_public/browser/MessagePort;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MnazrhT9(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setShouldReceiveMessages(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MIRFl3$f(JZ)V

    return-void
.end method
