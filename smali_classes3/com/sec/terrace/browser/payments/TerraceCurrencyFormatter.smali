.class public Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;
    }
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mCurrencyFormatterAndroid:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;->get()Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;->initCurrencyFormatterAndroid(Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;->get()Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;->destroy(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    :cond_0
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;->get()Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;->format(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormattedCurrencyCode()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;->get()Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;->mCurrencyFormatterAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;->getFormattedCurrencyCode(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
