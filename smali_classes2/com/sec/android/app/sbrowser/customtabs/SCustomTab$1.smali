.class Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomHandler$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluateJavaScript(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/tab/Tab;->evaluateJavaScript(Ljava/lang/String;Lcom/sec/terrace/TerraceJavaScriptCallback;)V

    :cond_0
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab$1;->this$0:Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;->b(Lcom/sec/android/app/sbrowser/customtabs/SCustomTab;)Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
