.class public Lorg/chromium/components/payments/PayerData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field public final payerEmail:Ljava/lang/String;

.field public final payerName:Ljava/lang/String;

.field public final payerPhone:Ljava/lang/String;

.field public final selectedShippingOptionId:Ljava/lang/String;

.field public final shippingAddress:Lorg/chromium/components/payments/Address;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/chromium/components/payments/PayerData;->payerName:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/PayerData;->payerPhone:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/PayerData;->payerEmail:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/PayerData;->shippingAddress:Lorg/chromium/components/payments/Address;

    iput-object v0, p0, Lorg/chromium/components/payments/PayerData;->selectedShippingOptionId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/chromium/components/payments/Address;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/PayerData;->payerName:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/payments/PayerData;->payerPhone:Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/payments/PayerData;->payerEmail:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/payments/PayerData;->shippingAddress:Lorg/chromium/components/payments/Address;

    iput-object p5, p0, Lorg/chromium/components/payments/PayerData;->selectedShippingOptionId:Ljava/lang/String;

    return-void
.end method
