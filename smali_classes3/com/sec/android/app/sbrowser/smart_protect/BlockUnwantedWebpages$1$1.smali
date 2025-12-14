.class Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$1;->this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "201"

    const-string p2, "9941"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$1;->this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->b(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;)V

    return-void
.end method
