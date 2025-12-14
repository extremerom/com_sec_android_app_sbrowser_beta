.class interface abstract Lcom/sec/terrace/browser/autofill/TerraceNativeBridge$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/autofill/TerraceNativeBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract keyStoreDecrypt(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method

.method public abstract keyStoreEncrypt(Ljava/lang/String;)Lcom/sec/terrace/services/autofill/mojom/TerraceKeyStoreEncryptedData;
.end method

.method public abstract wBSDecrypt(Ljava/nio/ByteBuffer;)Ljava/lang/String;
.end method
