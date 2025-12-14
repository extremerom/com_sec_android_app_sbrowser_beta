.class public Lorg/chromium/components/payments/Address;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final EXTRA_ADDRESS_CITY:Ljava/lang/String; = "city"

.field public static final EXTRA_ADDRESS_COUNTRY:Ljava/lang/String; = "countryCode"

.field public static final EXTRA_ADDRESS_DEPENDENT_LOCALITY:Ljava/lang/String; = "dependentLocality"

.field public static final EXTRA_ADDRESS_LINES:Ljava/lang/String; = "addressLines"

.field public static final EXTRA_ADDRESS_ORGANIZATION:Ljava/lang/String; = "organization"

.field public static final EXTRA_ADDRESS_PHONE:Ljava/lang/String; = "phone"

.field public static final EXTRA_ADDRESS_POSTAL_CODE:Ljava/lang/String; = "postalCode"

.field public static final EXTRA_ADDRESS_RECIPIENT:Ljava/lang/String; = "recipient"

.field public static final EXTRA_ADDRESS_REGION:Ljava/lang/String; = "region"

.field public static final EXTRA_ADDRESS_SORTING_CODE:Ljava/lang/String; = "sortingCode"


# instance fields
.field public final addressLine:[Ljava/lang/String;

.field public final city:Ljava/lang/String;

.field public final country:Ljava/lang/String;

.field public final dependentLocality:Ljava/lang/String;

.field public final organization:Ljava/lang/String;

.field public final phone:Ljava/lang/String;

.field public final postalCode:Ljava/lang/String;

.field public final recipient:Ljava/lang/String;

.field public final region:Ljava/lang/String;

.field public final sortingCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->country:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/chromium/components/payments/Address;->addressLine:[Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->region:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->city:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->dependentLocality:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->postalCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->sortingCode:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->organization:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->recipient:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/payments/Address;->phone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/payments/Address;->country:Ljava/lang/String;

    iput-object p2, p0, Lorg/chromium/components/payments/Address;->addressLine:[Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/components/payments/Address;->region:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/components/payments/Address;->city:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/components/payments/Address;->dependentLocality:Ljava/lang/String;

    iput-object p6, p0, Lorg/chromium/components/payments/Address;->postalCode:Ljava/lang/String;

    iput-object p7, p0, Lorg/chromium/components/payments/Address;->sortingCode:Ljava/lang/String;

    iput-object p8, p0, Lorg/chromium/components/payments/Address;->organization:Ljava/lang/String;

    iput-object p9, p0, Lorg/chromium/components/payments/Address;->recipient:Ljava/lang/String;

    iput-object p10, p0, Lorg/chromium/components/payments/Address;->phone:Ljava/lang/String;

    return-void
.end method

.method public static createFromBundle(Landroid/os/Bundle;)Lorg/chromium/components/payments/Address;
    .locals 12

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v11, Lorg/chromium/components/payments/Address;

    const-string v0, "countryCode"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "addressLines"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "region"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "city"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "dependentLocality"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "postalCode"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "sortingCode"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "organization"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "recipient"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "phone"

    invoke-static {p0, v0}, Lorg/chromium/components/payments/Address;->getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lorg/chromium/components/payments/Address;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method private static getStringOrEmpty(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
