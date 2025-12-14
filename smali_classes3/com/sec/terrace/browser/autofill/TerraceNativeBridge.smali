.class public Lcom/sec/terrace/browser/autofill/TerraceNativeBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# direct methods
.method private static createTerraceKeyStoreEncryptedData(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;->deserialize(Ljava/nio/ByteBuffer;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    move-result-object p0

    return-object p0
.end method

.method public static keyStoreDecrypt(Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;->keyStoreDecrypt(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static keyStoreEncrypt(Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;->keyStoreEncrypt(Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;

    move-result-object p0

    return-object p0
.end method

.method public static wbsDecrypt(Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridgeJni;->get()Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;

    move-result-object v0

    invoke-virtual {p0}, Lorg/chromium/mojo/bindings/Struct;->serialize()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;->wBSDecrypt(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
