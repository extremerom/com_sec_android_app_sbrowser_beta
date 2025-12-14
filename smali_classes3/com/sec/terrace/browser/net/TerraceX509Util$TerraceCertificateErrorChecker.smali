.class public final Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/X509Util$CertificateErrorChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/net/TerraceX509Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TerraceCertificateErrorChecker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$DelegateFactory;,
        Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$Delegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$Delegate;


# virtual methods
.method public check(Ljava/security/cert/CertificateException;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker;->mDelegate:Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$Delegate;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/net/TerraceX509Util$TerraceCertificateErrorChecker$Delegate;->check(Ljava/security/cert/CertificateException;)I

    move-result p0

    return p0
.end method
