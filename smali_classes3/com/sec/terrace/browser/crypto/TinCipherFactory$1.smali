.class Lcom/sec/terrace/browser/crypto/TinCipherFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/crypto/TinCipherFactory;->getCipherData(Z)Lcom/sec/terrace/browser/crypto/TinCipherFactory$CipherData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$1;->this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/crypto/TinCipherFactory$1;->this$0:Lcom/sec/terrace/browser/crypto/TinCipherFactory;

    invoke-static {p0}, Lcom/sec/terrace/browser/crypto/TinCipherFactory;->b(Lcom/sec/terrace/browser/crypto/TinCipherFactory;)V

    return-void
.end method
