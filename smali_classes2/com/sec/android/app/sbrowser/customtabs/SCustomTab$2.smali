.class Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$2;
.super Lcom/sec/android/app/sbrowser/tab/Tab;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->initializeTerrace(Lcom/sec/terrace/Terrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;Lcom/sec/terrace/Terrace;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/tab/Tab;-><init>(Lcom/sec/terrace/Terrace;)V

    return-void
.end method


# virtual methods
.method public shouldExemptFromTrackingProtection()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportPullToRefresh()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->e(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Z

    move-result p0

    return p0
.end method
