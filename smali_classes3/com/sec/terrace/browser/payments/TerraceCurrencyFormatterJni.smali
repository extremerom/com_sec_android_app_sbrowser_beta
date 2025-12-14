.class Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MhXLI7mc(JLjava/lang/Object;)V

    return-void
.end method

.method public format(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->ML7ajsss(JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getFormattedCurrencyCode(JLcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M8xXLgvG(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public initCurrencyFormatterAndroid(Lcom/sec/terrace/browser/payments/TerraceCurrencyFormatter;Ljava/lang/String;Ljava/lang/String;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYR$4_TB(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method
