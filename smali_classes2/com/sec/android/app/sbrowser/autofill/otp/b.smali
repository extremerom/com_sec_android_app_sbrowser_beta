.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/otp/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;


# instance fields
.field public final synthetic a:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/otp/b;->a:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;

    return-void
.end method


# virtual methods
.method public final call([Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/otp/b;->a:Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/otp/OtpStoreImpl;->a(Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpStore$FillOtpMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/otp/mojom/TerraceOtpForm;)V

    return-void
.end method
