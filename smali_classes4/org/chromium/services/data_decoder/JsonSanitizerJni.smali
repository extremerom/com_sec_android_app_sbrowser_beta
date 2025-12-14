.class Lorg/chromium/services/data_decoder/JsonSanitizerJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;


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

.method public static get()Lorg/chromium/services/data_decoder/JsonSanitizer$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/services/data_decoder/JsonSanitizerJni;

    invoke-direct {v0}, Lorg/chromium/services/data_decoder/JsonSanitizerJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onError(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MOkhqs8N(JLjava/lang/Object;)V

    return-void
.end method

.method public onSuccess(JLjava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MkUGEqr$(JLjava/lang/Object;)V

    return-void
.end method
