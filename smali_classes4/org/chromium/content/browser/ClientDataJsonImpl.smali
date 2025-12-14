.class public Lorg/chromium/content/browser/ClientDataJsonImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ClientDataJsonImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method public static buildClientDataJson(ILjava/lang/String;[BZLorg/chromium/blink/mojom/PaymentOptions;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;
    .locals 8

    invoke-static {}, Lorg/chromium/content/browser/ClientDataJsonImplJni;->get()Lorg/chromium/content/browser/ClientDataJsonImpl$Natives;

    move-result-object v0

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :goto_0
    move-object v5, p4

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p4

    goto :goto_0

    :goto_1
    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lorg/chromium/content/browser/ClientDataJsonImpl$Natives;->buildClientDataJson(ILjava/lang/String;[BZLjava/nio/ByteBuffer;Ljava/lang/String;Lorg/chromium/url/Origin;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
