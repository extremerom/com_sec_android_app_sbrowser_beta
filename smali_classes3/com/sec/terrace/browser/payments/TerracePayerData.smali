.class public Lcom/sec/terrace/browser/payments/TerracePayerData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final payerEmail:Ljava/lang/String;

.field public final payerName:Ljava/lang/String;

.field public final payerPhone:Ljava/lang/String;

.field public final selectedShippingOptionId:Ljava/lang/String;

.field public final shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerPhone:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerEmail:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    iput-object v0, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->selectedShippingOptionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerPhone:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->payerEmail:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->shippingAddress:Lcom/sec/terrace/services/payments/mojom/TerracePaymentAddress;

    iput-object p5, p0, Lcom/sec/terrace/browser/payments/TerracePayerData;->selectedShippingOptionId:Ljava/lang/String;

    return-void
.end method
