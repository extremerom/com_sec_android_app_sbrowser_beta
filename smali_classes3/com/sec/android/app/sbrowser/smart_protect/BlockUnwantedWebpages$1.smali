.class Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->showBlockUnwantedWebpagesDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;->this$0:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages;->mContext:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f140227

    invoke-virtual {v0, v1}, Lm/k;->e(I)V

    const v1, 0x7f14022a

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;)V

    const v2, 0x7f140052

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$2;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;)V

    const v2, 0x7f1402ad

    invoke-virtual {v0, v2, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    new-instance v1, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$3;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;)V

    iget-object p0, v0, Lm/k;->a:Lm/h;

    iput-object v1, p0, Lm/h;->o:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const-string p0, "201"

    const-string v0, "9952"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
