.class Lorg/chromium/components/webauthn/Fido2Api$Extensions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/webauthn/Fido2Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Extensions"
.end annotation


# instance fields
.field public didCreateDiscoverableCredential:Z

.field public hasCredProps:Z

.field public prf:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "[B>;"
        }
    .end annotation
.end field

.field public userVerificationMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/chromium/blink/mojom/UvmEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lorg/chromium/components/webauthn/Fido2Api$Extensions;-><init>()V

    return-void
.end method


# virtual methods
.method public getPrfResults()Lorg/chromium/blink/mojom/PrfValues;
    .locals 5

    iget-object v0, p0, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/chromium/blink/mojom/PrfValues;

    invoke-direct {v0}, Lorg/chromium/blink/mojom/PrfValues;-><init>()V

    iget-object v1, p0, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, [B

    array-length v2, v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    check-cast v1, [B

    iput-object v1, v0, Lorg/chromium/blink/mojom/PrfValues;->first:[B

    goto :goto_0

    :cond_1
    new-array v2, v3, [B

    iput-object v2, v0, Lorg/chromium/blink/mojom/PrfValues;->first:[B

    new-array v4, v3, [B

    iput-object v4, v0, Lorg/chromium/blink/mojom/PrfValues;->second:[B

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lorg/chromium/components/webauthn/Fido2Api$Extensions;->prf:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v1, v0, Lorg/chromium/blink/mojom/PrfValues;->second:[B

    invoke-static {p0, v3, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
