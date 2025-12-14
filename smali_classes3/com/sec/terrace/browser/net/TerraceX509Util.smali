.class public Lcom/sec/terrace/browser/net/TerraceX509Util;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker;
    }
.end annotation


# static fields
.field private static sFactory:Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$DelegateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-class v0, Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker;

    invoke-static {v0}, Lorg/chromium/net/X509Util;->setCertificateErrorCheckerType(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setDelegateFactory(Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$DelegateFactory;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/net/TerraceX509Util;->sFactory:Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$DelegateFactory;

    return-void
.end method
