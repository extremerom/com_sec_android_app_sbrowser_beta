.class public Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mCurrency:Ljava/lang/String;

.field private final mIsPending:Z

.field private final mLabel:Ljava/lang/String;

.field private final mPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mLabel:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mCurrency:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mPrice:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mIsPending:Z

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mCurrency:Ljava/lang/String;

    return-object p0
.end method

.method public getIsPending()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mIsPending:Z

    return p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mLabel:Ljava/lang/String;

    return-object p0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/payments/standard/ui/LineItem;->mPrice:Ljava/lang/String;

    return-object p0
.end method
