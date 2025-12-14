.class Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->addInfoBar(Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

.field final synthetic val$delegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->val$delegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->onCallback(Ljava/lang/Void;)V

    return-void
.end method

.method public onCallback(Ljava/lang/Void;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->val$delegate:Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->i(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;)Lcom/sec/android/app/sbrowser/infobars/InfoBar;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->h(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/InfoBar;)V

    return-void
.end method
