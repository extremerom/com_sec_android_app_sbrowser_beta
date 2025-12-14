.class Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/payments/standard/CardEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CardIssuerNetwork"
.end annotation


# instance fields
.field public final description:I

.field public final icon:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;->icon:I

    iput p2, p0, Lcom/sec/android/app/sbrowser/payments/standard/CardEditor$CardIssuerNetwork;->description:I

    return-void
.end method
