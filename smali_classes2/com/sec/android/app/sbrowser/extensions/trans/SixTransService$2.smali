.class Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnDownloadPopupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->downloadLangPack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

.field final synthetic val$nativeCallback:J


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->val$nativeCallback:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->val$nativeCallback:J

    const-string p0, "Fail-DownloadLangPack"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->downloadLangPackResult(JLjava/lang/String;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$2;->val$nativeCallback:J

    const-string p0, "Success"

    invoke-virtual {v0, v1, v2, p0}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->downloadLangPackResult(JLjava/lang/String;)V

    return-void
.end method
