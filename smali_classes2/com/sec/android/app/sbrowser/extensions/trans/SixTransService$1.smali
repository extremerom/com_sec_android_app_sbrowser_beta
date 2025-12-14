.class Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/translate/LangPackManager$OnSupportAllLanguageInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->updateLangInfo(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;->x(Lcom/sec/android/app/sbrowser/extensions/trans/SixTransService;Ljava/util/HashMap;)V

    return-void
.end method
