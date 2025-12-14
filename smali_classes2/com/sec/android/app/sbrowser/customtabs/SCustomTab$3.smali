.class Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab/Tab$Delegate;


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
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extractTextMenu()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$3;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extract_text/LiveTextController;->extractTextMenu(Lcom/sec/terrace/Terrace;)V

    return-void
.end method
