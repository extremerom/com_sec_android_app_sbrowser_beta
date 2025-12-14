.class public final synthetic Lba/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lba/c;->a:I

    iput-object p1, p0, Lba/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lba/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lba/c;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lba/c;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;

    iget-object v0, p0, Lba/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lba/c;->c:Ljava/lang/String;

    iget-object p0, p0, Lba/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/sdk/deepsky/textextraction/result/OcrData$BlockInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/speech/tts/Voice;

    iget-object v0, p0, Lba/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lba/c;->c:Ljava/lang/String;

    iget-object p0, p0, Lba/c;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/utils/TtsVoiceUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/speech/tts/Voice;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
