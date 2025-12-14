.class Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpStore;


# instance fields
.field private mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/autofill/otp/SamsungPassOtpStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;->lambda$fillOtpMatchingLogins$0(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    return-void
.end method

.method private static synthetic lambda$fillOtpMatchingLogins$0(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V
    .locals 0

    invoke-interface {p0, p1}, Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;->call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    return-void
.end method


# virtual methods
.method public fillOtpMatchingLogins(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V
    .locals 1
    .param p1    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;->mSamsungPassStore:Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;

    new-instance v0, Lcom/sec/android/app/sbrowser/autofill/otp/b;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/autofill/otp/b;-><init>(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V

    invoke-interface {p0, p1, v0}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreDelegate;->fillOtpMatchingLogins(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpFormDigest;Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V

    return-void
.end method
