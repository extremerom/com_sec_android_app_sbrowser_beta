.class interface abstract Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public fillOtpMatchingLogins(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public getOtpForUser(I)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method
