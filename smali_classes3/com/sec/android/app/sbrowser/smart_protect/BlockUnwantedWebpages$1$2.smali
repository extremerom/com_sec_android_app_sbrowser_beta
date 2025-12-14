.class Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$2;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1$2;->this$1:Lcom/sec/android/app/sbrowser/smart_protect/BlockUnwantedWebpages$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "201"

    const-string p1, "9940"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
