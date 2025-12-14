.class Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/crypto/TinCipherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CipherData"
.end annotation


# instance fields
.field public final iv:[B

.field public final key:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/security/Key;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->key:Ljava/security/Key;

    iput-object p2, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;->iv:[B

    return-void
.end method
