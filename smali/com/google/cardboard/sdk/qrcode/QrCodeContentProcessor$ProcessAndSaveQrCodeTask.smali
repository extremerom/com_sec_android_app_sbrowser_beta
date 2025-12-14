.class public Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;
.super Lcom/google/cardboard/sdk/qrcode/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessAndSaveQrCodeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/cardboard/sdk/qrcode/AsyncTask<",
        "Lcom/google/android/gms/vision/barcode/Barcode;",
        "Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;


# direct methods
.method public constructor <init>(Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->this$0:Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public doInBackground(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;
    .locals 0

    new-instance p0, Lcom/google/cardboard/sdk/qrcode/UrlFactory;

    invoke-direct {p0}, Lcom/google/cardboard/sdk/qrcode/UrlFactory;-><init>()V

    invoke-static {p1, p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->c(Lcom/google/android/gms/vision/barcode/Barcode;Lcom/google/cardboard/sdk/qrcode/UrlFactory;)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic doInBackground(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/vision/barcode/Barcode;

    invoke-virtual {p0, p1}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->doInBackground(Lcom/google/android/gms/vision/barcode/Barcode;)Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;)V
    .locals 3

    iget v0, p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->statusCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->b()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/cardboard/sdk/R$string;->invalid_qr_code:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->context:Landroid/content/Context;

    sget v0, Lcom/google/cardboard/sdk/R$string;->invalid_qr_code:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->b()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/google/cardboard/sdk/R$string;->connection_error:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->context:Landroid/content/Context;

    sget v0, Lcom/google/cardboard/sdk/R$string;->connection_error:I

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;->params:[B

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils;->writeDeviceParams([BLandroid/content/Context;)Z

    move-result p1

    invoke-static {}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v2, "not "

    goto :goto_0

    :cond_2
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "write Cardboard parameters to storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->this$0:Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;

    invoke-static {p0}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;->a(Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor;)Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$Listener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$Listener;->onQrCodeSaved(Z)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;

    invoke-virtual {p0, p1}, Lcom/google/cardboard/sdk/qrcode/QrCodeContentProcessor$ProcessAndSaveQrCodeTask;->onPostExecute(Lcom/google/cardboard/sdk/qrcode/CardboardParamsUtils$UriToParamsStatus;)V

    return-void
.end method
